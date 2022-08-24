package com.one.kcar.service.rent;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.one.kcar.dao.rent.IKcarCarRentDAO;
import com.one.kcar.dto.member.MemberDTO;
import com.one.kcar.dto.rent.kcarCarRentDTO;
import com.one.kcar.dto.rent.kcarCarRentOptionDTO;
import com.one.kcar.dto.rent.kcarCarRentPhotoDTO;

@PropertySource("classpath:adminAccount.properties")
@Service
public class rentCarService{

	@Autowired private IKcarCarRentDAO kcarCarRentDao;
	@Autowired private HttpSession session;
	
	public String fromJson(ArrayList<kcarCarRentDTO> carRentList) {
		String data = "{\"kcarCarRent\" : [";
		for(kcarCarRentDTO tmp : carRentList) {
			data += "{ \"crNumber\" : \"" + tmp.getCrNumber() + "\",";
			data += "{ \"crPrice\" : \"" + tmp.getCrPrice() + "\",";
			data += "{ \"crMonth\" : \"" + tmp.getCrMonth() + "\",";
			data += "{ \"crFirstPrice\" : \"" + tmp.getCrFirstPrice() + "\",";
			data += "{ \"crCc\" : \"" + tmp.getCrCc() + "\",";
			data += "{ \"crYear\" : \"" + tmp.getCrYear() + "\",";
			data += "{ \"crColor\" : \"" + tmp.getCrColor() + "\",";
			data += "{ \"crDistance\" : \"" + tmp.getCrDistance() + "\",";
			data += "{ \"crMission\" : \"" + tmp.getCrMission() + "\",";
			data += "{ \"crFuel\" : \"" + tmp.getCrFuel() + "\",";
			data += "{ \"crNewPrice\" : \"" + tmp.getCrNewPrice() + "\",";
			data += "{ \"crGrade\" : \"" + tmp.getCrGrade() + "\",";
			data += "{ \"crSpecialPrice\" : \"" + tmp.getCrSpecialPrice() + "\",";
			data += "{ \"crBrand\" : \"" + tmp.getCrBrand() + "\",";
			data += "{ \"crpPhoto\" : \"" + tmp.getCrpPhoto() + "\",";
			data += "{ \"crName\" : \"" + tmp.getCrName() + "\",";
		}
		data = data.substring(0, data.length()-1);
		data += "]}";
		return data;
	}
	
	//중고차 렌트페이지 페이징처리
	public void kcarCarRentList(int currentPage, String select2, String search2) {
		int pageBlock = 6; // 한 화면에 보여줄 데이터 수
		int totalCount = kcarCarRentDao.rentCount(); // 총 데이터의 수 
		int end = currentPage * pageBlock; // 데이터의 끝 번호
		int begin = end+1 - pageBlock; // 데이터의 시작 번호
		
		ArrayList<kcarCarRentDTO> kcarCarRentList = kcarCarRentDao.kcarCarRentList(begin, end, select2, search2);
//		System.out.println(kcarCarRentList.get(0).getCrBrand());
//		model.addAttribute("kcarCarRentList",kcarCarRentList);
		session.setAttribute("kcarCarRentList",kcarCarRentList);
		String url = "rentUsed?currentPage=";
		session.setAttribute("page", PageService.getNavi(currentPage, pageBlock, totalCount, url));
	}
	
	//kcarCarRent.json파일 dto로 전송
	public int insert() throws FileNotFoundException, IOException {
		ClassPathResource resource = new ClassPathResource("kcarCarRent.json");
		FileReader reader = new FileReader(resource.getFile());
		
		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);
		JsonArray arr = obj.getAsJsonArray("kcarCarRent");
		ArrayList<Integer> results = new ArrayList<>();
		for(int i = 0; i < arr.size(); i++) {
			JsonObject tmp = (JsonObject) arr.get(i);
			
			kcarCarRentDTO dto = new kcarCarRentDTO();
			dto.setCrNumber(tmp.get("crNumber").getAsString());
			dto.setCrPrice(tmp.get("crPrice").getAsString());
			dto.setCrMonth(tmp.get("crMonth").getAsString());
			dto.setCrFirstPrice(tmp.get("crFirstPrice").getAsString());
			dto.setCrCc(tmp.get("crCc").getAsString());
			dto.setCrYear(tmp.get("crYear").getAsString());
			dto.setCrColor(tmp.get("crColor").getAsString());
			dto.setCrDistance(tmp.get("crDistance").getAsString());
			dto.setCrMission(tmp.get("crMission").getAsString());
			dto.setCrFuel(tmp.get("crFuel").getAsString());
			dto.setCrNewPrice(tmp.get("crNewPrice").getAsString());
			dto.setCrGrade(tmp.get("crGrade").getAsString());
			dto.setCrSpecialPrice(tmp.get("crSpecialPrice").getAsString());
			dto.setCrBrand(tmp.get("crBrand").getAsString());
			dto.setCrpPhoto(tmp.get("crpPhoto").getAsString());
			dto.setCrName(tmp.get("crName").getAsString());
			results.add(kcarCarRentDao.insert(dto));
		}
		for(Integer check : results) {
			if(check != 1)
				return 0;
		}
		return 1;
	}
	
	
	public kcarCarRentDTO rentUsedInfo(String crNumber) {
		kcarCarRentDTO kcar = kcarCarRentDao.rentUsedInfo(crNumber);
		return kcar;
	}
	
	public ArrayList<kcarCarRentPhotoDTO> crPhotoList(String crNumber) {
		ArrayList<kcarCarRentPhotoDTO> photoList = kcarCarRentDao.crPhotoList(crNumber);
//		System.out.println(photoList.get(0).getCrpPhoto());
		return photoList;
	}
	
	public kcarCarRentOptionDTO rentOptionInfo(String crNumber) {
		kcarCarRentOptionDTO kcarRentOption = kcarCarRentDao.rentOptionInfo(crNumber);
//		System.out.println(kcarRentOption.getCroNavigation());
		return kcarRentOption;
	}

	public MemberDTO memberInfo(String m_email) {
		MemberDTO members = kcarCarRentDao.member(m_email);
		return members;
	}
	

}













