package com.one.kcar.dao.store;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.one.kcar.dto.buy.CarDTO;
import com.one.kcar.dto.store.StoreDTO;
import com.one.kcar.dto.store.StoreOptionDTO;

@Mapper
public interface IStoreDAO {

	List<StoreDTO> storelistAll();

	StoreDTO storelist(String name);

	List<CarDTO> storeCarall(String st_name);

	List<CarDTO> storeCarsort(@Param("alignment")String alignment,String st_name);

	List<CarDTO> storeOption(@Param("s_option")StoreOptionDTO s_option, @Param("alignment")String alignment, String st_name);

}
