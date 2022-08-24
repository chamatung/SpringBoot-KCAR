package com.one.kcar.service.buy;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.one.kcar.dto.buy.CarDTO;

@Service
public class latelyCarService {
	@Autowired
	private detailService detailService;

	public String latelyCarList(String alignment, Model model, HttpServletResponse res, String cv,
			String deleteLatelyCarList) {
		Cookie latelyCar = detailService.getLatelyCar();

		// 쿠키값 있거나, 차량정보페이지 1회이상 접근 후에만 쿠키값 주기
		if (latelyCar != null && res != null) {
			if (latelyCar.getValue() != null)
				res.addCookie(latelyCar);
		}

		int carListCnt = 0;
		// 브라우저 쿠키값 삭제시 초기화
		if (cv == null) {
			if (latelyCar != null) {
				latelyCar.setValue(null);
				detailService.setLatelyCarDtoList(null);
				detailService.setLatelyCar(latelyCar);
			}
			model.addAttribute("latelyCarListCnt", carListCnt);
			return null;
		} else {
			// 브라우저 쿠키값 있을 경우 객체 정보 주기
			if (detailService.getLatelyCarDtoList() != null) {
				carListCnt = detailService.getLatelyCarDtoList().size();
				model.addAttribute("latelyCarListCnt", carListCnt);
			} else {
				model.addAttribute("latelyCarListCnt", carListCnt);
				return null;
			}
		}

		// 최근차량 리스트
		ArrayList<CarDTO> latelyCarList = detailService.getLatelyCarDtoList();

		model.addAttribute("latelyCarList", latelyCarList);

//		삭제할 정보
		if (deleteLatelyCarList != null) {
			String[] deleteArr = deleteLatelyCarList.split(",");
			for (String a : deleteArr) {
				for (int i = 0; i < latelyCarList.size(); i++) {
					if (a.equals(latelyCarList.get(i).getC_num())) {
						latelyCarList.remove(i).getC_num();
						
					}
				}
			}
			detailService.setLatelyCarDtoList(latelyCarList);
		}

		// 리스트 정렬
		String ajaxAlignment = null;
		if (alignment.equals("기본정렬") || alignment == null) {
			ajaxAlignment = ajaxAlignment(alignment, latelyCarList, carListCnt);
			return ajaxAlignment;
		}
		latelyCarList = alignment(alignment, latelyCarList);
		System.out.println(latelyCarList.size());
		ajaxAlignment = ajaxAlignment(alignment, latelyCarList, carListCnt);

		return ajaxAlignment;
	}

	public ArrayList<CarDTO> alignmentList(String alignment, ArrayList<CarDTO> latelyCarList) {
		for (int i = 0; i < latelyCarList.size() - 1; i++) {
			ArrayList<String> checkList = new ArrayList<>();
			boolean check = true;
			CarDTO old = latelyCarList.get(i);
			CarDTO new_ = latelyCarList.get(i + 1);

			if (alignment.equals("낮은연식순")) {
				checkList.add(old.getC_year());
				checkList.add(new_.getC_year());
				checkList.sort(Comparator.naturalOrder());
				if (checkList.get(0).equals(old.getC_year())) {
					check = false;
					continue;
				}
			} else if (alignment.equals("최근연식순")) {
				checkList.add(old.getC_year());
				checkList.add(new_.getC_year());
				checkList.sort(Comparator.reverseOrder());
				if (checkList.get(0).equals(old.getC_year())) {
					check = false;
					continue;
				}
			} else if (alignment.equals("적은주행거리순")) {
				checkList.add(old.getC_distance());
				checkList.add(new_.getC_distance());
				checkList.sort(Comparator.naturalOrder());
				if (checkList.get(0).equals(old.getC_distance())) {
					check = false;
					continue;
				}
			} else if (alignment.equals("많은주행거리순")) {
				checkList.add(old.getC_distance());
				checkList.add(new_.getC_distance());
				checkList.sort(Comparator.reverseOrder());
				if (checkList.get(0).equals(old.getC_distance())) {
					check = false;
					continue;
				}
			} else if (alignment.equals("낮은가격순")) {
				checkList.add(old.getC_price());
				checkList.add(new_.getC_price());
				checkList.sort(Comparator.naturalOrder());
				if (checkList.get(0).equals(old.getC_price())) {
					check = false;
					continue;
				}
			} else if (alignment.equals("높은가격순")) {
				checkList.add(old.getC_price());
				checkList.add(new_.getC_price());
				checkList.sort(Comparator.reverseOrder());
				if (checkList.get(0).equals(old.getC_price())) {
					check = false;
					continue;
				}
			}
			if (check == true) {
				// 정렬적용시 2개면 index예외 발생으로 별도 작업
				if (latelyCarList.size() == 2) {
					latelyCarList.remove(0);
					latelyCarList.add(old);
				} else {
					// 정렬적용시 list정보 변경
					latelyCarList.remove(0);
					latelyCarList.remove(1);
					latelyCarList.add(0, old);
					latelyCarList.add(0, new_);
				}
			}
		}
		return latelyCarList;

	}

