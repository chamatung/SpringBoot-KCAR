package com.one.kcar.dao.buy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.ui.Model;

import com.one.kcar.dto.buy.CarDTO;
import com.one.kcar.dto.buy.QuestionDTO;
import com.one.kcar.dto.insert.InsertCarDTO;
import com.one.kcar.dto.buy.BrandDTO;

@Mapper
public interface IBrandDAO {
	
	int insertCarBrand(@Param("cb_brand") String cb_brand, String cb_koreaLan, String cb_EnglishLan, String cb_photo, String cb_domestic);

	int insertCarBrandModel(String cb_brand, String cb_m_model);

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

	int insertCarPhoto(@Param("c_num")String c_num,@Param("c_p_photoNum") String c_p_photoNum,@Param("c_p_photo") String c_p_photo);

	int insertCar(InsertCarDTO inserCar);

	
}
