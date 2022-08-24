package com.one.kcar.service.buy;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.one.kcar.dao.buy.IInsertDAO;
import com.one.kcar.dto.buy.QuestionDTO;
import com.one.kcar.dto.insert.InsertCarDTO;
import com.one.kcar.dto.member.MemberDTO;
import com.one.kcar.dto.member.Role;

@Service
public class insertService {
	@Autowired
	IInsertDAO insertDao;
	
	public String insertCarBrand() throws FileNotFoundException, IOException {
		ClassPathResource resource = new ClassPathResource("brand.json");
		FileReader reader = new FileReader(resource.getFile());

		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);

		JsonArray arr = obj.getAsJsonArray("carBrand");

		for (int i = 0; i < arr.size(); i++) {
			JsonObject tmp = (JsonObject) arr.get(i);
			String cb_brand = tmp.get("cb_brand").getAsString();
			String cb_koreaLan = tmp.get("cb_koreaLan").getAsString();
			String cb_EnglishLan = tmp.get("cb_EnglishLan").getAsString();
			String cb_photo = tmp.get("cb_photo").getAsString();
			String cb_domestic = tmp.get("cb_domestic").getAsString();

			int result = insertDao.insertCarBrand(cb_brand, cb_koreaLan, cb_EnglishLan, cb_photo, cb_domestic);
			if (result != 1) {
				return "brand테이블 insert 실패";
			}
		}
		return "brand테이블 insert 성공";
	}

	public String insertCarBrandModel() throws FileNotFoundException, IOException {
		ClassPathResource resource = new ClassPathResource("carBrandModel.json");
		FileReader reader = new FileReader(resource.getFile());

		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);

		JsonArray arr = obj.getAsJsonArray("carBrandModel");

		for (int i = 0; i < arr.size(); i++) {
			JsonObject tmp = (JsonObject) arr.get(i);
			
			String cb_brand = tmp.get("cb_brand").getAsString();
			String cb_m_model = tmp.get("cb_m_model").getAsString();
			
			int result = insertDao.insertCarBrandModel(cb_brand, cb_m_model);
			if (result != 1) {
				return "model테이블 insert 실패";
			}
		}
		return "model테이블 insert 성공";
	}

	public String insertCar() throws FileNotFoundException, IOException {
		ClassPathResource resource = new ClassPathResource("car.json");
		FileReader reader = new FileReader(resource.getFile());

		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);

		JsonArray arr = obj.getAsJsonArray("car");

		for (int i = 0; i < arr.size(); i++) {
			JsonObject tmp = (JsonObject) arr.get(i);
			InsertCarDTO inserCar = new InsertCarDTO();
			
			inserCar.setC_num(tmp.get("c_num").getAsString());
			inserCar.setC_model(tmp.get("c_model").getAsString());
			inserCar.setCb_brand(tmp.get("cb_brand").getAsString());
			inserCar.setCb_m_model(tmp.get("cb_m_model").getAsString());
			inserCar.setC_year(tmp.get("c_year").getAsString());
			inserCar.setC_distance(tmp.get("c_distance").getAsString());
			inserCar.setC_price(tmp.get("c_price").getAsString());
			inserCar.setC_color(tmp.get("c_color").getAsString());
			inserCar.setC_fuel(tmp.get("c_fuel").getAsString());
			inserCar.setC_change(tmp.get("c_change").getAsString());
			inserCar.setC_acident(tmp.get("c_acident").getAsString());
			inserCar.setC_seat(tmp.get("c_seat").getAsString());
			inserCar.setC_rent(tmp.get("c_rent").getAsString());
			inserCar.setC_photo(tmp.get("c_photo").getAsString());
			inserCar.setSt_name(tmp.get("st_name").getAsString());
			inserCar.setM_id(tmp.get("m_id").getAsString());
			inserCar.setM_email(tmp.get("m_email").getAsString());
			inserCar.setC_saleStatus(Integer.parseInt(tmp.get("c_saleStatus").getAsString()));
			
			int result = insertDao.insertCar(inserCar);
			if (result != 1) {
				return "brand테이블 insert 실패";
			}
		}
		return "brand테이블 insert 성공";
	}

	public String insertCarTag() throws FileNotFoundException, IOException {
		ClassPathResource resource = new ClassPathResource("carTag.json");
		FileReader reader = new FileReader(resource.getFile());

		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);

		JsonArray arr = obj.getAsJsonArray("carTag");

		for (int i = 0; i < arr.size(); i++) {
			JsonObject tmp = (JsonObject) arr.get(i);
			
			String c_num = tmp.get("c_num").getAsString();
			//String c_t_certified = tmp.get("c_t_certified").getAsString();
			String c_t_distance = tmp.get("c_t_distance").getAsString();
			String c_t_newCar = tmp.get("c_t_newCar").getAsString();
			String c_t_fourWheel = tmp.get("c_t_fourWheel").getAsString();
			//String c_t_maintenance = tmp.get("c_t_maintenance").getAsString();
			String c_t_oneOwner = tmp.get("c_t_oneOwner").getAsString();
			//String c_t_specialOption = tmp.get("c_t_specialOption").getAsString();
			//String c_t_rent = tmp.get("c_t_rent").getAsString();
			
			int result = insertDao.insertCarTag(c_num, c_t_distance,c_t_newCar, c_t_fourWheel, c_t_oneOwner);
			if (result != 1) {
				return "model테이블 insert 실패";
			}
		}
		return "model테이블 insert 성공";
	}

	public String insertContract() throws FileNotFoundException, IOException {
		ClassPathResource resource = new ClassPathResource("contract.json");
		FileReader reader = new FileReader(resource.getFile());

		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);

		JsonArray arr = obj.getAsJsonArray("contract");

		for (int i = 0; i < arr.size(); i++) {
			JsonObject tmp = (JsonObject) arr.get(i);
			
			String c_num = tmp.get("c_num").getAsString();
			//String c_c_b_email = tmp.get("c_c_b_email").getAsString();
			String c_c_s_email = tmp.get("c_c_s_email").getAsString();
			
			int result = insertDao.insertContract(c_num,c_c_s_email);
			if (result != 1) {
				return "model테이블 insert 실패";
			}
		}
		return "model테이블 insert 성공";
	}

	public String insertReview() throws FileNotFoundException, IOException {
		ClassPathResource resource = new ClassPathResource("buyReview.json");
		FileReader reader = new FileReader(resource.getFile());

		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);

		JsonArray arr = obj.getAsJsonArray("buyReview");

		for (int i = 0; i < arr.size(); i++) {
			JsonObject tmp = (JsonObject) arr.get(i);
			
			String c_c_index = tmp.get("c_c_index").getAsString();
			String m_r_title = tmp.get("m_r_title").getAsString();
			String m_r_review = tmp.get("m_r_review").getAsString();
			String m_r_registDate = tmp.get("m_r_registDate").getAsString();
			String m_r_image = tmp.get("m_r_image").getAsString();
			
			int result = insertDao.insertReview(c_c_index, m_r_title,m_r_review,m_r_registDate,m_r_image);
			if (result != 1) {
				return "model테이블 insert 실패";
			}
		}
		return "model테이블 insert 성공";
	}

	public String insertCarPhoto() throws FileNotFoundException, IOException {
		ClassPathResource resource = new ClassPathResource("carPhoto.json");
		FileReader reader = new FileReader(resource.getFile());

		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);

		JsonArray arr = obj.getAsJsonArray("carPhoto");

		for (int i = 0; i < arr.size(); i++) {
			JsonObject tmp = (JsonObject) arr.get(i);
			
			String c_num = tmp.get("c_num").getAsString();
			String c_p_photoNum = tmp.get("c_p_photoNum").getAsString();
			String c_p_photo = tmp.get("c_p_photo").getAsString();
			
			int result = insertDao.insertCarPhoto(c_num, c_p_photoNum,c_p_photo);
			if (result != 1) {
				return "model테이블 insert 실패";
			}
		}
		return "model테이블 insert 성공";
	}

	public String insertQuestion() throws FileNotFoundException, IOException {
		ClassPathResource resource = new ClassPathResource("carQuestion.json");
		FileReader reader = new FileReader(resource.getFile());

		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);

		JsonArray arr = obj.getAsJsonArray("carQuestion");

		for (int i = 0; i < arr.size(); i++) {
			JsonObject tmp = (JsonObject) arr.get(i);
			QuestionDTO quest = new QuestionDTO();
			quest.setQ_classification(tmp.get("q_classification").getAsString());
			quest.setQ_content(tmp.get("q_content").getAsString());
			quest.setQ_title(tmp.get("q_title").getAsString());
			
			
			int result = insertDao.insertQuestion(quest);
			if (result != 1) {
				return "model테이블 insert 실패";
			}
		}
		return "model테이블 insert 성공";
	}

	public String insertMember() throws FileNotFoundException, IOException {
		ClassPathResource resource = new ClassPathResource("member.json");
		FileReader reader = new FileReader(resource.getFile());

		Gson gson = new Gson();
		JsonObject obj = gson.fromJson(reader, JsonObject.class);

		JsonArray arr = obj.getAsJsonArray("member");

		for (int i = 0; i < arr.size(); i++) {
			JsonObject tmp = (JsonObject) arr.get(i);
			MemberDTO member = new MemberDTO();
			member.setM_id(Integer.parseInt(tmp.get("m_id").getAsString()));
			member.setM_email(tmp.get("m_email").getAsString());
			member.setM_pw(tmp.get("m_pw").getAsString());
			member.setM_name(tmp.get("m_name").getAsString());
			member.setM_zipcode(tmp.get("m_zipcode").getAsString());
			member.setM_addr1(tmp.get("m_addr1").getAsString());
			member.setM_addr2(tmp.get("m_addr2").getAsString());
			member.setM_tel(tmp.get("m_tel").getAsString());
			member.setM_role(Role.USER);
			
			
			int result = insertDao.insertMember(member);
			if (result != 1) {
				return "model테이블 insert 실패";
			}
		}
		return "model테이블 insert 성공";
	}

}
