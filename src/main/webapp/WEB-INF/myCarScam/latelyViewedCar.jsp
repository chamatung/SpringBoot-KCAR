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
								<div class="el-dialog__wrapper popup popCenter mypagePop active"
									style="display: none;">
									<div role="dialog" aria-modal="true" aria-label="맞춤정보 설정"
										class="el-dialog" style="margin-top: 15vh;">
										<div class="el-dialog__header">
											<span class="el-dialog__title">맞춤정보 설정</span>
											<button type="button" aria-label="Close"
												class="el-dialog__headerbtn">
												<i class="el-dialog__close el-icon el-icon-close"></i>
											</button>
										</div>
										<!---->
										<div class="el-dialog__footer">
											<span class="dialog-footer"><div class="footerBtnWrap">
													<div class="searchTrigger box Large popFixBtnXS el-row">
														<button type="button" class="button apply">다음</button>
													</div>
												</div></span>
										</div>
									</div>
								</div>
								<div class="el-dialog__wrapper popup popCenter hauto"
									style="display: none;">
									<div role="dialog" aria-modal="true" aria-label="맞춤 서비스 제공 안내"
										class="el-dialog" style="margin-top: 15vh;">
										<div class="el-dialog__header">
											<span class="el-dialog__title">맞춤 서비스 제공 안내</span>
											<button type="button" aria-label="Close"
												class="el-dialog__headerbtn">
												<i class="el-dialog__close el-icon el-icon-close"></i>
											</button>
										</div>
										<!---->
										<div class="el-dialog__footer">
											<span class="dialog-footer"><div class="footerBtnWrap">
													<div class="searchTrigger box Large maxW400 el-row">
														<button class="button apply">닫기</button>
													</div>
												</div></span>
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
							<nav>
								<div class="mypageMenu">
									<h2 class="title">
										<a href="/mp" class=""> 마이페이지 </a>
									</h2>
									<ul>
										<li><a href="/mp/myCarBuyOrderManage" class=""> 내차사기
												주문관리 </a></li>
										<li><a href="/mp/MyCarSellAplMgtList" class=""> 내차팔기
												신청관리 </a></li>
										<li><a href="/mp/RentAplList" class=""> 렌트 신청내역 </a></li>
									</ul>
									<ul>
										<li><a href="/mp/GurnteReprRcpLst" class=""> 보증수리
												접수내역 </a></li>
									</ul>
									<ul>
										<li><a href="/bc/latelyViewedCar/list"
											aria-current="page"
											class="nuxt-link-exact-active nuxt-link-active active">
												최근 본 차량 </a></li>
									</ul>
									<ul>
										<li><a href="/bc/latelyViewedCar/list"
											aria-current="page"
											class="nuxt-link-exact-active nuxt-link-active"> 회원정보 </a></li>
									</ul>
								</div>
							</nav>
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
																				autocomplete="off" placeholder="기본정렬" value="기본정렬" id="alignment" onclick="alignmentClick()"
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
																						class="el-scrollbar__view el-select-dropdown__list" id="alignmentMethod">
																						<!---->
																						<li class="el-select-dropdown__item" value="기본정렬" onclick="alignmentMethodCheck('기본정렬')"><span>기본정렬</span></li>
																						<li class="el-select-dropdown__item" value="최근연식순" onclick="alignmentMethodCheck('최근연식순')"><span>최근연식순</span></li>
																						<li class="el-select-dropdown__item" value="낮은연식순" onclick="alignmentMethodCheck('낮은연식순')"><span>낮은연식순</span></li>
																						<li class="el-select-dropdown__item" value="적은주행거리순" onclick="alignmentMethodCheck('적은주행거리순')"><span>적은주행거리순</span></li>
																						<li class="el-select-dropdown__item" value="많은주행거리순" onclick="alignmentMethodCheck('많은주행거리순')"><span>많은주행거리순</span></li>
																						<li class="el-select-dropdown__item" value="낮은가격순" onclick="alignmentMethodCheck('낮은가격순')"><span>낮은가격순</span></li>
																						<li class="el-select-dropdown__item" value="높은가격순" onclick="alignmentMethodCheck('높은가격순')"><span>높은가격순</span></li>
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
																										<label class="el-checkbox" onclick="agree('0')"><span
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
																														<label class="el-checkbox" onclick="agree('${status.count}')"><span
																															class="el-checkbox__input"><span
																																class="el-checkbox__inner"></span><input
																																type="checkbox" aria-hidden="false"
																																class="el-checkbox__original" value="${car.c_num }"></span>
																															<!----></label>
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
																																	class="lineH">｜</span> ${car.c_distance }km <span
																																	class="lineH">｜</span> ${car.c_model }
																																	<span class="lineH">｜</span>
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
																									<div style="margin:110px;text-align: center; font-size: 20px; font-weight: bold;">
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
																		<button class="button lineApply" onclick="deleteLatelyCar()">삭제</button>
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
																			<button class="button lineApply">문자로 받기</button>
																		</div>
																		<div
																			class="searchTrigger box Inner01 DarkColor el-row">
																			<button class="button lineApply">PC에 저장하기</button>
																		</div>
																		<div
																			class="searchTrigger box Inner01 DarkColor el-row">
																			<button class="button lineApply">메일 보내기</button>
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
							<div class="el-dialog__wrapper popup popCenter"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="차량 정보문자 받기"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">차량 정보문자 받기</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
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
					<div>
						<div>
							<div class="el-dialog__wrapper popup fullPopup active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="메일 보내기"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">메일 보내기</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box multBtn el-row">
													<button class="button chosenApply">취소</button>
													<button class="button apply">보내기</button>
												</div>
											</div></span>
									</div>
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
					<div>
						<div>
							<div class="el-dialog__wrapper popup fullPopup active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="메일 보내기"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">메일 보내기</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box multBtn el-row">
													<button class="button chosenApply">취소</button>
													<button class="button apply">보내기</button>
												</div>
											</div></span>
									</div>
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