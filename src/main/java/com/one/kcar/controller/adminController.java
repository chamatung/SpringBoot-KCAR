package com.one.kcar.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.one.kcar.dto.admin.CarDTO;
import com.one.kcar.dto.admin.CarTagDTO;
import com.one.kcar.dto.admin.CaroptionDTO;

import com.one.kcar.dto.buy.CarInfoDTO;
import com.one.kcar.dto.buy.ContractDTO;
import com.one.kcar.dto.cs.EventDTO;
import com.one.kcar.dto.cs.NoticeDTO;
import com.one.kcar.dto.member.MemberDTO;
import com.one.kcar.dto.rent.kcarCarRentDTO;
import com.one.kcar.dto.rent.kcarCarRentOptionDTO;
import com.one.kcar.dto.sell.SellDTO;
import com.one.kcar.service.admin.adminService;

@Controller
public class adminController {
	@Autowired adminService service;
	
	@GetMapping("car_update")
	String car_update(HttpServletRequest request,Model model) {
		String num = request.getParameter("s_r_num");
		SellDTO sell = service.list_info(num);
		model.addAttribute("list",sell);
	
		
		return "admin/car_update";
	}
	@Transactional
	@PostMapping("car_update")
	String car_update(HttpServletRequest request, ModelMap model,MemberDTO member,SellDTO sell,CarDTO car,
			CarInfoDTO carinfo,CarTagDTO cartag,CaroptionDTO caroption,String m_email,
			MultipartHttpServletRequest multi,ContractDTO contract) {
		String msg = service.register(request,member,sell,car,carinfo,cartag,caroption,m_email,multi,contract);
		if(msg.equals("g"))
			return"admin/main";
			
		
		return "admin/car_update";
	}
	@GetMapping("sell_list")
	String sell_list(Model model) {
		model.addAttribute("list",service.sell_list());
		return "admin/sell_list";
	}
	@GetMapping("BuyOrderManage")
	String buy_list(Model model,HttpSession session,CarDTO car) {
		String m_email = (String)session.getAttribute("id");
		List<CarDTO> list = service.buy_list(m_email);
		model.addAttribute("list",list);
		return "mypage_service/BuyOrderManage";
	}
	// ?????? ???????????? 
		@GetMapping("RentAplList") 
		public String RentAplList(Model model, HttpSession session, kcarCarRentDTO rent) { 
			String m_email = (String)session.getAttribute("id");
			model.addAttribute("list",service.rent_list(m_email));
			return "mypage_service/RentAplList";	 
		} 
	@GetMapping("main")
	String main() {
		return "admin/main";
	}
	@GetMapping("main_login")
	String main_login() {
		return "admin/main_login";
	}
	@PostMapping("main_login")
	String main_login(String admin_id,String admin_pw) {
		String msg = service.login(admin_id,admin_pw);
		if(msg.equals("??????")) {
			return "admin/main";
		}
		return "admin/main_login";
			
	}
	@GetMapping("rent_update")
	String rent_update() {
		return "admin/rent_update";
	}
	@PostMapping("rent_update")
	String rent_update(kcarCarRentDTO rent, kcarCarRentOptionDTO rentOption, MultipartHttpServletRequest multi) {
		String msg = service.rentUpdate(rent,rentOption,multi);
		if(msg.equals("a"))
			return "admin/main";
		return "admin/rent_update";
	}
	@GetMapping("csVoc_list")
	String csVoc_list(Model model) {
		model.addAttribute("list",service.csVoc_list());
		return "admin/csVoc_list";
	}
	@GetMapping("notice_Insert")
	String notice_Insert() {
		return "admin/notice_Insert";
	}
	@PostMapping("notice_Insert")
	String notice_Insert(NoticeDTO notice) {
		String msg = service.notice(notice);
		if(msg.equals("b"))
			return"admin/main";
		return "admin/notice_Insert";
	}
	@GetMapping("event_Insert")
	String event_Insert() {
		return "admin/event_Insert";
	}
	@PostMapping("event_Insert")
	String event_Insert(EventDTO event) {
		String msg = service.event(event);
		if(msg.equals("c"))
			return "admin/main";
		return "admin/event_Insert";
	}
	@GetMapping("admin_header")
	String header() {
		return "default/admin_header";
				
	}
	

}
