package com.one.kcar.dao.buy;

import java.util.List;

import java.util.Set;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.one.kcar.dto.buy.BuyDTO;
import com.one.kcar.dto.buy.BuyoptionDTO;

@Mapper
public interface ImyCarbuyDAO {

	List<BuyDTO> allSelect();

	Set<String> brandModel(String brand);

	List<BuyDTO> selectCar(@Param("button")BuyoptionDTO buyoption, @Param("alignment") String sort,@Param("be") int begin,@Param("en") int end);

	List<BuyDTO> selectCar2(@Param("button")BuyoptionDTO buyoption, @Param("alignment") String sort,@Param("be") int begin,@Param("en") int end);

	int selectCarCount(@Param("button")BuyoptionDTO buyoption);

	List<BuyDTO> searchAll();

	List<BuyDTO> searchAllFore();

	int serachAllCount();

	int serachAllCountFore();

	int selectCarCountFore(@Param("button")BuyoptionDTO buyoption);

}
