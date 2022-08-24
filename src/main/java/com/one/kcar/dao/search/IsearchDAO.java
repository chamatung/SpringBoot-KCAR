package com.one.kcar.dao.search;

import java.util.List;
import java.util.Set;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.one.kcar.dto.buy.BuyDTO;
import com.one.kcar.dto.buy.CarDTO;
import com.one.kcar.dto.rent.kcarCarRentDTO;

@Mapper
public interface IsearchDAO {

	Set<String> getmodel();

	Set<String> getbrand();

	List<BuyDTO> search(@Param("brand")String brand,@Param("model") String model,@Param("list") List<String> list);

	Set<String> likemodel(String val);

	Set<String> likerent(String val);

	List<kcarCarRentDTO> rentsearch(@Param("brand")String brand, @Param("model")String model, List<String> list);

	Set<String> getrentmodel();

	Set<String> getrentbrand();
}
