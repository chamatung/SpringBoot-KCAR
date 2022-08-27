package com.one.kcar.service.buy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.one.kcar.dao.buy.IBrandDAO;
import com.one.kcar.dto.buy.BrandDTO;
import com.one.kcar.dto.buy.CarDTO;
import com.one.kcar.dto.buy.CarTagDTO;
import com.one.kcar.dto.buy.QuestionDTO;

@Service
public class brandService {
	@Autowired
	IBrandDAO brandDao;
	private int totalCnt; 

	public String brandCarAllList(HashMap<String,String> map, Model model) {
		String data = map.get("data");
		String currentPage = map.get("currentPage");
		String brand = map.get("brand");
		String brandModel = map.get("model");
		String alignment = map.get("alignment");
		
		if(brand != null) {
			if(brand.equals("")) brand = null;
		}
		if(brandModel != null) {
			if(brandModel.equals("")) brandModel = null;
		}
		if(alignment != null) {
			if(alignment.equals("") || alignment.equals("기본정렬")) alignment = null;
		}
		//페이징 처리정보
		int currentPageNum;
		try {
			currentPageNum = Integer.parseInt(currentPage);
		} catch (Exception e) {
			return "페이징번호가 int값이 아니다.";
		}
		if(map.get("data") != null) {
			if(data.equals("prev")) currentPageNum -= 1;
			if(data.equals("next")) currentPageNum += 1;
		}
		//상단 브랜드리스트
		ArrayList<BrandDTO> brandList = brandDao.brandList(brand,brandModel);//해외브랜드리스트
	
		String stringCount = brandDao.brandCarAllCnt(brand,brandModel);
		
		if(stringCount == null) {
			stringCount = "0";
		}
		
		int totalCount = Integer.parseInt(stringCount);
		if(brand == null && brandModel == null) {
			this.totalCnt = totalCount;
		}
		int block = 15;
		int end = currentPageNum * block;
		int start = end - block + 1;
		int totalPage =  totalCount / block;
		if(totalCount % block != 0) totalPage += 1;
		
		//해외브랜드차량 전체리스트
		ArrayList<CarDTO> brandCarAllList = brandDao.brandCarAllList(start,end,brand,brandModel,alignment);//해외브랜드차량 전체리스트
		
		//carTag정보
		for (int i = 0; i < brandCarAllList.size(); i++) {
			CarTagDTO carTag = new CarTagDTO();
			carTag.setC_t_certified(brandCarAllList.get(i).getC_t_certified());
			carTag.setC_t_distance(brandCarAllList.get(i).getC_t_distance());
			carTag.setC_t_newCar(brandCarAllList.get(i).getC_t_newCar());
			carTag.setC_t_fourWheel(brandCarAllList.get(i).getC_t_fourWheel());
			carTag.setC_t_maintenance(brandCarAllList.get(i).getC_t_maintenance());
			carTag.setC_t_oneOwner(brandCarAllList.get(i).getC_t_oneOwner());
			carTag.setC_t_specialOption(brandCarAllList.get(i).getC_t_specialOption());
			carTag.setC_t_rent(brandCarAllList.get(i).getC_t_rent());
			brandCarAllList.get(i).setBrandCarInfoTag(carTag.getBrandCarInfoTag());
		}
		
		//AJAX비동기통신으로 //해외브랜드차량 전체리스트 HTML 코드로 변경
		if(data != null) {
			String ajaxBrandCarAllList = ajaxBrandCarAllList(brandCarAllList,currentPageNum,totalPage,totalCount,this.totalCnt,brand,brandModel,alignment);
			return ajaxBrandCarAllList;
		}
		//자주하는질문리스트
		ArrayList<QuestionDTO> questionList = brandDao.questionList();
		
		model.addAttribute("questionList", questionList);
		model.addAttribute("brandCarAllCount", this.totalCnt);
		model.addAttribute("filterCarAllCount", totalCount);
		model.addAttribute("brandList", brandList);
		model.addAttribute("brandCarAllList", brandCarAllList);
		//model.addAttribute("brandModelAllList", brandModelAllList);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("totalPage", totalPage);
		
		return null;
	}
	
