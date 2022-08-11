package com.one.kcar.dao.buy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.ui.Model;

import com.one.kcar.dto.buy.CarDTO;
import com.one.kcar.dto.buy.QuestionDTO;
import com.one.kcar.dto.buy.BrandDTO;

@Mapper
public interface IBrandDAO {
	
	int insertCarBrand(@Param("cb_brand") String cb_brand, String cb_koreaLan, String cb_EnglishLan, String cb_photo, String cb_domestic);

	int insertCarBrandModel(String cb_brand, String cb_m_model);

	int insertCar(@Param("c_num")String c_num, @Param("c_model")String c_model, @Param("cb_brand")String cb_brand, @Param("cb_m_model")String cb_m_model, @Param("c_year")String c_year, @Param("c_distance")String c_distance,
			@Param("c_price")String c_price, @Param("c_color")String c_color, @Param("c_fuel")String c_fuel, @Param("c_change")String c_change, @Param("c_acident")String c_acident, @Param("c_seat")String c_seat,
			@Param("c_rent")String c_rent,@Param("c_photo") String c_photo, @Param("st_name")String st_name);

	int insertCarTag(@Param("c_num") String c_num, @Param("c_t_distance")String c_t_distance, @Param("c_t_newCar")String c_t_newCar, @Param("c_t_fourWheel")String c_t_fourWheel,@Param("c_t_oneOwner")String c_t_oneOwner );

	int insertContract(@Param("c_num")String c_num, @Param("c_c_b_email")String c_c_b_email, @Param("c_c_s_email")String c_c_s_email);
	
	ArrayList<BrandDTO> brandList(String brand, String brandModel);
	
	ArrayList<CarDTO> brandCarList(String brand);//해외 특정브랜드 차량 정보 리스트

	ArrayList<CarDTO> brandModelList(String brand);//해외 특정브랜드 차량 모델정보

	//ArrayList<CarDTO> brandModelAllList(); //해외 전체브랜드 차량모델 정보 리스트

	ArrayList<Map<String,String>> brandCarModelList(String brand);

	ArrayList<CarDTO> brandCarAllList(@Param("start")int start,@Param("end") int end,@Param("brand") String brand,@Param("brandModel") String brandModel,@Param("alignment") String alignment);

	String brandCarAllCnt(@Param("brand")String brand, @Param("brandModel")String brandModel);

	ArrayList<QuestionDTO> questionList();

	int insertReview(@Param("c_c_index")String c_c_index,@Param("m_r_title") String m_r_title,@Param("m_r_review") String m_r_review,@Param("m_r_registDate") String m_r_registDate,@Param("m_r_image") String m_r_image);

	
}