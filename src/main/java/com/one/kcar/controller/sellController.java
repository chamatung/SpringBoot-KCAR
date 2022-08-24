package com.one.kcar.controller;

import java.util.HashMap;
import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.one.kcar.dto.sell.SellDTO;
import com.one.kcar.dto.sell.SellReviewDTO;
import com.one.kcar.service.sell.SellService;

@Controller
public class sellController {

	@Autowired
	SellService service;

	// 내차팔기 홈서비스
	@GetMapping("sc/HomeSvcMain")
	public String HomeSvcMain() {
		return "sc/HomeSvcMain";
	}

	// 법인차매각신청
	@GetMapping("sc/CorpCarDispslApl")
	public String CorpCarDispslApl() {
		return "sc/CorpCarDispslApl";
	}

	// 폐차신청(새창으로 띄워야함)
	@GetMapping("sc/ScrpcaApl")
	public String ScrpcaApl(HttpSession session) {
		List<String> list = service.brandlist();
		session.setAttribute("list", list);
		return "sc/ScrpcaApl";
	}

	
	// 내차팔기 고객후기
	@RequestMapping("sc/SellCustReview")
	public String SellCustReview(Model model,String currentPage,HttpSession session) {
		if(currentPage == null)
			currentPage="1";
		List<SellReviewDTO> list = service.reviewList(currentPage);
		model.addAttribute("list",list);
		int totalPage=(Integer)session.getAttribute("reviewtotalpage");

		model.addAttribute("totalPage",totalPage);
		model.addAttribute("currentPage",currentPage);
		return "sc/SellCustReview";
	}

	@ResponseBody
	@PostMapping(value = "detail", produces="application/json; charset=UTF-8")
	public HashMap<String, String> ReviewDetail(SellReviewDTO review,@RequestBody(required = false) String num) {
			int number = Integer.parseInt(num);
			review = service.reviewview(number);

			HashMap<String,String> map = new HashMap<String,String>();
			String modate= review.getS_r_model()+"<em class='emLine'></em>"+review.getS_r_date();
			map.put("title", review.getS_r_title());
			map.put("content", review.getS_r_content());
			map.put("image", review.getS_r_image());
			map.put("model", modate);
			map.put("date", review.getS_r_date());
			return map;
			 
	}
	
	// 내차팔기(간편신청) (새창으로 띄워야함)
	@GetMapping("/HomeSvcSimptRcp")
	public String HomeSvcSimptRcp() {
		return "sc/HomeSvcSimptRcp";
	}

	@PostMapping(value = "carSell", produces = "text/html; charset=UTF-8")
	public String carsell(SellDTO sell, Model model) {
		String result;
		result = service.sellrequest(sell);
		if (result.equals("등록성공")) {
			model.addAttribute("msg", result);
			return "sc/HomeSvcSimptRcp";
		} else {
			model.addAttribute("msg", result);
			return "sc/HomeSvcSimptRcp";
		}
	}
	
	@ResponseBody
	@PostMapping(value = "ScrpcaApl", produces = "text/html; charset=UTF-8")
	public String ScrpcaApl(@RequestBody(required = false)String brand,Model model) {
		List<String> list = service.modellist(brand);
		model.addAttribute("modellist",list);
		String result="<select class='form-select' aria-label='Model'>";
		result+="<option selected value='noselect'>모델</option>";
		 result+="<c:forEach var='model' items='${modellist}'> ";
		for(String l : list) {
		result+="<option value='"+l+"'>"+l+"</option>";}
	result+="</c:forEach>";
	result+="</select>";
	
		return result;
	}
}