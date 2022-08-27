package com.one.kcar.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.one.kcar.dto.buy.BuyDTO;
import com.one.kcar.dto.buy.CarDTO;
import com.one.kcar.dto.rent.kcarCarRentDTO;
import com.one.kcar.service.search.searchService;

@Controller
public class searchController {
	@Autowired
	searchService service;
@Autowired HttpSession session;
	@GetMapping("search/IntgSearchList")
	public String Search(String searchWord, Model model) {

		Set<String> modellist = service.getmodel();
		Set<String> brandlist = service.getbrand();
		ArrayList<String> optionlist = new ArrayList();

		optionlist.add("선루프");
		optionlist.add("하이패스");
		optionlist.add("후방센서");
		optionlist.add("후방카메라");
		optionlist.add("네비게이션");
		optionlist.add("핸들열선");
		optionlist.add("에어백");
		optionlist.add("스마트키");
		optionlist.add("블랙박스");
		String brandsearch = "";
		String modelsearch = "";
		ArrayList<String> optionsearch = new ArrayList();

		for (String i : brandlist) {
			if (searchWord.contains(i)) {
				brandsearch += i;
				break;
			}
		}
		for (String i : modellist) {
			if (searchWord.contains(i)) {
				modelsearch += i;
				break;
			}
		}
		for (String i : optionlist) {
			if (searchWord.contains(i)) {
				optionsearch.add(i);
			}
		}
		if(brandsearch.equals("") && modelsearch.equals("") && optionsearch.isEmpty()){
			model.addAttribute("msg","검색결과가 없습니다. 다시 확인해주세요");
			return "search";
		}
		List<BuyDTO> buy = service.search(brandsearch, modelsearch, optionsearch);
		List<kcarCarRentDTO> rent = service.rentsearch(brandsearch, modelsearch, optionsearch);
		model.addAttribute("buy", buy);
		session.setAttribute("morebuy", buy);
		model.addAttribute("rent",rent);
		model.addAttribute("keyword",searchWord);
		return "search";

	}

	@ResponseBody
	@PostMapping(value = "/search/keyword", produces = "text/html; charset=UTF-8")
	public String keyword(@RequestBody(required = false) String val, Model model) {
		String data = service.likemodel(val);
		if (!data.equals(""))
			return data;
		else
			return "fail";
	}

}
