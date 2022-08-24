package com.one.kcar.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
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
import com.one.kcar.dto.buy.BuyoptionDTO;
import com.one.kcar.service.buy.myCarbuyService;
import com.one.kcar.service.buy.myCarbuyServiceNavi;

@Controller
public class BuyController {

	@Autowired
	myCarbuyService service;
	@Autowired
	myCarbuyServiceNavi navi;
	@Autowired
	HttpSession session;

	@GetMapping(value = "carbuy")
	public String insertCar(HttpSession session, Model model) {

		if (session.getAttribute("templist") == null) {// 트래픽 보호를 위한 세션
			List<BuyDTO> alltag = service.allSelect();
			Set<String> type = new HashSet<String>();
			HashMap<String, String> korbrand = new HashMap<String, String>();
			HashMap<String, String> foreignbrand = new HashMap<String, String>();
			Set<String> car_model = new HashSet<String>();
			Set<String> store = new HashSet<String>();
			for (BuyDTO i : alltag) {
				type.add(i.getC_model());
				if (i.getCb_domestic().equals("해외")) {
					foreignbrand.put(i.getCb_brand(), i.getCb_photo());
				} else {
					korbrand.put(i.getCb_brand(), i.getCb_photo());
				}

				car_model.add(i.getCb_m_model());
				store.add(i.getSt_name());
			}
			model.addAttribute("type", type);
			model.addAttribute("korbrand", korbrand);
			model.addAttribute("foreignbrand", foreignbrand);
			model.addAttribute("car_model", car_model);
			model.addAttribute("store", store);
			session.setAttribute("templist", "data");
		}
		List<BuyDTO> list;
		int count=0;
		if (session.getAttribute("morebuy") == null) {
			list = service.searchAll();
			count = service.searchAllCount();
			String pageService = navi.totalPage(count);
			model.addAttribute("totalPage", pageService);
		} else {
			list = (List<BuyDTO>) session.getAttribute("morebuy");
			count=list.size();
			session.removeAttribute("morebuy");
		}
		List<BuyDTO> listFore = service.searchAllFore();
		model.addAttribute("totalCount", count);

		int forecount = service.searchAllCountFore();

		
		String pageServiceFore = navi.totalPageFore(forecount);

		model.addAttribute("list", list);
		model.addAttribute("listFore", listFore);
		
		model.addAttribute("totalPageFore", pageServiceFore);

		return "/buy/Mycarbuy";

	}

	@ResponseBody
	@PostMapping(value = "subMenuopen", produces = "application/json; charset=UTF-8")
	public HashMap<String, String> sumenuopen(@RequestBody(required = false) HashMap<String, String> map) {
		HashMap<String, String> remap = new HashMap<String, String>();
		remap.put("menuid", map.get("menuid"));
		remap.put("result", service.brandModel(map.get("brand")));

		return remap;

	}

	@ResponseBody
	@PostMapping(value = "ajaxSearch", produces = "application/json; charset=UTF-8")
	public HashMap<String, String> ajaxSearch(@RequestBody(required = false) HashMap<String, ArrayList<String>> map) {

		List<String> list = map.get("select");
		String sort = map.get("sort").get(0);

		int current = Integer.parseInt(map.get("currentPage").get(0));
		int current2 = Integer.parseInt(map.get("currentPageFore").get(0));

		BuyoptionDTO buyoption = service.optionservice(list);

		String result = service.selectCar(buyoption, sort, current);
		String result2 = service.selectCar2(buyoption, sort, current2);
		int count = service.selectCarCount(buyoption);
		String pagenavi = navi.getnavi();
		String pagenaviFore = navi.getnaviFore();

		String total = count + "";
		HashMap<String, String> response = new HashMap();
		response.put("all", result);
		response.put("fore", result2);
		response.put("total", total);
		response.put("navi", pagenavi);
		response.put("naviFore", pagenaviFore);

		return response;

	}
}
