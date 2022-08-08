package com.one.kcar.repository;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;

import com.one.kcar.DTO.SellDTO;
import com.one.kcar.DTO.SellReviewDTO;

@Mapper
public interface ISellDAO {

	List<SellReviewDTO> reviewList(int begin, int end);

	int sellRequest(SellDTO sell);

	List<String> brandlist();

	List<String> modellist(String brand);

	SellReviewDTO reviewView(int num);

	int reviewListcount();
}
