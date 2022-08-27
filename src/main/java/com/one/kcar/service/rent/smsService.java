package com.one.kcar.service.rent;

import java.util.HashMap;

import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@PropertySource("classpath:adminAccount.properties")
@Service
public class smsService {
	
	public String PhoneNumberCheck(String to, String name) throws CoolsmsException {
			
		String api_key = "NCSLB4XFOC5NBTMH";
		String api_secret = "GTMXKUSXMGPATTLOAMFGUBT6JJMJFJ4O";
		Message coolsms = new Message(api_key, api_secret);
		
		/*
		Random rand  = new Random();
	    String numStr = "";
	    for(int i=0; i<4; i++) {
	       String ran = Integer.toString(rand.nextInt(10));
	       numStr+=ran;
	    }
	    */
	              
	    
//	    System.out.println(numStr);
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", to);    // 수신전화번호 (ajax로 view 화면에서 받아온 값으로 넘김)
	    params.put("name", name);
	    params.put("from", "01099548538");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
	    params.put("type", "sms"); 
	    params.put("text", name + "님 렌트신청이 완료되었습니다.");
	    
	    coolsms.send(params); // 메시지 전송
	    
	    return null;
	}
}
