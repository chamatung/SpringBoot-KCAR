package com.one.kcar.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.one.kcar.member.dao.IMemberDAO;
import com.one.kcar.member.dto.MemberDTO;

@Service
public class MemberService {
	@Autowired IMemberDAO memberDao;
	@Autowired HttpSession session;
	
	public String isExistId(String email) {
		if (email == null)
			return "아이디를 입력 후 다시 시도하세요.";
		int count = memberDao.isExistId(email);
		if (count == 1)
			return "중복 아이디 입니다.";

		return "사용 가능한 아이디입니다.";
	}
	
	public String register(MemberDTO member) {
		if (member.getM_email() == null || member.getM_email().isEmpty())
			return "아이디를 입력하세요.";

		if (member.getM_pw() == null || member.getM_pw().isEmpty())
			return "비밀번호를 입력하세요.";
		
		if (member.getM_name() == null || member.getM_name().isEmpty())
			return "이름을 입력하세요.";
		
		if (member.getM_tel() == null || member.getM_tel().isEmpty())
			return "전화번호를 입력하세요";
		
		if (memberDao.isExistId(member.getM_email()) > 0)
			return "중복 아이디 입니다.";
		
			
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePw = encoder.encode(member.getM_pw());
		member.setM_pw(securePw);
		
		if (!("".equals(member.getM_zipcode())))
			memberDao.insertMember(member);
		
		session.invalidate();// 인증번호 및 인증 상태 제거
		return "가입 완료";
	}

	public String login(MemberDTO member) {
		if(member.getM_email() == null || member.getM_email().isEmpty())
			return "아이디를 입력하세요.";
		
		if(member.getM_pw() == null || member.getM_pw().isEmpty())
			return "비밀번호를 입력하세요.";
		
		MemberDTO check = memberDao.login(member.getM_email());
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

		
		if(check != null && encoder.matches(member.getM_pw(), check.getM_pw())) {
			session.setAttribute("id", check.getM_email());
			session.setAttribute("name", check.getM_name());
			session.setAttribute("tel", check.getM_tel());
			return "로그인 성공";
		}else {
			return "로그인 실패";
		}
		
	}

	public String update(MemberDTO member, String pwOk) {
		String id = ((String)session.getAttribute("id"));
		if(id == null || id.isEmpty())
			return "로그인 후 수정 가능";
		if(member.getM_pw() == null || member.getM_pw().isEmpty())
			return "필수 정보를 입력하세요.";
		if(member.getM_pw().equals(pwOk) == false)
			return "두 비밀번호가 일치하지 않습니다.";
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String encryptPw = encoder.encode(member.getM_pw());
//		System.out.println(encryptPw);
		member.setM_pw(encryptPw);
		member.setM_email(id);
	
		memberDao.update(member);
		
		
		return "수정 완료";
	}

	public String delete(String m_pw) {
		String id = (String)session.getAttribute("id");
		if(m_pw == null || m_pw.isEmpty())
			return "필수 정보 입니다.";
		MemberDTO member = memberDao.login(id);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		if(encoder.matches(m_pw, member.getM_pw()) == false) {
			return "비밀번호 다름";
		}else {
			memberDao.delete(member);
			return "삭제 완료";
		}

}
}
