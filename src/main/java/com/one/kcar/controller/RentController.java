package com.one.kcar.controller;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.one.kcar.dto.member.MemberDTO;
import com.one.kcar.dto.rent.kcarCarRentDTO;
import com.one.kcar.dto.rent.kcarCarRentOptionDTO;
import com.one.kcar.dto.rent.kcarCarRentPhotoDTO;
import com.one.kcar.service.rent.IRentService;
import com.one.kcar.service.rent.rentCarService;
import com.one.kcar.service.rent.smsService;

import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
public class RentController {
		
		//신차렌트
		@GetMapping(value = "rentNewCar")
		public String rentNewCar() {
			return "rent/rentNewCar";
		}
		
		//기사포함렌트
		@GetMapping(value = "rentDriver")
		public String rentDriver() {
			return "rent/rentDriver";
		}
		
		//렌트지점
		@GetMapping(value = "rentShop")
		public String rentShop() {
			return "rent/rentShop";
		}
		
		
		@Autowired private IRentService rentService;
		@Autowired private rentCarService carRentService;
//		@Mapper private IRentService rentService;

		//렌트일반정비소
		@RequestMapping(value = "rentNormalRepair")
		public String rnrList(Model model, @RequestParam(required=false, defaultValue = "1") String select, String search) {
			rentService.rnrList(select, search);
			return "rent/rentNormalRepair";
		}
		
		//렌트사고정비소
		@RequestMapping(value = "rentAccidentRepair")
		public String rarList(Model model, @RequestParam(required=false, defaultValue = "1") String select1, String search1) {
			rentService.rarList(select1, search1);
			return "rent/rentAccidentRepair";
		}
		
		//중고차렌트
		@RequestMapping(value = "rentUsed")
		public String rentUsed(Model model,	@RequestParam(value = "currentPage", required=false, defaultValue = "1")
				int currentPage, String select2, String search2) {
			carRentService.kcarCarRentList(currentPage, select2, search2);
			return "rent/rentUsed";
		}
		
		//중고차렌트 상세페이지
		@GetMapping(value = "rentUsedInfo")
		public String rentUsedInfo(Model model2) {
//			carRentService.crPhotoList(model2);
			return "rent/rentUsedInfo";
		}
		
		@GetMapping(value="rentUsedInfoProc")
		public String ruiProc(HttpServletRequest request, String crNumber, Model model,HttpSession session) {
			crNumber = request.getParameter("crNumber");
			session.setAttribute("crNumber", crNumber);
			String m_email = (String) session.getAttribute("id");
			session.setAttribute("email", m_email);
//			System.out.println(crNumber);
			if(crNumber == null || crNumber.isEmpty())
				return "rent/rentUsed";
			if(m_email == null || m_email.isEmpty()) {
//				System.out.println("로그인후 사용");
				return "member/logins";
			}else{
				kcarCarRentDTO kcar = carRentService.rentUsedInfo(crNumber);
				model.addAttribute("rentUsedInfo",kcar);
				ArrayList<kcarCarRentPhotoDTO> crPhotoList = carRentService.crPhotoList(crNumber);
				model.addAttribute("crPhotoList", crPhotoList);
				kcarCarRentOptionDTO option = carRentService.rentOptionInfo(crNumber);
				model.addAttribute("rentOptionInfo", option);
				MemberDTO member = carRentService.memberInfo(m_email);
				model.addAttribute("member", member);
				return "rent/rentUsedInfo";
			}
		}
		
		//상세페이지 이미지슬라이딩 리스트
//		@RequestMapping(value = "rentUsedInfo")
//		public String rentUsedInfoPhoto(Model model) {
//			carRentService.crPhotoList(model);
//			return "rent/rentUsedInfo";
//		}
		
		//JSON파일 DTO로 전송
		@ResponseBody
		@GetMapping(value = "rentUsedInsert", produces = "text/html; charset=UTF-8")
		public String rentUsedInsert() throws FileNotFoundException, IOException {
			int result = carRentService.insert();
			if(result == 0)
				return "DB 입력 실패";
			return "파일 -> DB로 이전 완료";
		}
		// coolSMS 테스트 화면
		
		
		@GetMapping(value = "sms")
		public String mySms(HttpServletRequest request, kcarCarRentDTO mailUpdate,String crNumber, Model model,HttpSession session) {
			crNumber = (String) session.getAttribute("crNumber");
			String m_email = (String) session.getAttribute("id");
			
			mailUpdate = carRentService.updateInfo(m_email, crNumber, mailUpdate);
			return "rent/sms";
		}
		
		@Autowired private smsService phoneService;
		// coolSMS 구현 로직 연결  
		
		@ResponseBody
		@PostMapping(value = "sms/sendSMS",produces = "text/html; charset=utf-8" )
		public String sendSMS(@RequestBody(required = false) HashMap<String , String> data) throws CoolsmsException {  	
//			System.out.println(data.get("to"));
//			System.out.println(data.get("name"));
			return phoneService.PhoneNumberCheck(data.get("to"), data.get("name"));
		}
		
		
//		@RequestMapping(value = "rentUsed")
//		public String kcarCarRentList(Model model, @RequestParam(required=false, defaultValue = "1") ) {
//			carRentService.kcarCarRentList();
//			ArrayList<kcarCarRentDTO> kcarCarRentList = carRentService.kcarCarRentList();
//			model.addAttribute("kcarCarRentList", kcarCarRentList);
//			return "rent/rentUsed";
//		}
}
