package com.one.kcar.controller;

import java.util.List;

import javax.servlet.http.HttpSession;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.one.kcar.dto.admin.CarDTO;
import com.one.kcar.dto.sell.SellDTO;
import com.one.kcar.service.admin.adminService;
import com.one.kcar.service.member.MemberService;
import com.one.kcar.service.sell.myPageService;

@Controller
public class HomeController{
	@Autowired MemberService service;
	@Autowired adminService adminservice;
	@Autowired myPageService mypageservice;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//헤더
	@GetMapping("header")
	public String header() {
		return "header";
	}
	//푸터
	@GetMapping("footer")
	public String footer() {
		return "footer";
	}
	// 홈페이지
	@RequestMapping("home")
	public String index() {
		return "home";
	}
	// 로그인
	@GetMapping("logins")
	public String login() {
		return "member/logins";
	}
	// 회원 가입
	@GetMapping("register")
	public String register() {
		return "member/register";
	}
	// 회원 가입(이메일 인증)
	@GetMapping("register_email")
	public String register_email() {
		return "member/register_email";
	}
	// 회원 가입 (정보입력)
	@GetMapping("register2")
	public String register2() {
		return "member/register2";
	}
	// 마이 페이지
	@GetMapping("mypage")
	public String mypage(@RequestBody(required = false)String m_email,
			HttpSession session,Model model,CarDTO car) {
		m_email = (String)session.getAttribute("id");
		List<CarDTO> list = adminservice.buy_list(m_email);
		model.addAttribute("list",list);
		model.addAttribute("sell",mypageservice.mycarSell(m_email));
		model.addAttribute("rent",adminservice.rent_list(m_email));
		int count = service.check(m_email);
		model.addAttribute("check",count);
		int buy_count = service.buy_check(m_email);
		model.addAttribute("buy_check",buy_count);
		int rent_count = service.rent_check(m_email);
		model.addAttribute("rent_check",rent_count);
		return "member/mypage";
		
	
	}
	@GetMapping("warranty_service")
	public String warranty_service() {
		return "warranty_service/warranty_service";
	}
	// 직영점
	@GetMapping("city")
	public String city() {
		return "city/city";
	}
	@GetMapping("test2")
	public String test() {
		return "test2";
	}
	
	// 비밀번호 찾기
	@GetMapping("find_pw_email")
	public String find_pw_email() {
		return "member/find_pw_email";
	}
	@GetMapping("pw_find")
	public String pw_find() {
		return "member/pw_find";
	}
	@GetMapping("222_style")
	public String dsa() {
		return "222_style";
	}



}