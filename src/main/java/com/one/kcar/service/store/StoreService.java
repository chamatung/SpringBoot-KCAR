package com.one.kcar.service.store;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.one.kcar.dao.store.IStoreDAO;
import com.one.kcar.dto.buy.CarDTO;
import com.one.kcar.dto.store.StoreDTO;
import com.one.kcar.dto.store.StoreOptionDTO;

@Service
public class StoreService {

	@Autowired
	IStoreDAO dao;

	public List<StoreDTO> storelistAll() {

		return dao.storelistAll();
	}

	public StoreDTO storelist(String name) {
		// TODO Auto-generated method stub
		return dao.storelist(name);
	}

	public List<CarDTO> storeCarAll(String st_name) {
		// TODO Auto-generated method stub
		return dao.storeCarall(st_name);
	}


	public StoreOptionDTO setting(HashMap<String, String> map, ArrayList<String> option) {
		StoreOptionDTO s_option= new StoreOptionDTO();
		s_option.setMax_price(Integer.parseInt(map.get("maxprice")));
		s_option.setMax_year(map.get("maxyer"));
		s_option.setMin_price(Integer.parseInt(map.get("minprice")));
		s_option.setMin_year(map.get("minyear"));
		s_option.setRange(Integer.parseInt(map.get("ran")));
		s_option.setSearchOption(option);
		
		return s_option;
	}

	public String storeSerarchview(StoreOptionDTO s_option, String alignment, String st_name) {
		String result="";
		List<CarDTO> list = dao.storeOption(s_option,alignment,st_name);
		for (CarDTO i : list) {
			result += "<div class='carListBox' style='cursor: pointer;'>";
			result += "<div class='carListImg' style='cursor: pointer;'>";
			result += "<div> <img src='"+i.getC_photo()+"' alt='챠량이미지'";
			result += "onerror='this" + ".src='/images/search/bg_no_Img_lg.png''";
			result += "loading='lazy'>";
			result += "</div> <ul class='listViewBtn'>";
			result += "<li><button type='button'";
			result += "class='el-button el-button--default icon icoFav'";
			result += "id='mkt_brandAddWish'><span><span class='_hidden'>찜하기</span></span> </button></li> </ul> </div>";
			result += "<ul class='listViewLabel'></ul> <div class='detailInfo'> <div class='carName'>";
			result += "<h3>"+i.getCb_brand()+"&nbsp;"+i.getCb_m_model()+"&nbsp;"+i.getC_fuel()+"</h3></div>";
			result += "<div class='carListFlex'> <div class='carExpIn'> <p class='carExp'>"+i.getC_price()+"만원</p> </div> <p class='detailCarCon'>";
			result += "<span class='block'>"+i.getC_year()+"</span> <span>"+i.getC_distance();
			result += "km</span> <span>"+i.getC_fuel()+"</span> <span>"+i.getSt_name()+"</span> </p> </div> <ul class='infoTooltip'>";
			result += "</ul></div></div>";
		}
		return result;
	}

}
