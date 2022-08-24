package com.one.kcar.service.member;

import java.lang.reflect.Member;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.one.kcar.dao.admin.IadminDAO;
import com.one.kcar.dao.member.IMemberDAO;
import com.one.kcar.dto.admin.CarDTO;
import com.one.kcar.dto.member.MemberDTO;
import com.one.kcar.dto.member.Role;
import com.one.kcar.dto.sell.SellDTO;

@Service
public class MemberService {
	@Autowired IMemberDAO memberDao;
	@Autowired IadminDAO adminDao;
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
		
		if (member.getM_zipcode() == null || member.getM_zipcode().isEmpty()
				|| member.getM_addr1()==null || member.getM_addr1().isEmpty())
			return "주소를 입력하세요";
		if (session.getAttribute("kakao_email") != null) {
			member.setM_oauth("k");
			String kakao_email = (String)session.getAttribute("kakao_email");
			member.setM_oauthEmail(kakao_email);
		}
		if(session.getAttribute("naver_email") != null) {
			member.setM_oauth("n");
			String naver_email = (String)session.getAttribute("naver_email");
			member.setM_oauthEmail(naver_email);
		}
			
		
		if (memberDao.isExistId(member.getM_email()) > 0)
			return "중복 아이디 입니다.";
		
			
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePw = encoder.encode(member.getM_pw());
		member.setM_pw(securePw);
		
		
		
		
		session.invalidate();// 인증번호 및 인증 상태 제거
		member.setM_role(Role.USER);
		System.out.println(member.getM_role());
		memberDao.insertMember(member);
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
			session.setAttribute("id_num", check.getM_id());
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

	public String pw_update(MemberDTO member, String m_pw,String pwOk) {
		String id = (String)session.getAttribute("email");
		member = memberDao.login(id);
		if(m_pw == null || m_pw.isEmpty())
			return "필수 정보 입니다";
		if(m_pw.equals(pwOk) == false)
			return "입력한 비밀번호가 다릅니다";
		
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String encryptPw = encoder.encode(m_pw);
		member.setM_pw(encryptPw);
		memberDao.pw_update(member);
//		System.out.println(m_pw);
//		System.out.println("dsadsa"+member.getM_pw());
		
		return "수정 완료";
	}


	public String kakao_check(MemberDTO member) {
		String kakao_email = (String)session.getAttribute("kakao_email");
		String kakao_name = (String)session.getAttribute("kakao_name");
		MemberDTO check = memberDao.check_kakao(kakao_email);
		
		if(check == null) {
			return"회원가입 후 사용 가능합니다";
		}
			if(kakao_email.equals(check.getM_oauthEmail()) && check.getM_oauthEmail() != null) {
				session.setAttribute("id", check.getM_email());
				session.setAttribute("name", check.getM_name());
				session.setAttribute("tel", check.getM_tel());
				session.setAttribute("id_num", check.getM_id());
				
				return "중복";
			}
			return "회원가입 후 사용 가능합니다";
		
	
		
	}


	public String naver_check(MemberDTO member) {
		String naver_email =(String)session.getAttribute("naver_email");
		MemberDTO check = memberDao.check_kakao(naver_email);
		
		if(check == null) {
			return "회원가입 후 사용 가능합니다.";
		}
			if(naver_email.equals(check.getM_oauthEmail())) {
				
				session.setAttribute("id", check.getM_email());
				session.setAttribute("name", check.getM_name());
				session.setAttribute("tel", check.getM_tel());
				session.setAttribute("id_num", check.getM_id());
				
				session.setAttribute("oauth", check.getM_oauth());
				return "중복";
			}
		return "회원가입 후 사용 가능합니다.";
	}


	public int check(String m_email) {
		m_email = (String)session.getAttribute("id");
		int count = adminDao.checked(m_email);
		
		return count;
	}
	
	public int buy_check(String m_email) {
		m_email = (String)session.getAttribute("id");
		int buy_count = adminDao.buy_check(m_email);
		return buy_count;
	}


	public int rent_check(String m_email) {
		m_email = (String)session.getAttribute("id");
		int rent_count = adminDao.rent_check(m_email);
		return rent_count;
	}



	


	
}
