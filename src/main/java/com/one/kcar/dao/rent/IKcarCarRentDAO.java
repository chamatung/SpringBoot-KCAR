package com.one.kcar.dao.rent;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.one.kcar.dto.rent.kcarCarRentDTO;
import com.one.kcar.dto.rent.kcarCarRentInfoDTO;
import com.one.kcar.dto.rent.kcarCarRentOptionDTO;
import com.one.kcar.dto.rent.kcarCarRentPhotoDTO;

@Mapper
public interface IKcarCarRentDAO {
	
	void insertKcarCarRent(kcarCarRentDTO kcarCarRent);
	
	void insertKcarCarRentOption(kcarCarRentOptionDTO kcarCarRentOption);
	
	void insertKcarCarRentPhoto(kcarCarRentPhotoDTO kcarCarRentPhoto);
	
	void insertKcarCarRentInfo(kcarCarRentInfoDTO kcarCarRentInfo);
	
	//AJAX부분
	ArrayList<kcarCarRentDTO> kcarCarRentList();
	
	int insert(kcarCarRentDTO carRentdto);
	
	ArrayList<kcarCarRentDTO> choose(HashMap<String, String> map);

}