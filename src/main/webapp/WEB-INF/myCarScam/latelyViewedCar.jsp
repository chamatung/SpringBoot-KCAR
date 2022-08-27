<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="chrome">
<head>
<title>최근 본 차량</title>
<%@include file="latelyViewedCar_style.jsp"%>
</head>
<body style="" class="">
	<noscript data-n-head="ssr" data-hid="gtm-noscript" data-pbody="true">
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZPHVG&"
			height="0" width="0" style="display: none; visibility: hidden"
			title="gtm"></iframe>
	</noscript>
	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div id="app" class="Container">
				<div>
					<div class="el-dialog__wrapper popup fullPopup xnone active"
						style="display: none;">
						<div role="dialog" aria-modal="true" aria-label="딜러 약관 동의"
							class="el-dialog" style="margin-top: 15vh;">
							<div class="el-dialog__header">
								<span class="el-dialog__title">딜러 약관 동의</span>
								<button type="button" aria-label="Close"
									class="el-dialog__headerbtn">
									<i class="el-dialog__close el-icon el-icon-close"></i>
								</button>
							</div>
							<!---->
							<div class="el-dialog__footer">
								<span class="dialog-footer"><div class="footerBtnWrap">
										<div class="searchTrigger box multBtn el-row">
											<button class="button apply">확인</button>
										</div>
									</div></span>
							</div>
						</div>
					</div>
				</div>
				<!-- header start -->
				<%@include file="/WEB-INF/default/header.jsp"%>
				<!-- header end -->
				<div class="contentsWrap">
					<div class="mypageWrap">
						<div>
							<div class="mypagePop">
								<span id="modalBack"></span>
								<div class="el-dialog__wrapper popup confirm noTitle" id="modal"
									style="z-index: 3000; display: none">
									<div role="dialog" aria-modal="true" aria-label="dialog"
										class="el-dialog" style="margin-top: 15vh;">
										<div class="el-dialog__header">
											<span class="el-dialog__title"></span>
											<button type="button" aria-label="Close"
												class="el-dialog__headerbtn" onclick="modalClose()">
												<i class="el-dialog__close el-icon el-icon-close"></i>
											</button>
										</div>
										<div class="el-dialog__body">
											<div class="popContent">
												<div class="msgWrap">
													<div class="desc2">
														<p>차량을 선택해주세요.</p>
													</div>
												</div>
												<div class="popBtnWrap">
													<div class="searchTrigger box Inner01 maxW156 el-row">
														<button type="button" class="button apply"
															onclick="modalClose()">확인</button>
													</div>
												</div>
											</div>
										</div>
										<div class="el-dialog__footer">
											<span class="dialog-footer"><div></div></span>
										</div>
									</div>
								</div>

							</div>
							<%@include file="/WEB-INF/mypage/mypage_nav.jsp" %>
						</div>
						<div class="mypagCont mypageMain">
							<h3 class="subTitle">최근 본 차량</h3>
							<div class="tabsWrapsm mt40 el-row">
								<div class="tabsCol02sm padType el-tabs el-tabs--top">
									<div class="el-tabs__header is-top">
										<div class="el-tabs__nav-wrap is-top">
											<div class="el-tabs__nav-scroll">
												<div role="tablist" class="el-tabs__nav is-top"
													style="transform: translateX(0px);">
													<div class="el-tabs__active-bar is-top"
														style="width: 85px; transform: translateX(0px);"></div>
													<div id="tab-drct" aria-controls="pane-drct" role="tab"
														aria-selected="true" tabindex="0"
														class="el-tabs__item is-top is-active">중고차/렌트</div>
												</div>
											</div>
										</div>
									</div>
									<div class="el-tabs__content">
										<div role="tabpanel" id="pane-drct" aria-labelledby="tab-drct"
											class="el-tab-pane">
											<div class="tabCont">
												<div class="contentsBox section01  el-row">
													<div class="board">
														<!-- 비동기통신 할 때,, 최상위 div -->
														<div class="el-row" id="ajaxAlignment">
															<div class="legalDesBox ty2">
																<p>최근 일주일 동안 고객님이 보신 차량입니다. 최근 본 차량을 계속 보관하려면 로그인 후
																	관심차량에 담아 주세요.</p>
															</div>
															<div class="boardStatus">
																<input type="hidden" id="alignmentHidden" value="기본정렬">
																<span class="total">전체 <span class="pointColor">${latelyCarListCnt }</span>
																	건
																</span>
																<div class="filter">
																	<div class="el-select">
																		<!---->
																		<div class="el-input el-input--suffix">
																			<!---->
																			<input type="text" readonly="readonly"
																				autocomplete="off" placeholder="기본정렬" value="기본정렬"
																				id="alignment" onclick="alignmentClick()"
																				class="el-input__inner">
																			<!---->
																			<span class="el-input__suffix"><span
																				class="el-input__suffix-inner"><i
																					class="el-select__caret el-input__icon el-icon-arrow-up"></i>
																					<!----> <!----> <!----> <!----> <!----></span> <!----></span>
																			<!---->
																			<!---->
																		</div>
																		<div class="el-select-dropdown el-popper"
																			style="display: none; min-width: 233.108px;">
																			<div class="el-scrollbar" style="">
																				<div
																					class="el-select-dropdown__wrap el-scrollbar__wrap"
																					style="margin-bottom: -19px; margin-right: -19px;">
																					<ul
																						class="el-scrollbar__view el-select-dropdown__list"
																						id="alignmentMethod">
																						<!---->
																						<li class="el-select-dropdown__item" value="기본정렬"
																							onclick="alignmentMethodCheck('기본정렬')"><span>기본정렬</span></li>
																						<li class="el-select-dropdown__item" value="최근연식순"
																							onclick="alignmentMethodCheck('최근연식순')"><span>최근연식순</span></li>
																						<li class="el-select-dropdown__item" value="낮은연식순"
																							onclick="alignmentMethodCheck('낮은연식순')"><span>낮은연식순</span></li>
																						<li class="el-select-dropdown__item"
																							value="적은주행거리순"
																							onclick="alignmentMethodCheck('적은주행거리순')"><span>적은주행거리순</span></li>
																						<li class="el-select-dropdown__item"
																							value="많은주행거리순"
																							onclick="alignmentMethodCheck('많은주행거리순')"><span>많은주행거리순</span></li>
																						<li class="el-select-dropdown__item" value="낮은가격순"
																							onclick="alignmentMethodCheck('낮은가격순')"><span>낮은가격순</span></li>
																						<li class="el-select-dropdown__item" value="높은가격순"
																							onclick="alignmentMethodCheck('높은가격순')"><span>높은가격순</span></li>
																					</ul>
																				</div>
																				<div class="el-scrollbar__bar is-horizontal">
																					<div class="el-scrollbar__thumb"
																						style="transform: translateX(0%);"></div>
																				</div>
																				<div class="el-scrollbar__bar is-vertical">
																					<div class="el-scrollbar__thumb"
																						style="transform: translateY(0%);"></div>
																				</div>
																			</div>
																			<!---->
																		</div>
																	</div>
																</div>
															</div>
															<div class="mt16 el-row">
																<div class="boardListTable">
																	<div class="TblDefault mypageList">
																		<div>
																			<div
																				class="el-table el-table--fit el-table--enable-row-hover el-table--enable-row-transition"
																				style="width: 100%;">
																				<div class="hidden-columns">
																					<div class="alignC"></div>
																					<div></div>
																					<div class="alignC"></div>
																				</div>
																				<div class="el-table__header-wrapper">
																					<table cellspacing="0" cellpadding="0" border="0"
																						class="el-table__header" style="width: 905px;">
																						<colgroup>
																							<col name="el-table_1_column_1" width="50">
																							<col name="el-table_1_column_2" width="685">
																							<col name="el-table_1_column_3" width="170">
																							<col name="gutter" width="0">
																						</colgroup>
																						<thead class="has-gutter">
																							<tr class="">
																								<th colspan="1" rowspan="1"
																									class="el-table_1_column_1   el-table-column--selection  is-leaf el-table__cell"><div
																										class="cell">
																										<label class="el-checkbox"
																											onclick="agree('0')"><span
																											class="el-checkbox__input"><span
																												class="el-checkbox__inner"></span><input
																												type="checkbox" aria-hidden="false"
																												class="el-checkbox__original" value=""></span>
																											<!----></label>
																									</div></th>
																								<th colspan="1" rowspan="1"
																									class="el-table_1_column_2     is-leaf el-table__cell"><div
																										class="cell"></div></th>
																								<th colspan="1" rowspan="1"
																									class="el-table_1_column_3     is-leaf el-table__cell"><div
																										class="cell"></div></th>
																								<th class="el-table__cell gutter"
																									style="width: 0px; display: none;"></th>
																							</tr>
																						</thead>
																					</table>
																				</div>
																				<div
																					class="el-table__body-wrapper is-scrolling-none">
																					<table cellspacing="0" cellpadding="0" border="0"
																						class="el-table__body" style="width: 905px;">
																						<colgroup>
																							<col name="el-table_1_column_1" width="50">
																							<col name="el-table_1_column_2" width="685">
																							<col name="el-table_1_column_3" width="170">
																						</colgroup>
																						<tbody>
																							<c:choose>
																								<c:when test="${latelyCarList != null }">
																									<c:forEach var="car" items="${latelyCarList }"
																										varStatus="status">
																										<tr class="el-table__row">
																											<td rowspan="1" colspan="1"
																												class="el-table_1_column_1  el-table-column--selection el-table__cell"><div
																													class="cell">
																													<div class="roundCheck">
																														<label class="el-checkbox"
																															onclick="agree('${status.count}')"><span
																															class="el-checkbox__input"><span
																																class="el-checkbox__inner"></span><input
																																type="checkbox" aria-hidden="false"
																																class="el-checkbox__original"
																																value="${car.c_num }"></span> <!----></label>
																													</div>
																												</div></td>
																											<td rowspan="1" colspan="1"
																												class="el-table_1_column_2   el-table__cell"><div
																													class="cell">
																													<div class="aboutOrder">
																														<p class="carVisualImg">
																															<img src="${car.c_photo }"
																																onerror="this.src='/images/common/bg_no_Img_sm.png'"
																																class="carVisual"> <span
																																class="car360Img"><img
																																src="/images/common/ico-360.svg"
																																alt="360"></span>
																														</p>
																														<div>
																															<div class="badges">
																																<!---->
																																<!---->
																															</div>
																															<p class="carName">${car.cb_brand }
																																${car.cb_m_model } ${car.c_fuel}</p>
																															<ul class="options">
																																<li>${car.c_year }<span
																																	class="lineH">｜</span> ${car.c_distance }km
																																	<span class="lineH">｜</span>
																																	${car.c_model } <span class="lineH">｜</span>
																																	${car.st_name }
																																</li>
																															</ul>
																														</div>
																													</div>
																												</div></td>
																											<td rowspan="1" colspan="1"
																												class="el-table_1_column_3   el-table__cell"><div
																													class="cell">
																													<strong>${car.c_price }만원</strong>
																													<p class="fwMedium">
																														할부 <span class="pointColor">월
																															${car.monthPrice }만원</span>
																													</p>
																												</div></td>
																										</tr>
																									</c:forEach>
																								</c:when>
																								<c:otherwise>
																									<div
																										style="margin: 110px; text-align: center; font-size: 20px; font-weight: bold;">
																										<span class="textRed">최근 본 차량이 없습니다.</span>
																									</div>
																								</c:otherwise>
																							</c:choose>
																							<c:if test="">
																							</c:if>

																							<!---->
																						</tbody>
																					</table>
																					<!---->
																					<!---->
																				</div>
																				<!---->
																				<!---->
																				<!---->
																				<!---->
																				<div class="el-table__column-resize-proxy"
																					style="display: none;"></div>
																			</div>
																			<div class="el-dialog__wrapper popup confirm noTitle"
																				style="display: none;">
																				<div role="dialog" aria-modal="true"
																					aria-label="dialog" class="el-dialog"
																					style="margin-top: 15vh;">
																					<div class="el-dialog__header">
																						<span class="el-dialog__title"></span>
																						<button type="button" aria-label="Close"
																							class="el-dialog__headerbtn">
																							<i class="el-dialog__close el-icon el-icon-close"></i>
																						</button>
																					</div>
																					<!---->
																					<div class="el-dialog__footer">
																						<span class="dialog-footer"><div></div></span>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="paginationWrap">
																	<div class="searchTrigger box Inner01 DarkColor el-row">
																		<button class="button lineApply"
																			onclick="deleteLatelyCar()">삭제</button>
																	</div>
																	<div class="pagination -sm mT40">
																		<!---->
																		<div class="pagingNum">
																			<span class="textRed">1</span>
																		</div>
																		<!---->
																	</div>
																	<div class="utilWrap">
																		<div
																			class="searchTrigger box Inner01 DarkColor el-row">
																			<button class="button lineApply"
																				onclick="modalOpen('letter')">문자로 받기</button>
																		</div>
																		<div
																			class="searchTrigger box Inner01 DarkColor el-row">
																			<button class="button lineApply"
																				onclick="modalOpen('pc')">PC에 저장하기</button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!---->
							</div>
						</div>
					</div>
					<div class="el-dialog__wrapper popup confirm noTitle"
						style="display: none;">
						<div role="dialog" aria-modal="true" aria-label="dialog"
							class="el-dialog" style="margin-top: 15vh;">
							<div class="el-dialog__header">
								<span class="el-dialog__title"></span>
								<button type="button" aria-label="Close"
									class="el-dialog__headerbtn">
									<i class="el-dialog__close el-icon el-icon-close"></i>
								</button>
							</div>
							<!---->
							<div class="el-dialog__footer">
								<span class="dialog-footer"><div></div></span>
							</div>
						</div>
					</div>
					<div class="carRentWrap">
						<div>
							<span id="modalBack"></span>
							<div class="el-dialog__wrapper popup popCenter" id="modalLetter"
								style="z-index: 2023;display:none;">
								<div role="dialog" aria-modal="true" aria-label="차량 정보문자 받기"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">차량 정보문자 받기</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn" onclick="modalClose()">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<div class="el-dialog__body">
										<div class="popContent el-scrollbar">
											<div class="el-scrollbar__wrap"
												style="margin-bottom: -23px; margin-right: -23px;">
												<div class="el-scrollbar__view">
													<div class="rentSmsPopup">
														<div class="titLabel">휴대전화 번호를 입력해주세요.</div>
														<span><div class="inputBtnWrap">
																<span><div class="el-input">
																		<!---->
																		<input type="text" autocomplete="off"
																			placeholder="010-0000-0000" input-type="tel"
																			inputmode="numeric" maxlength="13"
																			class="el-input__inner" id="letterText">
																		<!---->
																		<!---->
																		<!---->
																		<!---->
																	</div></span>
																<button type="button"
																	class="el-button checkBtn el-button--default" onclick="letterSend()"> 
																	<!---->
																	<!---->
																	<span> 문자받기 </span>
																</button>
															</div>
															<div class="termsArea">
																<div class="roundCheck">
																	<h3 class="subTitle3">
																		<span><label class="el-checkbox" id="letterCheckBox" onclick="letterAgree()"><span
																				class="el-checkbox__input" id="letterCheckBox__input"><span
																					class="el-checkbox__inner"></span><input
																					type="checkbox" aria-hidden="false" true-value="Y"
																					false-value="N" class="el-checkbox__original" id="letterCheckBox__original"></span><span
																				class="el-checkbox__label"> 개인정보 수집 및 이용
																					동의(필수) <!---->
																			</span></label></span>
																		<button type="button"
																			class="el-button txtButton inner2 el-button--text">
																			<!---->
																			<!---->
																			<span> 보기 </span>
																		</button>
																	</h3>
																	<div class="termsCheckWrap">
																		<div class="item">
																			<strong>목적</strong>
																			<p>차량/ 직영점/ 판매자 정보문자 전송</p>
																		</div>
																		<div class="item">
																			<strong>개인정보 항목</strong>
																			<p>휴대폰번호</p>
																		</div>
																		<div class="item alignTop">
																			<strong>보유 및 이용기간</strong>
																			<p>
																				목적 달성 후 즉시 파기 또는 이용 목적과 관련된 사고조사, <br> 분쟁해결,
																				민원처리, 법령상 의무 이행을 위한 필요한 <br> 범위 내에서만 보유/이용
																			</p>
																		</div>
																	</div>
																</div>
															</div></span>
														<p class="guideTxt">해당 서비스 제공을 위해서 필요한 최소한의 개인정보이므로
															동의를 해주셔야 서비스를 이용하실 수 있습니다.</p>
													</div>
												</div>
											</div>
											<div class="el-scrollbar__bar is-horizontal">
												<div class="el-scrollbar__thumb"
													style="transform: translateX(0%);"></div>
											</div>
											<div class="el-scrollbar__bar is-vertical">
												<div class="el-scrollbar__thumb"
													style="transform: translateY(0%); height: 92.6448%;"></div>
											</div>
										</div>
									</div>
									<!---->
								</div>
							</div>
						</div>
						<div class="el-dialog__wrapper popup confirm noTitle"
							style="display: none;">
							<div role="dialog" aria-modal="true" aria-label="dialog"
								class="el-dialog" style="margin-top: 15vh;">
								<div class="el-dialog__header">
									<span class="el-dialog__title"></span>
									<button type="button" aria-label="Close"
										class="el-dialog__headerbtn">
										<i class="el-dialog__close el-icon el-icon-close"></i>
									</button>
								</div>
								<!---->
								<div class="el-dialog__footer">
									<span class="dialog-footer"><div></div></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- footer start -->
				<%@include file="/WEB-INF/default/footer.jsp"%>
				<!-- footer end -->
			</div>
		</div>
	</div>
	<script src="js/latelyCar.js"></script>
</body>
</html>