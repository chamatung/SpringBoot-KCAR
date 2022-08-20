package com.one.kcar.dao.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.one.kcar.dto.admin.CarDTO;
import com.one.kcar.dto.admin.CarTagDTO;
import com.one.kcar.dto.admin.CaroptionDTO;
import com.one.kcar.dto.buy.CarInfoDTO;
import com.one.kcar.dto.buy.ContractDTO;
import com.one.kcar.dto.cs.CsDTO;
import com.one.kcar.dto.cs.EventDTO;
import com.one.kcar.dto.cs.NoticeDTO;
import com.one.kcar.dto.rent.kcarCarRentDTO;
import com.one.kcar.dto.rent.kcarCarRentOptionDTO;
import com.one.kcar.dto.sell.SellDTO;

@Mapper
public interface IadminDAO {

	List<SellDTO> sell_list();

	SellDTO check(String s_r_num);

	void insert_Car(CarDTO car);

	void insert_Carinfo(CarInfoDTO carinfo);

	void insert_Caroption(CaroptionDTO caroption);

	void insert_Cartag(CarTagDTO cartag);

	void insert_rentCar(kcarCarRentDTO rent);

	void insert_rentCarOption(kcarCarRentOptionDTO rentOption);

	void insert_Contract(ContractDTO contract);

	int checked(String email);

	List<CsDTO> csVoc_list();

	void insert_notice(NoticeDTO notice);

	void insert_event(EventDTO event);

	

	

}
				