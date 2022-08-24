package com.one.kcar.service.buy;

import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class CarInfoMailService {
	
	@Autowired JavaMailSender mailSender;
	
	public String sendEmail(String to, String subject, String content) {
		MimeMessage message = mailSender.createMimeMessage();
				
		try {
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,true,"UTF-8");
			
			messageHelper.setSubject(subject);
			messageHelper.setText(content,true);
			messageHelper.setTo(to);
			
			mailSender.send(message);
			
		} catch (MessagingException e) {
			e.printStackTrace();
			return "실패";
		}
		return "성공";		
	}
}
