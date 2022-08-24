package com.one.kcar.service.buy;

import java.util.ArrayList;
import java.util.List;

import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.one.kcar.dao.buy.ImyCarbuyDAO;
import com.one.kcar.dto.buy.BuyDTO;
import com.one.kcar.dto.buy.BuyoptionDTO;

@Service
public class myCarbuyService {
	@Autowired
	ImyCarbuyDAO dao;

	public List<BuyDTO> allSelect() {
		return dao.allSelect();

	}

	@Autowired HttpSession session;
	public String brandModel(String brand) {
		Set<String> list = dao.brandModel(brand);
		String result = "";
		;
		for (String i : list) {

			result += "<li><label id='_002,060' class='el-checkbox'><span ";
			result += "class='el-checkbox__input'><span ";
			result += "class='el-checkbox__inner'></span><input ";
			result += "type='checkbox' aria-hidden='false'";
			result += "class='el-checkbox__original' value='모델:" + i + "'></span><span ";
			result += "class='el-checkbox__label'>" + i + "<!----></span></label> <span ";
			result += "class='num'></span> <!----></li>";
		}
		return result;
	}

	public String selectCar(BuyoptionDTO buyoption, String sort, int current) {

		
		List<BuyDTO> list = pageservice(buyoption,sort,current);
		String result = "";
		if (list.isEmpty()) {
			result += "해당 결과가 없습니다.";
		} else {
			for (BuyDTO i : list) {
				result += "<div class='carListBox'> <div class='carListImg'> <span class='car360Img'><img src='/images/common/ico-360.svg' alt='360'></span>";
				result += "<a href='/bc/search' aria-current='page' class='nuxt-link-exact-active nuxt-link-active' id='mkt_clickCar'>";
				result += "<img src='" + i.getC_photo() + "'";
				result += "alt='챠량이미지' onerror=\"this.src='/images/search/bg_no_Img_lg.png'\" loading='lazy'></a> </div>";
				result += "<ul class='listViewLabel'></ul>	<div class='detailInfo'> <div class='carName'> <p class='carTit'> <a href='/bc/search' aria-current='page'";
				result += "class='nuxt-link-exact-active nuxt-link-active'";
				result += "id='mkt_clickCarNm'>" + i.getCb_brand() + i.getCb_m_model() + "</a></p> </div>";
				result += "<div class='carListFlex'> <div class='carExpIn'> <p class='carExp'>" + i.getC_price()
						+ "만원</p>";
				result += "</div> <p class='detailCarCon'> <span class='block'>" + i.getC_year() + "</span> <span>"
						+ i.getC_distance() + "km</span> <span>" + i.getC_fuel() + "</span>";
				result += "<span>" + i.getSt_name() + "</span></p></div></div> </div>";
			}
		}

		return result;
	}

	private List<BuyDTO> pageservice(BuyoptionDTO buyoption, String sort, int current) {
		int totalCount=dao.selectCarCount(buyoption);
		
		int block = 12;
		int totalPage = totalCount / block;
		if (totalCount % block != 0) {
			totalPage += 1;
		}
		int end = current * block;
		int begin = end - (block - 1);
		
		session.setAttribute("totalPage", totalPage);
		session.setAttribute("currentPage", current);
		
		return dao.selectCar(buyoption,sort,begin,end);
	}

	
	/* 해외 */
	public String selectCar2(BuyoptionDTO buyoption, String sort, int current2) {
		int totalCount = dao.selectCarCountFore(buyoption);
		int block = 12;
		int totalPage = totalCount / block;
		if (totalCount % block != 0) {
			totalPage += 1;
		}
		int end = current2 * block;
		int begin = end - (block - 1);
		
		List<BuyDTO> list = dao.selectCar2(buyoption, sort,begin,end);
		String result = "";
		
		session.setAttribute("totalPageFore", totalPage);
		session.setAttribute("currentPageFore", current2);
		if (list.isEmpty()) {
			result += "해당 결과가 없습니다.";
		} else {
			for (BuyDTO i : list) {
				result += "<div class='carListBox'> <div class='carListImg'> <span class='car360Img'><img src='/images/common/ico-360.svg' alt='360'></span>";
				result += "<a href='/bc/search' aria-current='page' class='nuxt-link-exact-active nuxt-link-active' id='mkt_clickCar'>";
				result += "<img src='" + i.getC_photo() + "'";
				result += "alt='챠량이미지' onerror=\"this.src='/images/search/bg_no_Img_lg.png'\" loading='lazy'></a> </div>";
				result += "<ul class='listViewLabel'></ul>	<div class='detailInfo'> <div class='carName'> <p class='carTit'> <a href='/bc/search' aria-current='page'";
				result += "class='nuxt-link-exact-active nuxt-link-active'";
				result += "id='mkt_clickCarNm'>" + i.getCb_brand() + " " + i.getCb_m_model() + "</a></p> </div>";
				result += "<div class='carListFlex'> <div class='carExpIn'> <p class='carExp'>" + i.getC_price()
						+ "만원</p>";
				result += "</div> <p class='detailCarCon'> <span class='block'>" + i.getC_year() + "</span> <span>"
						+ i.getC_distance() + "km</span> <span>" + i.getC_fuel() + "</span>";
				result += "<span>" + i.getSt_name() + "</span></p></div></div> </div>";
			}
		}

		return result;

	}

