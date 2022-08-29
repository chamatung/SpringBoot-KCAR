package com.one.kcar.service.buy;

import java.net.URI;
import java.nio.charset.StandardCharsets;

import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@Service
public class NaverService {

	public String naverAddress(String x, String y, String storeX, String storeY) {
		URI uri = UriComponentsBuilder.fromUriString("https://naveropenapi.apigw.ntruss.com")
				.path("/map-direction/v1/driving")
				.queryParam("start", storeY+","+storeX)
				.queryParam("goal", y+","+x)
				.queryParam("option", "trafast")
				.encode()
				.build().toUri();
		RestTemplate restTemplate = new RestTemplate();
		
		RequestEntity<Void> req = RequestEntity
				.get(uri)
				.header("X-NCP-APIGW-API-KEY-ID", "4rnpgkjox9")
				.header("X-NCP-APIGW-API-KEY","MwsfHHuAfhVZynzi4HcoMKNnf1BW7MJYZM4OZqNI")
				.build();
		ResponseEntity<String> result = restTemplate.exchange(req,String.class);
		
		String data = result.getBody();//네이버에서 길찾기 정보 가져오기
		System.out.println(data);
		String distance = null;
		if(data != null) {
			distance = distance(data);//길찾기 정보 중 거리값만 가져오기
		}
		return distance;
		
	}
	
	public String distance(String data) {
		Gson gson = new Gson();
		
		JsonObject obj = gson.fromJson(data, JsonObject.class);
		JsonObject route = obj.get("route").getAsJsonObject();
		JsonArray arr2;
		JsonObject tmp2;
		JsonObject summary = null;
		
		String distance = null;
		
		arr2 = route.getAsJsonArray("trafast");
		for(int i = 0 ;i<arr2.size();i++) {
			tmp2 = (JsonObject) arr2.get(i);
			summary = tmp2.get("summary").getAsJsonObject();
		}
		distance = summary.get("distance").getAsString();
		if(distance != null) {
			return distance;
		}
		
		return null;
	}
		
	
}
