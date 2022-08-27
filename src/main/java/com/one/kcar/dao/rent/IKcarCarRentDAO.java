package com.one.kcar.dao.rent;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.ui.Model;

import com.one.kcar.dto.member.MemberDTO;
import com.one.kcar.dto.rent.kcarCarRentDTO;
import com.one.kcar.dto.rent.kcarCarRentInfoDTO;
import com.one.kcar.dto.rent.kcarCarRentOptionDTO;
import com.one.kcar.dto.rent.kcarCarRentPhotoDTO;

@Mapper
public interface IKcarCarRentDAO {
	
	void insertKcarCarRent(kcarCarRentDTO kcarCarRent);
	
//	void insertKcarCarRentOption(kcarCarRentOptionDTO kcarCarRentOption);
	
//	void insertKcarCarRentPhoto(kcarCarRentPhotoDTO kcarCarRentPhoto);
	
//	void insertKcarCarRentInfo(kcarCarRentInfoDTO kcarCarRentInfo);
	
	//AJAX부분
	int insert(kcarCarRentDTO carRentdto);

	ArrayList<kcarCarRentDTO> kcarCarRentList(@Param("b")int begin, @Param("e")int end, @Param("select2")String select2, @Param("search2")String search2);
	int rentCount();
	
//	ArrayList<kcarCarRentDTO> choose(HashMap<String, String> map);
	
	kcarCarRentDTO rentUsedInfo(String crNumber);

	ArrayList<kcarCarRentPhotoDTO> crPhotoList(String crNumber);
	
	kcarCarRentOptionDTO rentOptionInfo(String crNumber);

	MemberDTO member(String m_email);

	void updateMail(String m_email, String crNumber);

	

}
