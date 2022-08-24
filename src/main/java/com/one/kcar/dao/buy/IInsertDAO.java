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
import com.one.kcar.dto.member.MemberDTO;
import com.one.kcar.dto.buy.BrandDTO;

@Mapper
public interface IInsertDAO {
	
	int insertCarBrand(@Param("cb_brand") String cb_brand, String cb_koreaLan, String cb_EnglishLan, String cb_photo, String cb_domestic);

	int insertCarBrandModel(String cb_brand, String cb_m_model);

	int insertCarTag(@Param("c_num") String c_num, @Param("c_t_distance")String c_t_distance, @Param("c_t_newCar")String c_t_newCar, @Param("c_t_fourWheel")String c_t_fourWheel,@Param("c_t_oneOwner")String c_t_oneOwner );

	int insertContract(@Param("c_num")String c_num, @Param("c_c_s_email")String c_c_s_email);

	int insertReview(@Param("c_c_index")String c_c_index,@Param("m_r_title") String m_r_title,@Param("m_r_review") String m_r_review,@Param("m_r_registDate") String m_r_registDate,@Param("m_r_image") String m_r_image);

	int insertCarPhoto(@Param("c_num")String c_num,@Param("c_p_photoNum") String c_p_photoNum,@Param("c_p_photo") String c_p_photo);

	int insertCar(InsertCarDTO inserCar);

	int insertQuestion(QuestionDTO quest);

	int insertMember(MemberDTO member);

}
