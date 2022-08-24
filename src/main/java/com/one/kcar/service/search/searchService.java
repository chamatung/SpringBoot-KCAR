package com.one.kcar.service.search;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.one.kcar.dao.search.IsearchDAO;
import com.one.kcar.dto.buy.BuyDTO;
import com.one.kcar.dto.buy.CarDTO;
import com.one.kcar.dto.rent.kcarCarRentDTO;

@Service
public class searchService {

	@Autowired
	IsearchDAO dao;

	public Set<String> getmodel() {
		Set<String> list1=dao.getmodel();
		Set<String> list2=dao.getrentmodel();
		Set<String> list3=new HashSet<String>();
		list3.addAll(list1);
		list3.addAll(list2);
		return list3;
	}

	public Set<String> getbrand() {
		Set<String> list1=dao.getbrand();
		Set<String> list2=dao.getrentbrand();
		Set<String> list3=new HashSet<String>();
		list3.addAll(list1);
		list3.addAll(list2);
		return list3;
	}

	public List<BuyDTO> search(String brandsearch, String modelsearch, ArrayList<String> optionsearch) {
		List<String> list = optionsearch;
		return dao.search(brandsearch, modelsearch, list);
	}

	public String likemodel(String val) {
		String result = "";
		try {
			Set<String> buylist = dao.likemodel(val);
			Set<String> rentlist = dao.likerent(val);
			Set<String> list = new HashSet();
			list.addAll(buylist);
			list.addAll(rentlist);
			if (!list.isEmpty()) {
				for (String i : list) {
					result += "<ul><li class='el-select-dropdown__item' onclick='modelsel(this)'>" + i + "</li> </ul>";
				}
			}
		} catch (Exception e) {
			result="fail";
		}
		return result;
	}

	public List<kcarCarRentDTO> rentsearch(String brandsearch, String modelsearch, ArrayList<String> optionsearch) {
		List<String> list = optionsearch;
		
		return dao.rentsearch(brandsearch, modelsearch, list);
	}

}