	public String ajaxBrandCarAllList(ArrayList<CarDTO> brandCarAllList, int currentPageNum, int totalPage, int totalCount,int totalCnt,String brand, String brandModel,String alignment) {
		if(alignment == null) alignment = "기본정렬";
		String result = "				<input type=\"hidden\" id=\"brandCarAllCount\"value=\""+totalCnt+"\">\r\n"
				+ "						<input type=\"hidden\" id=\"filterCarAllCount\"value=\""+totalCount+"\">"	
				+ "						<input type=\"hidden\" id=\"brandHidden\" value=\""+brand+"\">\r\n"
				+ "						<input type=\"hidden\" id=\"modelHidden\" value=\""+brandModel+"\">"
				+ "						<input type=\"hidden\" id=\"alignmentHidden\" value=\""+alignment+"\">"
				+ "						<div class=\"listLine\">\r\n"
				+ "							<ul>\r\n"
				+ "								<li class=\"carTotal\">총 <span class=\"textRed\">"+ totalCount +"</span>대\r\n"
				+ "								</li>\r\n"
				+ "								<li class=\"listBtn\"><div class=\"searchTrigger box el-row\">\r\n"
				+ "										<button type=\"button\" class=\"button lineApply\"\r\n"
				+ "											style=\"white-space: normal;\" onclick=\"modalMenuOpen()\">제조사/모델선택</button>\r\n"
				+ "									</div>\r\n"
				+ "									<div class=\"el-select listSelect\">\r\n"
				+ "										<!---->\r\n"
				+ "										<div class=\"el-input el-input--suffix\">\r\n"
				+ "											<!---->\r\n"
				+ "											<input type=\"text\" readonly=\"readonly\" autocomplete=\"off\"\r\n"
				+ "												placeholder=\""+alignment+"\" class=\"el-input__inner\" id=\"alignment\" onclick=\"alignmentClick()\">\r\n"
				+ "											<!---->\r\n"
				+ "											<span class=\"el-input__suffix\"><span\r\n"
				+ "												class=\"el-input__suffix-inner\"><i\r\n"
				+ "													class=\"el-select__caret el-input__icon el-icon-arrow-up\"></i>\r\n"
				+ "													<!----> <!----> <!----> <!----> <!----></span> <!----></span>\r\n"
				+ "											<!---->\r\n"
				+ "											<!---->\r\n"
				+ "										</div>\r\n"
				+ "										<div class=\"el-select-dropdown el-popper\"\r\n"
				+ "											style=\"display: none; min-width: 160px;\">\r\n"
				+ "											<div class=\"el-scrollbar\" style=\"\">\r\n"
				+ "												<div class=\"el-select-dropdown__wrap el-scrollbar__wrap\"\r\n"
				+ "													style=\"margin-bottom: -19px; margin-right: -19px;\">\r\n"
				+ "													<ul class=\"el-scrollbar__view el-select-dropdown__list\" id=\"alignmentMethod\">\r\n"
				+ "														<!---->\r\n"
				+ "														<li class=\"el-select-dropdown__item\" value=\"기본정렬\" onclick=\"alignmentMethodCheck('기본정렬')\"><span>기본정렬</span></li>\r\n"
				+ "														<li class=\"el-select-dropdown__item\" value=\"최근연식순\" onclick=\"alignmentMethodCheck('최근연식순')\"><span>최근연식순</span></li>\r\n"
				+ "														<li class=\"el-select-dropdown__item\" value=\"낮은연식순\" onclick=\"alignmentMethodCheck('낮은연식순')\"><span>낮은연식순</span></li>\r\n"
				+ "														<li class=\"el-select-dropdown__item\" value=\"적은주행거리순\" onclick=\"alignmentMethodCheck('적은주행거리순')\"><span>적은주행거리순</span></li>\r\n"
				+ "														<li class=\"el-select-dropdown__item\" value=\"많은주행거리순\" onclick=\"alignmentMethodCheck('많은주행거리순')\"><span>많은주행거리순</span></li>\r\n"
				+ "														<li class=\"el-select-dropdown__item\" value=\"낮은가격순\" onclick=\"alignmentMethodCheck('낮은가격순')\"><span>낮은가격순</span></li>\r\n"
				+ "														<li class=\"el-select-dropdown__item\" value=\"높은가격순\" onclick=\"alignmentMethodCheck('높은가격순')\"><span>높은가격순</span></li>\r\n"
				+ "													</ul>\r\n"
				+ "												</div>\r\n"
				+ "												<div class=\"el-scrollbar__bar is-horizontal\">\r\n"
				+ "													<div class=\"el-scrollbar__thumb\"\r\n"
				+ "														style=\"transform: translateX(0%);\"></div>\r\n"
				+ "												</div>\r\n"
				+ "												<div class=\"el-scrollbar__bar is-vertical\">\r\n"
				+ "													<div class=\"el-scrollbar__thumb\"\r\n"
				+ "														style=\"transform: translateY(0%);\"></div>\r\n"
				+ "												</div>\r\n"
				+ "											</div>\r\n"
				+ "											<!---->\r\n"
				+ "										</div>\r\n"
				+ "									</div>\r\n"
				+ "							</ul>\r\n"
				+ "							<ul>\r\n"
				+ "								<!---->\r\n"
				+ "							</ul>\r\n"
				+ "						</div>\r\n"
				+ "						<div>\r\n"
				+ "							<div class=\"carListWrap mT20\" id=\"ajaxBrandAllList\">\r\n";

		for(int i = 0; i<brandCarAllList.size();i++) {
			String data =  "<input type=\"hidden\" value=\""+brandCarAllList.get(i).getC_num()+"\" class=\"carNumHidden\">"
				+ "			<div class=\"carListBox\" style=\"cursor: pointer;\">\r\n"
				+ "			<div class=\"carListImg\" style=\"cursor: pointer;\" onclick=\"detailPage('"+i+"')\">\r\n"
				+ "			<div>\r\n"
				+ "			<img src=\""+ brandCarAllList.get(i).getC_photo() +"\" alt=\"챠량이미지\"\r\n"
				+ "				onerror=\"this.src='/images/search/bg_no_Img_lg.png'\"\r\n"
				+ "				loading=\"lazy\">\r\n"
				+ "			</div>\r\n"
				+ "			<ul class=\"listViewBtn\">\r\n"
				+ "			<li><button type=\"button\"\r\n"
				+ "				class=\"el-button el-button--default icon icoFav\"\r\n"
				+ "				id=\"mkt_brandAddWish\">\r\n"
				+ "			<span><span class=\"_hidden\">찜하기</span></span>\r\n"
				+ "			</button></li>\r\n"
				+ "			</ul>\r\n"
				+ "			</div>\r\n"
				+ "			<ul class=\"listViewLabel\" onclick=\"detailPage('"+i+"')\">\r\n"
				+ "			</ul>\r\n"
				+ "			<div class=\"detailInfo\">\r\n"
				+ "			<div class=\"carName\">\r\n"
				+ "			<h3>"+ brandCarAllList.get(i).getCb_brand() + "&nbsp;"+ brandCarAllList.get(i).getCb_m_model() + "&nbsp;"+ brandCarAllList.get(i).getC_fuel() + "\r\n"
				+ "			</h3>\r\n"
				+ "			</div>\r\n"
				+ "			<div class=\"carListFlex\">\r\n"
				+ "			<div class=\"carExpIn\">\r\n"
				+ "			<p class=\"carExp\">"+ brandCarAllList.get(i).getC_price() + "만원</p>\r\n"
				+ "			</div>\r\n"
				+ "			<p class=\"detailCarCon\">\r\n"
				+ "			<span class=\"block\">"+ brandCarAllList.get(i).getC_year() + "</span>"
				+ "			<span>"+ brandCarAllList.get(i).getC_distance() + " km</span>"
				+ "			<span>"+ brandCarAllList.get(i).getC_fuel() + "</span>"
				+ "			<span>"+ brandCarAllList.get(i).getSt_name() + "</span>\r\n"
				+ "			</p>\r\n"
				+ "			</div>\r\n"
				+ "			<ul class=\"infoTooltip\">\r\n";
			for(int j=0;j<brandCarAllList.get(i).getBrandCarInfoTag().size();j++) {
				data +=   "<li><button type=\"button\"\r\n"
				+ "			class=\"el-button el-tooltip yellowLabel item el-button--default\"\r\n"
				+ "			aria-describedby=\"el-tooltip-7966\" tabindex=\"0\">\r\n"
				+ "			<span>"+ brandCarAllList.get(i).getBrandCarInfoTag().get(j) +"</span>\r\n"
				+ "			</button></li>\r\n";
			}
			data += "											</ul>\r\n"
				+ "										</div>\r\n"
				+ "									</div>\r\n";
			result += data;
		}
		result += "							</div>\r\n"
				+ "						</div>\r\n"
				+ "\r\n"
				+ "						<!-- 페이징 처리하기 -->\r\n"
				+ "						<div class=\"pagination -sm\">\r\n";
		
		if(currentPageNum > 1) {
			result += "							<!-- 이전버튼 -->\r\n"
					+ "							<button type=\"button\"\r\n"
					+ "								class=\"el-button pagePrev el-button--default\" id=\"prev\" onclick=\"send('prev','"+ currentPageNum +"')\" >\r\n"
					+ "								<span><img src=\"/images/common/pagenation-btn-left.svg\"\r\n"
					+ "									alt=\"이전\"></span>\r\n"
					+ "							</button>\r\n";
		}
			
		result += "							<div class=\"pagingNum\" id=\"pageNum\" value=\""+currentPageNum+"\" >\r\n"
				+ "								<span class=\"textRed\">"+currentPageNum+"</span> / "+totalPage+"\r\n"
				+ "							</div>\r\n";

		
		if(currentPageNum < totalPage) {
			result += "								<button type=\"button\"\r\n"
					+ "									class=\"el-button pageNext el-button--default\" id=\"next\" onclick=\"send('next','"+ currentPageNum +"')\" >\r\n"
					+ "									<span><img src=\"/images/common/pagenation-btn-right.svg\"\r\n"
					+ "										alt=\"다음\"></span>\r\n"
					+ "								</button>\r\n";
		}
		result += "						</div>";
		return result;
	}

	public String ajaxBrandModal(String brand, String model) {
		ArrayList<Map<String,String>> brandCarModelList = brandDao.brandCarModelList(brand);
		String modelData = "";
		int totalCount = 0;
		for(Map<String,String> m : brandCarModelList) {
			int count = Integer.parseInt(String.valueOf(m.get("COUNT")));
			totalCount += count;
			modelData += "<label role=\"radio\" tabindex=\"-1\" class=\"el-radio\"\r\n"
					+ "			id=\"modalModel\" onclick=\"modalModelAdd(\'"+brand+"\',\'"+m.get("CB_M_MODEL")+"\',\'"+count+"\')\">\r\n"
					+ "			<span class=\"el-radio__input\">\r\n"
					+ "			<span class=\"el-radio__inner\"></span>\r\n"
					+ "			<input type=\"radio\" aria-hidden=\"true\" tabindex=\"-1\" autocomplete=\"off\"\r\n"
					+ "					class=\"el-radio__original\"></span>\r\n"
					+ "			<span class=\"el-radio__label\"> "+m.get("CB_M_MODEL")+" <span class=\"count\">"+count+"대</span></span>\r\n"
					+ "			</label>";
		}
		return modelData;
	}
	
}