package com.one.kcar.service.store;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import org.json.simple.JSONObject;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.one.kcar.dto.store.StoreDTO;

public class StoreKakaoService {

	public String getAcces(String code) {
		String accessToken = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";
		try {
			String sendMessage = "grant_type=authorization_code" + 
						"&client_id=35d849b33448f51f3c3f73a432418b30"
					+ "&redirect_uri=http://localhost/kakaoTalk" + "&code=" + code +"&scope=talk_message";

			URL url = new URL(reqURL); // POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST"); // POST 요청을 위해 기본값 false에서 setDoOutput을 true로 변경
			conn.setDoOutput(true); // POST 메소드를 이용해서 데이터를 전달하기 위한 설정

			// 기본 outputStream을 통해 문자열로 처리할 수 있는 OutPutStreamWriter 변환 후 처리속도를 빠르게 하기위한
			// BufferedWriter로 변환해서 사용한다.
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			bw.write(sendMessage);
			bw.flush();

			int responseCode = conn.getResponseCode(); // 결과 코드가 200이라면 성공
			System.out.println("액세스 코드 받는responseCode : " + responseCode);

			// 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "", result = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}

//			System.out.println("result.split : " + result.split(","));
//			System.out.println("response body : " + result);
			// Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
			JsonElement element = JsonParser.parseString(result);
			accessToken = element.getAsJsonObject().get("access_token").getAsString();

			br.close();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return accessToken;
	}
	

	public void messageInfo(String accessToken, StoreDTO store) {
		HashMap<String, String> userInfo = new HashMap<String, String>();
		String reqURL = "https://kapi.kakao.com/v2/api/talk/memo/default/send";
		String sendMessage="template_object={\r\n"
				+ "            \"object_type\": \"location\",\r\n"
				+ "            \"content\": {\r\n"
				+ "                \"title\": \""+store.getSt_name()+"\",\r\n"
				+ "                \"description\": \""+store.getSt_name()+"위치입니다.\",\r\n"
				+ "                \"image_url\": \""+store.getSt_photo()+"\",\r\n"
				+ "                \"image_width\": 800,\r\n"
				+ "                \"image_height\": 800,\r\n"
				+ "                \"link\": {\r\n"
				+ "                    \"web_url\": \"/db/detail?st_name="+store.getSt_name()+"\",\r\n"
				+ "                    \"mobile_web_url\": \"https://developers.kakao.com/mobile\",\r\n"
				+ "                    \"android_execution_params\": \"platform=android\",\r\n"
				+ "                    \"ios_execution_params\": \"platform=ios\"\r\n"
				+ "                }\r\n"
				+ "            },\r\n"
				+ "            \"buttons\": [\r\n"
				+ "                {\r\n"
				+ "                    \"title\": \"웹으로 보기\",\r\n"
				+ "                    \"link\": {\r\n"
				+ "                        \"web_url\": \"/db/detail?st_name="+store.getSt_name()+"\",\r\n"
				+ "                        \"mobile_web_url\": \"https://developers.kakao.com/mobile\"\r\n"
				+ "                    }\r\n"
				+ "                }\r\n"
				+ "            ],\r\n"
				+ "            \"address\": \""+store.getSt_addr()+"\",\r\n"
				+ "            \"address_title\": \"카카오 판교오피스\"\r\n"
				+ "        }";
		System.out.println(accessToken);
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();

		// 요청에 필요한 Header에 포함될 내용
			conn.setRequestProperty("Authorization", "Bearer " + accessToken);
			conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			
	System.out.println(sendMessage);
	
			conn.setRequestMethod("POST"); // POST 요청을 위해 기본값 false에서 setDoOutput을 true로 변경
			conn.setDoOutput(true); // POST 메소드를 이용해서 데이터를 전달하기 위한 설정
			
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			bw.write(sendMessage);
			bw.flush();
			
			int responseCode = conn.getResponseCode();

			System.out.println("어 200떴네response code : " + responseCode);

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);
			/*
			 * { "id":2346534020, "connected_at":"2022-07-18T10:58:52Z",
			 * "properties":{"nickname":"김연수"}, "kakao_account":{
			 * "profile_nickname_needs_agreement":false, "profile":{"nickname":"김연수"},
			 * "has_email":true, "email_needs_agreement":false, "is_email_valid":true,
			 * "is_email_verified":true, "email":"kyes0222@gmail.com" } }
			 */
			/*
			 * JsonElement element = JsonParser.parseString(result); // JsonObject
			 * properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			 * // String nickname =
			 * properties.getAsJsonObject().get("nickname").getAsString();
			 * 
			 * JsonObject kakao_account =
			 * element.getAsJsonObject().get("kakao_account").getAsJsonObject(); JsonObject
			 * profile = kakao_account.getAsJsonObject().get("profile").getAsJsonObject();
			 * String nickname = profile.getAsJsonObject().get("nickname").getAsString();
			 * String email = kakao_account.getAsJsonObject().get("email").getAsString();
			 * 
			 * userInfo.put("nickname", nickname); userInfo.put("email", email);
			 */
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

}
