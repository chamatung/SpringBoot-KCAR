package com.one.kcar.controller;






import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.one.kcar.dto.member.MemberDTO;
import com.one.kcar.service.member.KakaoService;
import com.one.kcar.service.member.MemberService;

@Controller
public class MemberController {
	@Autowired private MemberService memberService;
	

	@PostMapping(value = "isExistId", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String isExistId(@RequestBody(required = false) String email) {
		String msg = memberService.isExistId(email);
		return msg;
	}
	
	@PostMapping("register2")
	public String memberProc(MemberDTO member, Model model, RedirectAttributes ra) {
		String msg = memberService.register(member);
	
		if(msg.equals("가입 완료")) {
			model.addAttribute("msg", msg);
			return "home";
		}else {
			model.addAttribute("msg", msg);
			return "member/register2";
		}
		
	}
	
	@PostMapping("logins")
	public String logins(MemberDTO member,Model model) {
		String msg = memberService.login(member);
		if(msg.equals("로그인 성공")) {
			model.addAttribute("msg", null);
			return "home";
		}
		model.addAttribute("msg", msg);
		return "member/logins";
	}
	
//	@RequestMapping(value = "logout")
//	public String logout(Model model, HttpSession session) {
//		session.invalidate();
//		model.addAttribute("msg", "로그 아웃");
//		return "home";
//	}
	@RequestMapping("logout")
	public String logout(HttpSession session,Model model) {
		String accessToken = (String)session.getAttribute("accessToken");
		if(accessToken != null) {
			kakaoService.logout2();
			session.removeAttribute("accessToken");
		}
		
		session.invalidate();
		model.addAttribute("msg","로그아웃");
		
		
		return "home";
	}
		
	@Autowired private KakaoService kakaoService;
	@RequestMapping("kakaoLogin")
	public String kakaoLogin(String code, HttpSession session,MemberDTO member,Model model) {
//		System.out.println("code : " + code);
		String accessToken = kakaoService.getAccessToken(code);
		HashMap<String, String> map = kakaoService.getUserInfo(accessToken);
		System.out.println("닉네임 : " + map.get("nickname"));
		System.out.println("이메일 : " + map.get("email"));
		session.setAttribute("kakao_email", map.get("email"));
		session.setAttribute("kakao_name", map.get("nickname"));
		session.setAttribute("accessToken", accessToken);
		
		String msg = memberService.kakao_check(member);
		if(msg.equals("로그인 성공")) {
			model.addAttribute("msg",null);
			return "home";
		}
		model.addAttribute("msg",msg);
		return "member/register2";
	}
	@RequestMapping("naverCallback")
	public String naverCallback() {
		return "member/naverCallback";
		
	}
	@RequestMapping("naverLogin")
	public String naverLogin(HttpServletRequest request,HttpSession session,MemberDTO member, Model model) {
		String naver_nickname = request.getParameter("nickname");
		String naver_email = request.getParameter("email");
		System.out.println(naver_nickname);
		System.out.println(naver_email);
		session.setAttribute("naver_email", naver_email);
		
		String msg = memberService.naver_check(member);
		if(msg.equals("중복")) {
			model.addAttribute("msg",null);
			return "home";
		}
		model.addAttribute("msg",msg);
		return "member/register2";
	}
}