	public int selectCarCount(BuyoptionDTO buyoption) {
		// TODO Auto-generated method stub
		return dao.selectCarCount(buyoption);
	}

	public List<BuyDTO> searchAll() {
		// TODO Auto-generated method stub
		return dao.searchAll();
	}

	public List<BuyDTO> searchAllFore() {
		// TODO Auto-generated method stub
		return dao.searchAllFore();
	}

	public int searchAllCount() {
		// TODO Auto-generated method stub
		return dao.serachAllCount();
	}

	public int searchAllCountFore() {
		// TODO Auto-generated method stub
		return dao.serachAllCountFore();
	}

	public BuyoptionDTO optionservice(List<String> list) {
		ArrayList<String> car_model = new ArrayList<String>();
		ArrayList<String> car_brand1 = new ArrayList<String>();
		ArrayList<String> car_fuel = new ArrayList<String>();
		ArrayList<String> car_color = new ArrayList<String>();
		ArrayList<String> car_change = new ArrayList<String>();
		ArrayList<String> car_acident = new ArrayList<String>();
		ArrayList<String> car_type = new ArrayList<String>();
		ArrayList<String> car_store = new ArrayList<String>();
		ArrayList<String> car_option = new ArrayList<String>();
		
		ArrayList<Integer> car_seat = new ArrayList<Integer>();

		
		BuyoptionDTO buyoption = new BuyoptionDTO();
		
		for (String i : list) {
			if (i.contains("색상")) {
				i = i.replace("색상:", "");
				car_color.add(i);
			} else if (i.contains("최소거리")) {
				i = i.replace("최소거리:", "");
				buyoption.setMin_dis(Integer.parseInt(i));
			} else if (i.contains("최대거리")) {
				i = i.replace("최대거리:", "");
				buyoption.setMax_dis(Integer.parseInt(i));
			} else if (i.contains("최소연식")) {
				i = i.replace("최소연식:", "");
				buyoption.setMin_year(i);
			} else if (i.contains("최대연식")) {
				i = i.replace("최대연식:", "");
				buyoption.setMax_year(i);
			} else if (i.contains("연료")) {
				i = i.replace("연료:", "");
				car_fuel.add(i);
			} else if (i.contains("변속기")) {
				i = i.replace("변속기:", "");
				car_change.add(i);
			} else if (i.contains("사고유무")) {
				i = i.replace("사고유무:","");
				car_acident.add(i);
			} else if (i.contains("인승:")) {
				i = i.replace("인승:", "");
				car_seat.add(Integer.parseInt(i));
			} else if (i.contains("차종")) {
				i = i.replace("차종:", "");
				car_type.add(i);
			} else if (i.contains("모델")) {
				i = i.replace("모델:", "");
				car_model.add(i);
			} else if (i.contains("브랜드")){
				i = i.replace("브랜드:", "");
				car_brand1.add(i);
			}else if (i.contains("직영점")){
				i = i.replace("직영점:", "");
				car_store.add(i);
			}else if (i.contains("옵션")){
				i = i.replace("옵션:", "");
				car_option.add(i);
			}
		}
		buyoption.setCar_acident(car_acident);
		buyoption.setCar_brand1(car_brand1);
		buyoption.setCar_change(car_change);
		buyoption.setCar_color(car_color);
		buyoption.setCar_fuel(car_fuel);
		buyoption.setCar_model(car_model);
		buyoption.setCar_seat(car_seat);
		buyoption.setCar_type(car_type);
		buyoption.setCar_store(car_store);
		buyoption.setCar_option(car_option);
	
		return buyoption;
	}

}