	private ArrayList<CarDTO> alignment(String alignment, ArrayList<CarDTO> latelyCarList) {
		if (alignment == null)
			return latelyCarList;
		if (alignment.equals("기본정렬") || alignment == null)
			return latelyCarList;
		// 정렬
		if (latelyCarList.size() >= 2) {
			latelyCarList = alignmentList(alignment, latelyCarList);
		}
		return latelyCarList;
	}

	public String ajaxAlignment(String alignment, ArrayList<CarDTO> latelyCarList, int carListCnt) {
		String data = "<div class=\"el-row\" id=\"ajaxAlignment\">\r\n"
				+ "															<div class=\"legalDesBox ty2\">\r\n"
				+ "																<p>최근 일주일 동안 고객님이 보신 차량입니다. 최근 본 차량을 계속 보관하려면 로그인 후\r\n"
				+ "																	관심차량에 담아 주세요.</p>\r\n"
				+ "															</div>\r\n"
				+ "															<div class=\"boardStatus\">\r\n"
				+ "															<input type=\"hidden\" id=\"alignmentHidden\" value=\""
				+ alignment + "\">\r\n"
				+ "																<span class=\"total\">전체 <span class=\"pointColor\">"
				+ carListCnt + "</span>\r\n"
				+ "																	건\r\n"
				+ "																</span>\r\n"
				+ "																<div class=\"filter\">\r\n"
				+ "																	<div class=\"el-select\">\r\n"
				+ "																		<!---->\r\n"
				+ "																		<div class=\"el-input el-input--suffix\">\r\n"
				+ "																			<!---->\r\n"
				+ "																			<input type=\"text\" readonly=\"readonly\"\r\n"
				+ "																				autocomplete=\"off\" placeholder=\""
				+ alignment + "\"  id=\"alignment\" onclick=\"alignmentClick()\"\r\n"
				+ "																				class=\"el-input__inner\">\r\n"
				+ "																			<!---->\r\n"
				+ "																			<span class=\"el-input__suffix\"><span\r\n"
				+ "																				class=\"el-input__suffix-inner\"><i\r\n"
				+ "																					class=\"el-select__caret el-input__icon el-icon-arrow-up\"></i>\r\n"
				+ "																					<!----> <!----> <!----> <!----> <!----></span> <!----></span>\r\n"
				+ "																			<!---->\r\n"
				+ "																			<!---->\r\n"
				+ "																		</div>\r\n"
				+ "																		<div class=\"el-select-dropdown el-popper\"\r\n"
				+ "																			style=\"display: none; min-width: 233.108px;\">\r\n"
				+ "																			<div class=\"el-scrollbar\" style=\"\">\r\n"
				+ "																				<div\r\n"
				+ "																					class=\"el-select-dropdown__wrap el-scrollbar__wrap\"\r\n"
				+ "																					style=\"margin-bottom: -19px; margin-right: -19px;\">\r\n"
				+ "																					<ul\r\n"
				+ "																						class=\"el-scrollbar__view el-select-dropdown__list\" id=\"alignmentMethod\">\r\n"
				+ "																						<!---->\r\n"
				+ "																						<li class=\"el-select-dropdown__item\" value=\"기본정렬\" onclick=\"alignmentMethodCheck('기본정렬')\"><span>기본정렬</span></li>\r\n"
				+ "																						<li class=\"el-select-dropdown__item\" value=\"최근연식순\" onclick=\"alignmentMethodCheck('최근연식순')\"><span>최근연식순</span></li>\r\n"
				+ "																						<li class=\"el-select-dropdown__item\" value=\"낮은연식순\" onclick=\"alignmentMethodCheck('낮은연식순')\"><span>낮은연식순</span></li>\r\n"
				+ "																						<li class=\"el-select-dropdown__item\" value=\"적은주행거리순\" onclick=\"alignmentMethodCheck('적은주행거리순')\"><span>적은주행거리순</span></li>\r\n"
				+ "																						<li class=\"el-select-dropdown__item\" value=\"많은주행거리순\" onclick=\"alignmentMethodCheck('많은주행거리순')\"><span>많은주행거리순</span></li>\r\n"
				+ "																						<li class=\"el-select-dropdown__item\" value=\"낮은가격순\" onclick=\"alignmentMethodCheck('낮은가격순')\"><span>낮은가격순</span></li>\r\n"
				+ "																						<li class=\"el-select-dropdown__item\" value=\"높은가격순\" onclick=\"alignmentMethodCheck('높은가격순')\"><span>높은가격순</span></li>\r\n"
				+ "																					</ul>\r\n"
				+ "																				</div>\r\n"
				+ "																				<div class=\"el-scrollbar__bar is-horizontal\">\r\n"
				+ "																					<div class=\"el-scrollbar__thumb\"\r\n"
				+ "																						style=\"transform: translateX(0%);\"></div>\r\n"
				+ "																				</div>\r\n"
				+ "																				<div class=\"el-scrollbar__bar is-vertical\">\r\n"
				+ "																					<div class=\"el-scrollbar__thumb\"\r\n"
				+ "																						style=\"transform: translateY(0%);\"></div>\r\n"
				+ "																				</div>\r\n"
				+ "																			</div>\r\n"
				+ "																			<!---->\r\n"
				+ "																		</div>\r\n"
				+ "																	</div>\r\n"
				+ "																</div>\r\n"
				+ "															</div>\r\n"
				+ "															<div class=\"mt16 el-row\">\r\n"
				+ "																<div class=\"boardListTable\">\r\n"
				+ "																	<div class=\"TblDefault mypageList\">\r\n"
				+ "																		<div>\r\n"
				+ "																			<div\r\n"
				+ "																				class=\"el-table el-table--fit el-table--enable-row-hover el-table--enable-row-transition\"\r\n"
				+ "																				style=\"width: 100%;\">\r\n"
				+ "																				<div class=\"hidden-columns\">\r\n"
				+ "																					<div class=\"alignC\"></div>\r\n"
				+ "																					<div></div>\r\n"
				+ "																					<div class=\"alignC\"></div>\r\n"
				+ "																				</div>\r\n"
				+ "																				<div class=\"el-table__header-wrapper\">\r\n"
				+ "																					<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\"\r\n"
				+ "																						class=\"el-table__header\" style=\"width: 905px;\">\r\n"
				+ "																						<colgroup>\r\n"
				+ "																							<col name=\"el-table_1_column_1\" width=\"50\">\r\n"
				+ "																							<col name=\"el-table_1_column_2\" width=\"685\">\r\n"
				+ "																							<col name=\"el-table_1_column_3\" width=\"170\">\r\n"
				+ "																							<col name=\"gutter\" width=\"0\">\r\n"
				+ "																						</colgroup>\r\n"
				+ "																						<thead class=\"has-gutter\">\r\n"
				+ "																							<tr class=\"\">\r\n"
				+ "																								<th colspan=\"1\" rowspan=\"1\"\r\n"
				+ "																									class=\"el-table_1_column_1   el-table-column--selection  is-leaf el-table__cell\"><div\r\n"
				+ "																										class=\"cell\">\r\n"
				+ "																										<label class=\"el-checkbox\"  onclick=\"agree('0')\"><span\r\n"
				+ "																											class=\"el-checkbox__input\"><span\r\n"
				+ "																												class=\"el-checkbox__inner\"></span><input\r\n"
				+ "																												type=\"checkbox\" aria-hidden=\"false\"\r\n"
				+ "																												class=\"el-checkbox__original\" value=\"\"></span>\r\n"
				+ "																											<!----></label>\r\n"
				+ "																									</div></th>\r\n"
				+ "																								<th colspan=\"1\" rowspan=\"1\"\r\n"
				+ "																									class=\"el-table_1_column_2     is-leaf el-table__cell\"><div\r\n"
				+ "																										class=\"cell\"></div></th>\r\n"
				+ "																								<th colspan=\"1\" rowspan=\"1\"\r\n"
				+ "																									class=\"el-table_1_column_3     is-leaf el-table__cell\"><div\r\n"
				+ "																										class=\"cell\"></div></th>\r\n"
				+ "																								<th class=\"el-table__cell gutter\"\r\n"
				+ "																									style=\"width: 0px; display: none;\"></th>\r\n"
				+ "																							</tr>\r\n"
				+ "																						</thead>\r\n"
				+ "																					</table>\r\n"
				+ "																				</div>\r\n"
				+ "																				<div\r\n"
				+ "																					class=\"el-table__body-wrapper is-scrolling-none\">\r\n"
				+ "																					<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\"\r\n"
				+ "																						class=\"el-table__body\" style=\"width: 905px;\">\r\n"
				+ "																						<colgroup>\r\n"
				+ "																							<col name=\"el-table_1_column_1\" width=\"50\">\r\n"
				+ "																							<col name=\"el-table_1_column_2\" width=\"685\">\r\n"
				+ "																							<col name=\"el-table_1_column_3\" width=\"170\">\r\n"
				+ "																						</colgroup>\r\n"
				+ "																						<tbody>\r\n";
		if(latelyCarList.size() > 0) {
			for (int i = 0; i < latelyCarList.size(); i++) {
				data += "																										<tr class=\"el-table__row\">\r\n"
						+ "																											<td rowspan=\"1\" colspan=\"1\"\r\n"
						+ "																												class=\"el-table_1_column_1  el-table-column--selection el-table__cell\"><div\r\n"
						+ "																													class=\"cell\">\r\n"
						+ "																													<div class=\"roundCheck\">\r\n"
						+ "																														<label class=\"el-checkbox\" onclick=\"agree('"+(i+1)+"')\"><span\r\n"
						+ "																															class=\"el-checkbox__input\"><span\r\n"
						+ "																																class=\"el-checkbox__inner\"></span><input\r\n"
						+ "																																type=\"checkbox\" aria-hidden=\"false\"\r\n"
						+ "																																class=\"el-checkbox__original\" value=\""+latelyCarList.get(i).getC_num()+"\"></span>\r\n"
						+ "																															<!----></label>\r\n"
						+ "																													</div>\r\n"
						+ "																												</div></td>\r\n"
						+ "																											<td rowspan=\"1\" colspan=\"1\"\r\n"
						+ "																												class=\"el-table_1_column_2   el-table__cell\"><div\r\n"
						+ "																													class=\"cell\">\r\n"
						+ "																													<div class=\"aboutOrder\">\r\n"
						+ "																														<p class=\"carVisualImg\">\r\n"
						+ "																															<img src=\""
						+ latelyCarList.get(i).getC_photo() + "\"\r\n"
						+ "																																onerror=\"this.src='/images/common/bg_no_Img_sm.png'\"\r\n"
						+ "																																class=\"carVisual\"> <span\r\n"
						+ "																																class=\"car360Img\"><img\r\n"
						+ "																																src=\"/images/common/ico-360.svg\"\r\n"
						+ "																																alt=\"360\"></span>\r\n"
						+ "																														</p>\r\n"
						+ "																														<div>\r\n"
						+ "																															<div class=\"badges\">\r\n"
						+ "																																<!---->\r\n"
						+ "																																<!---->\r\n"
						+ "																															</div>\r\n"
						+ "																															<p class=\"carName\">"
						+ latelyCarList.get(i).getCb_brand() + " " + latelyCarList.get(i).getCb_m_model() + " "
						+ latelyCarList.get(i).getC_fuel() + "</p>\r\n"
						+ "																															<ul class=\"options\">\r\n"
						+ "																																<li>"
						+ latelyCarList.get(i).getC_year() + "<span\r\n"
						+ "																																	class=\"lineH\">｜</span> "
						+ latelyCarList.get(i).getC_distance() + "km <span\r\n"
						+ "																																	class=\"lineH\">｜</span> "
						+ latelyCarList.get(i).getC_model() + "\r\n"
						+ "																																	<span class=\"lineH\">｜</span>\r\n"
						+ "																																	"
						+ latelyCarList.get(i).getSt_name() + "\r\n"
						+ "																																</li>\r\n"
						+ "																															</ul>\r\n"
						+ "																														</div>\r\n"
						+ "																													</div>\r\n"
						+ "																												</div></td>\r\n"
						+ "																											<td rowspan=\"1\" colspan=\"1\"\r\n"
						+ "																												class=\"el-table_1_column_3   el-table__cell\"><div\r\n"
						+ "																													class=\"cell\">\r\n"
						+ "																													<strong>"
						+ latelyCarList.get(i).getC_price() + "만원</strong>\r\n"
						+ "																													<p class=\"fwMedium\">\r\n"
						+ "																														할부 <span class=\"pointColor\">월\r\n"
						+ "																															"
						+ latelyCarList.get(i).getMonthPrice() + "만원</span>\r\n"
						+ "																													</p>\r\n"
						+ "																												</div></td>\r\n";
			}
		}else {
			data += "<div style=\"margin:110px;text-align: center; font-size: 20px; font-weight: bold;\">\r\n"
					+ "<span class=\"textRed\">최근 본 차량이 없습니다.</span>\r\n"
					+ "</div>";
		}
		data += "																						</tbody>\r\n"
				+ "																					</table>\r\n"
				+ "																					<!---->\r\n"
				+ "																					<!---->\r\n"
				+ "																				</div>\r\n"
				+ "																				<!---->\r\n"
				+ "																				<!---->\r\n"
				+ "																				<!---->\r\n"
				+ "																				<!---->\r\n"
				+ "																				<div class=\"el-table__column-resize-proxy\"\r\n"
				+ "																					style=\"display: none;\"></div>\r\n"
				+ "																			</div>\r\n"
				+ "																			<div class=\"el-dialog__wrapper popup confirm noTitle\"\r\n"
				+ "																				style=\"display: none;\">\r\n"
				+ "																				<div role=\"dialog\" aria-modal=\"true\"\r\n"
				+ "																					aria-label=\"dialog\" class=\"el-dialog\"\r\n"
				+ "																					style=\"margin-top: 15vh;\">\r\n"
				+ "																					<div class=\"el-dialog__header\">\r\n"
				+ "																						<span class=\"el-dialog__title\"></span>\r\n"
				+ "																						<button type=\"button\" aria-label=\"Close\"\r\n"
				+ "																							class=\"el-dialog__headerbtn\">\r\n"
				+ "																							<i class=\"el-dialog__close el-icon el-icon-close\"></i>\r\n"
				+ "																						</button>\r\n"
				+ "																					</div>\r\n"
				+ "																					<!---->\r\n"
				+ "																					<div class=\"el-dialog__footer\">\r\n"
				+ "																						<span class=\"dialog-footer\"><div></div></span>\r\n"
				+ "																					</div>\r\n"
				+ "																				</div>\r\n"
				+ "																			</div>\r\n"
				+ "																		</div>\r\n"
				+ "																	</div>\r\n"
				+ "																</div>\r\n"
				+ "																<div class=\"paginationWrap\">\r\n"
				+ "																	<div class=\"searchTrigger box Inner01 DarkColor el-row\">\r\n"
				+ "																		<button class=\"button lineApply\" onclick=\"deleteLatelyCar()\">삭제</button>\r\n"
				+ "																	</div>\r\n"
				+ "																	<div class=\"pagination -sm mT40\">\r\n"
				+ "																		<!---->\r\n"
				+ "																		<div class=\"pagingNum\">\r\n"
				+ "																			<span class=\"textRed\">1</span>\r\n"
				+ "																		</div>\r\n"
				+ "																		<!---->\r\n"
				+ "																	</div>\r\n"
				+ "																	<div class=\"utilWrap\">\r\n"
				+ "																		<div\r\n"
				+ "																			class=\"searchTrigger box Inner01 DarkColor el-row\">\r\n"
				+ "																			<button class=\"button lineApply\">문자로 받기</button>\r\n"
				+ "																		</div>\r\n"
				+ "																		<div\r\n"
				+ "																			class=\"searchTrigger box Inner01 DarkColor el-row\">\r\n"
				+ "																			<button class=\"button lineApply\">PC에 저장하기</button>\r\n"
				+ "																		</div>\r\n"
				+ "																		<div\r\n"
				+ "																			class=\"searchTrigger box Inner01 DarkColor el-row\">\r\n"
				+ "																			<button class=\"button lineApply\">메일 보내기</button>\r\n"
				+ "																		</div>\r\n"
				+ "																	</div>\r\n"
				+ "																</div>\r\n"
				+ "															</div>\r\n"
				+ "														</div>";

		return data;
	}
}
