package com.one.kcar.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.one.kcar.member.dto.MemberDTO;
import com.one.kcar.service.MemberService;

@Controller
public class MyPageController {
	@Autowired MemberService memberService;
	
	// 내차사기 주문관리
	@GetMapping("BuyOrderManage")
	public String BuyOrderManage() {
		return "mypage_service/BuyOrderManage";
	}
	// 내차팔기 신청관리
	@GetMapping("SellAplMgtList")
	public String SellAplMgtList() {
		return "mypage_service/SellAplMgtList";	
	}
	// 렌트 신청내역
	@GetMapping("RentAplList")
	public String RentAplList() {
		return "mypage_service/RentAplList";	
	}
	// 직영점 방문예약 신청 내역
	@GetMapping("DrcmgtStrVstResvLst")
	public String DrcmgtStrVstResvLst() {
		return "mypage_service/DrcmgtStrVstResvLst";	
	}
	// 찜한 차량
	@GetMapping("WishCarList")
	public String WishCarList() {
		return "mypage_service/WishCarList";	
	}
	// 최근 본 차량
	@GetMapping("LatelyViewedCar")
	public String LatelyViewedCar() {
		return "mypage_service/LatelyViewedCar";	
	}
	// 회원 정보
	@GetMapping("update")
	public String update() {
		return "mypage_service/update";	
	}
	// 회원 수정
	@PostMapping("update")
	public String update(HttpSession session, MemberDTO member, String pwOk,
			Model model) {
		String msg = memberService.update(member,pwOk);
		if(msg.equals("수정 완료")) {
			session.invalidate();
			model.addAttribute("msg",msg);
			return "home";
		}
		return "mypage_service/update";
		
	}
	@GetMapping("delete")
	public String delete() {
		return "mypage_service/delete";
	}
	// 회원 삭제
	@PostMapping("delete")
	public String delete(String m_pw,HttpSession session,Model model) {
		String msg = memberService.delete(m_pw);
		model.addAttribute("msg",msg);
		if(msg.equals("삭제 완료")) {
			session.invalidate();
			return "home";
			
		}else {
			
			return "mypage_service/delete";
		}
		
	}

}
