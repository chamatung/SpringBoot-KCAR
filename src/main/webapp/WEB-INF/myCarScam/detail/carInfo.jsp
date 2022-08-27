<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html lang="ko" data-n-head="%7B%22lang%22:%7B%22ssr%22:%22ko%22%7D%7D"
	class="chrome">
<head>
<%@include file="carInfo_style.jsp"%>
<title>차량상세 직영 중고차</title>
<meta data-n-head="ssr" charset="utf-8">
<meta data-n-head="ssr" name="viewport"
	content="width=device-width, initial-scale=1">
<meta data-n-head="ssr" data-hid="og-title" name="og:title"
	content="K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카 ">
<meta data-n-head="ssr" data-hid="og-description" name="og:description"
	content="대한민국 No.1 직영 중고차. 중고차 매입, 중고차 판매, 중고차 최초 환불 서비스, 중고차 온라인 구매 홈서비스, 중고차 매매, 중고차 사이트 ">
<meta data-n-head="ssr" data-hid="og-image" name="og:image"
	content="https://api.kcar.com/BASE/kcar_share_kakao.jpg">
<meta data-n-head="ssr" data-hid="og-type" name="og:type"
	content="website">
<meta data-n-head="ssr" data-hid="twitter-card" name="twitter:card"
	content="summary_large_image">
<meta data-n-head="ssr" data-hid="twitter-title" name="twitter:title"
	content="K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카">
<meta data-n-head="ssr" data-hid="twitter-description"
	name="twitter:description"
	content="대한민국 No.1 직영 중고차. 중고차 매입, 중고차 판매, 중고차 최초 환불 서비스, 중고차 온라인 구매 홈서비스, 중고차 매매, 중고차 사이트 ">
<meta data-n-head="ssr" data-hid="twitter-image-src"
	name="twitter:image:src"
	content="https://api.kcar.com/BASE/kcar_share_kakao.jpg">
<meta data-n-head="ssr" name="format-detection" content="telephone=no">
<meta data-n-head="ssr" data-hid="og:image" name="og:image"
	content="https://img.kcar.com/carpicture/carpicture09/pic6069/kcar_60698363_001.jpg">
<meta data-n-head="ssr" data-hid="title" name="title"
	content="차량상세 직영 중고차">
<meta data-n-head="ssr" data-hid="description" name="description"
	content="대한민국 No.1 직영 중고차. 중고차 매입, 중고차 판매, 중고차 최초 환불 서비스, 중고차 온라인 구매 홈서비스, 중고차 매매, 중고차 사이트 ">
<meta data-n-head="ssr" data-hid="keywords" name="keywords"
	content="중고차, 중고차 시세, K Car 직영차, 중고차팔기, 보험, 보증, 진단, 대출, 중고차 매매, 국산차, 수입차">
<meta data-n-head="ssr" property="groobee:member_id" content="">
<meta data-n-head="ssr" property="groobee:member_grade" content="">
<meta data-n-head="ssr" property="groobee:member_gender" content="">
<meta data-n-head="ssr" property="groobee:member_type" content="">
<meta data-n-head="ssr" property="groobee:member_age" content="">
<link data-n-head="ssr" rel="icon" type="image/x-icon"
	href="/favicon.ico">
<link data-n-head="ssr" rel="stylesheet" href="/css/3dview/kcarview.css">
<link data-n-head="ssr" rel="stylesheet"
	href="/css/3dview/pannellum.css">

<meta http-equiv="origin-trial"
	content="Azy2GzGQxPvGmQwVDdEL1jRuKSXIdSSASA06JCA6PCeaVHpFYf8Rw5/q+9adc9CrBTxfCeUwxkuDM4PWEmdqywwAAACKeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZWFkc2VydmljZXMuY29tOjQ0MyIsImZlYXR1cmUiOiJQcml2YWN5U2FuZGJveEFkc0FQSXMiLCJleHBpcnkiOjE2NjEyOTkxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">

</head>
<body style="">
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
				<div class="carInfoWrap" data-v-59a16f56="">
					<div class="carInfoContainer" data-v-59a16f56="">
						<div class="carInfoContent" data-v-59a16f56="">
							<div class="carInfoKeyArea" data-v-59a16f56="">

								<!-- 상단 차량정보 -->
								<div class="carNameWrap" data-v-59a16f56="">
								<input type="hidden" value="${car.c_num }" id="carNum">
									<div class="left" data-v-59a16f56="">
										<h2 data-v-59a16f56="" class="carName">${car.cb_brand }
											${car.cb_m_model } ${car.c_fuel }</h2>
										<div data-v-59a16f56="">
											<span class="carNum" data-v-59a16f56="">${car.c_num }</span>
											<ul class="dotLists" data-v-59a16f56="">
												<li data-v-59a16f56="">${car.c_acident }</li>
												<li data-v-59a16f56="">${car.c_year }</li>
												<li data-v-59a16f56="">${car.c_distance }km</li>
												<li data-v-59a16f56="">${car.c_fuel }</li>
												<li data-v-59a16f56="">${car.c_color }</li>
												<li data-v-59a16f56="">${car.c_change }</li>
												<li data-v-59a16f56="">${car.st_name }</li>
											</ul>
										</div>

										<!-- 상단 차량 태그정보 -->
										<ul class="flagLists" data-v-59a16f56="">
											<li class="redC" data-v-59a16f56="">직영</li>
											<li data-v-59a16f56="">홈서비스</li>
											<!---->
										</ul>
									</div>
									<div class="right" data-v-59a16f56="">
										<div class="carPriceView" data-v-59a16f56="">
											<div class="price" data-v-59a16f56="">
												<strong data-v-59a16f56="">${car.c_price }만원</strong>
											</div>
											<ul class="priceLists" data-v-59a16f56="">
												<li data-v-59a16f56="">할부 <span class="pointC"
													data-v-59a16f56="">월${carPriceInfo.result2 }만원</span></li>
												<!---->
											</ul>
										</div>
									</div>
								</div>
								<!-- 직영점 연락처 -->
								<div class="consultGuide mT40" data-v-59a16f56="">
									<div data-v-59a16f56="">
										<span data-v-59a16f56="">차량상담</span>
										<ul data-v-59a16f56="">
											<li data-v-59a16f56="">윤원기</li>
										</ul>
									</div>
									<div class="callGuide" data-v-59a16f56="">0504-1369-7829
									</div>
								</div>

								<div class="carInfoGallery" style="display: none;"
									data-v-59a16f56="">
									<!---->
									<div id="kcarview" ondragstart="return false"
										onselectstart="return false" oncontextmenu="return false"
										style="width: 100%;" data-v-59a16f56=""></div>
								</div>
								<div class="carInfoGallery" style="display:;" data-v-59a16f56="">
									<div data-v-59b869e3="" data-v-59a16f56="">
										<div class="el-dialog__wrapper popup confirm noTitle"
											style="display: none;" data-v-59b869e3="">
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
													<span class="dialog-footer" data-v-59b869e3=""><div
															data-v-59b869e3=""></div></span>
												</div>
											</div>
										</div>
										<!---->
									</div>
									<div class="pdp-cover-slider-container" data-v-59a16f56="">
										<div class="el-carousel el-carousel--horizontal">
											<div class="el-carousel__container" style="height: 81.0rem;">
												<button type="button"
													class="el-carousel__arrow el-carousel__arrow--left">
													<i class="el-icon-arrow-left"></i>
												</button>
												<button type="button"
													class="el-carousel__arrow el-carousel__arrow--right">
													<i class="el-icon-arrow-right"></i>
												</button>
												<!-- forEach 시작 0번index -->
												<div class="el-carousel__item is-active is-animating"
													style="transform: translateX(0px) scale(1);">
													<!---->
													<div class="image-wrap">
														<img src="${CarPhotoFirst }">
														<!---->
													</div>
												</div>
												<!-- forEach 시작 1번index부터 -->
												<c:forEach var="carPhotoCenter"
													items="${CarPhotoListCenter }" varStatus="status">
													<div class="el-carousel__item"
														style="transform: translateX(1220px) scale(1);">
														<!---->
														<div class="image-wrap">
															<img src="${carPhoto.c_p_photo }">
															<!---->
														</div>
													</div>
												</c:forEach>
												<!-- forEach 끝 -->
											</div>
											<ul
												class="el-carousel__indicators el-carousel__indicators--horizontal">
												<li
													class="el-carousel__indicator el-carousel__indicator--horizontal is-active"><button
														class="el-carousel__button">
														<!---->
													</button></li>
											</ul>
										</div>
										<div class="el-carousel-thumbnail">
											<div always=""
												class="el-carousel-thumbnail-scroll el-scrollbar">
												<div class="el-scrollbar__wrap"
													style="margin-bottom: -21px; margin-right: -21px; display: flex;">
													<!-- forEach start 사진 약 31개 -->
													<c:forEach var="carPhotoBottom"
														items="${CarPhotoListBottom }" varStatus="status">
														<div class="el-scrollbar__view">
															<div class="el-carousel-thumbnail-wrap">
																<div data-thumbnail-item-index="${status.index }"
																	class="el-carousel-thumbnail-item active">
																	<button data-slide-index="${status.index }"
																		style="background-image: url(${carPhotoBottom.c_p_photo});"></button>
																</div>
															</div>
														</div>
													</c:forEach>

													<!-- forEach end -->


												</div>
												<div class="el-scrollbar__bar is-horizontal">
													<div class="el-scrollbar__thumb"
														style="transform: translateX(0%); width: 100%;"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carInfoDetailWrap" data-v-59a16f56="">
								<div class="carInfoLeft" data-v-59a16f56="">
									<div class="carPriceView" data-v-59a16f56="">
										<div class="price" data-v-59a16f56="">
											<strong data-v-59a16f56="">${car.c_price }만원</strong>
										</div>
										<ul class="priceLists" data-v-59a16f56="">
											<li data-v-59a16f56="">할부 <span class="pointC"
												data-v-59a16f56="">월${carPriceInfo.result2 } 만원</span></li>
											<!---->
										</ul>
									</div>
									<ul class="snsCtaLists" data-v-59a16f56="">
										<li class="item1" data-v-59a16f56=""><a
											id="mkt_sharebtnId" data-v-59a16f56="" onclick="shareModalOpen()">공유</a></li>
									</ul>
									<ul class="carOptionLists" data-v-59a16f56="">
										<li data-v-59a16f56=""><button type="button"
												class="el-button el-button--default" data-v-59a16f56="">
												<!---->
												<!---->
												<span><span data-v-59a16f56="">기본 정보</span> <strong
													data-v-59a16f56="">${car.c_year }</strong></span>
											</button></li>
										<li data-v-59a16f56=""><button type="button"
												class="el-button el-button--default" data-v-59a16f56="">
												<!---->
												<!---->
												<span><span data-v-59a16f56="">주행거리</span> <strong
													data-v-59a16f56="">${car.c_distance } km</strong></span>
											</button></li>
										<li data-v-59a16f56=""><button type="button"
												class="el-button el-button--default" data-v-59a16f56="">
												<!---->
												<!---->
												<span><span data-v-59a16f56="">진단 결과</span> <strong
													data-v-59a16f56="">${car.c_acident }</strong></span>
											</button></li>
									</ul>
									<div class="formWrap" data-v-59a16f56="">
										<form class="el-form" data-v-59a16f56="">
											<div class="el-form-item price" data-v-59a16f56="">
												<!---->
												<div class="el-form-item__content">
													<div data-v-59a16f56="">
														<div class="titLabel" data-v-59a16f56="">차량 예상 가격</div>
														<div class="inputManWon el-input is-disabled"
															data-v-59a16f56="">
															<!---->
															<input type="text" disabled="disabled" autocomplete="off"
																class="el-input__inner"
																value="${car.c_price }">
															<!---->
															<!---->
															<!---->
															<!---->
														</div>
													</div>
													<div data-v-59a16f56="">
														<div class="titLabel" data-v-59a16f56="">
															선수금
															<button type="button"
																class="el-button el-tooltip item tooltip-btn el-button--default"
																data-v-59a16f56="" aria-describedby="el-tooltip-9470"
																tabindex="0">
																<!---->
																<!---->
																<span><i class="el-icon-info2" data-v-59a16f56=""></i></span>
															</button>
														</div>
														<div class="inputManWon el-input" data-v-59a16f56="">
															<!---->
															<input type="text" autocomplete="off"
																class="el-input__inner"
																value="${carPriceInfo.advancePayment2 }">
															<!---->
															<!---->
															<!---->
															<!---->
														</div>
													</div>
													<!---->
												</div>
											</div>
											<div class="el-form-item" data-v-59a16f56="">
												<!---->
												<div class="el-form-item__content">
													<div class="priceWrap" data-v-59a16f56="">
														<label class="el-checkbox" data-v-59a16f56=""><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value=""></span><span class="el-checkbox__label">
																세금 및 부대비용
																<button type="button"
																	class="el-button el-tooltip item tooltip-btn el-button--default"
																	data-v-59a16f56="" aria-describedby="el-tooltip-4308"
																	tabindex="0">
																	<!---->
																	<!---->
																	<span><i class="el-icon-info2"
																		data-v-59a16f56=""></i></span>
																</button> <!---->
														</span></label>
														<div class="price" data-v-59a16f56="">${carPriceInfo.managePrice }
															원</div>
													</div>
													<!---->
												</div>
											</div>
											<div class="el-form-item" data-v-59a16f56="">
												<!---->
												<div class="el-form-item__content">
													<!-- <div class="priceWrap" data-v-59a16f56="">
														<div data-v-59a16f56="">
															<label class="el-checkbox" data-v-59a16f56=""><span
																class="el-checkbox__input"><span
																	class="el-checkbox__inner"></span><input
																	type="checkbox" aria-hidden="false"
																	class="el-checkbox__original" value=""></span><span
																class="el-checkbox__label"> K Car Warranty 가입비</span></label>
														</div>
														<div class="flexbox" data-v-59a16f56="">
															<div class="el-select" data-v-59a16f56="">
																
																<div class="el-input is-disabled el-input--suffix">
																	
																	<input type="text" disabled="disabled"
																		readonly="readonly" autocomplete="off"
																		placeholder="선택" class="el-input__inner">
																	
																	<span class="el-input__suffix"><span
																		class="el-input__suffix-inner"><i
																			class="el-select__caret el-input__icon el-icon-arrow-up"></i>
																		
																			
																			
																			
																			</span>
																	</span>
																	
																	
																</div>
																<div class="el-select-dropdown el-popper"
																	style="display: none; min-width: 184.883px;">
																	<div class="el-scrollbar" style="">
																		<div
																			class="el-select-dropdown__wrap el-scrollbar__wrap"
																			style="margin-bottom: -21px; margin-right: -21px;">
																			<ul
																				class="el-scrollbar__view el-select-dropdown__list">
																				
																				<li data-v-59a16f56=""
																					class="el-select-dropdown__item selected"><span>KW6</span></li>
																				<li data-v-59a16f56=""
																					class="el-select-dropdown__item"><span>KW12</span></li>
																				<li data-v-59a16f56=""
																					class="el-select-dropdown__item"><span>KW3</span></li>
																				<li data-v-59a16f56=""
																					class="el-select-dropdown__item"><span>보증없음</span></li>
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
																	
																</div>
															</div>
															<div class="inputManWon won el-input" data-v-59a16f56="">
																
																<input type="text" readonly="readonly"
																	autocomplete="off" placeholder="1000"
																	class="el-input__inner">
																
																
																
																
															</div>
														</div>
													</div> -->
													<!---->
												</div>
											</div>
											<div id="ajaxInstallment">
												<div class="el-form-item" data-v-59a16f56="">
													<!---->

													<div class="el-form-item__content">
														<div class="titLabel" data-v-59a16f56="">할부기간</div>
														<input type="hidden" id="hiddenCarPrice" value="${car.c_price}">
														<div role="radiogroup" class="el-radio-group radioBoxs"
															data-v-59a16f56="">
															<label role="radio" tabindex="-1" class="el-radio-button"
																data-v-59a16f56=""><input type="radio"
																name="installment" tabindex="-1" autocomplete="off"
																value="0"
																class="el-radio-button__orig-radio installment"
																onclick="installmentCheck('12','${car.c_price}')"><span
																class="el-radio-button__inner"> 12개월 <!----></span></label><label
																role="radio" tabindex="-1" class="el-radio-button"
																data-v-59a16f56=""><input type="radio"
																name="installment" tabindex="-1" autocomplete="off"
																value="1"
																class="el-radio-button__orig-radio installment"
																onclick="installmentCheck('24','${car.c_price}')"><span
																class="el-radio-button__inner"> 24개월 <!----></span></label><label
																role="radio" aria-checked="true" tabindex="0"
																class="el-radio-button is-active" data-v-59a16f56=""><input
																type="radio" name="installment" tabindex="-1"
																autocomplete="off" value="2" checked="checked"
																class="el-radio-button__orig-radio installment"
																onclick="installmentCheck('36','${car.c_price}')"><span
																class="el-radio-button__inner"
																style="background-color:; border-color:; box-shadow:; color:;">
																	36개월 <!---->
															</span></label><label role="radio" tabindex="-1" class="el-radio-button"
																data-v-59a16f56=""><input type="radio"
																name="installment" tabindex="-1" autocomplete="off"
																value="3"
																class="el-radio-button__orig-radio installment"
																onclick="installmentCheck('48','${car.c_price}')"><span
																class="el-radio-button__inner"> 48개월 <!----></span></label><label
																role="radio" tabindex="-1" class="el-radio-button"
																data-v-59a16f56=""><input type="radio"
																name="installment" tabindex="-1" autocomplete="off"
																value="4"
																class="el-radio-button__orig-radio installment"
																onclick="installmentCheck('60','${car.c_price}')"><span
																class="el-radio-button__inner"> 60개월 <!----></span></label><label
																role="radio" tabindex="-1" class="el-radio-button"
																data-v-59a16f56=""><input type="radio"
																name="installment" tabindex="-1" autocomplete="off"
																value="5"
																class="el-radio-button__orig-radio installment"
																onclick="installmentCheck('72','${car.c_price}')"><span
																class="el-radio-button__inner"> 72개월 <!----></span></label>
														</div>
														<!---->
													</div>
												</div>
												<div class="el-form-item" data-v-59a16f56="">
													<!---->
													<div class="el-form-item__content">
														<div class="titLabel" data-v-59a16f56="">
															금리
															<button type="button"
																class="el-button el-tooltip item tooltip-btn el-button--default"
																data-v-59a16f56="" aria-describedby="el-tooltip-7048"
																tabindex="0">
																<!---->
																<!---->
																<span><i class="el-icon-info2" data-v-59a16f56=""></i></span>
															</button>
														</div>
														<input type="hidden" id="hidden7" value="null"> <input
															type="hidden" id="hidden8"value="null"> <input
															type="hidden" id="hidden9"value="null"> <input
															type="hidden" id="hidden11"value="null"> <input
															type="hidden" id="hidden13"value="null">
														<div role="radiogroup" class="el-radio-group radioBoxs"
															data-v-59a16f56="">
															<label role="radio" aria-checked="true" tabindex="0"
																id="interestbtn1" class="el-radio-button is-active"
																data-v-59a16f56=""><input name="rate"
																type="radio" tabindex="-1" autocomplete="off" value="0"
																checked="checked" class="el-radio-button__orig-radio"
																onclick="rateCheck('${carPriceInfo.result }','7')">
																<span class="el-radio-button__inner rate" id="7"
																style="background-color:; border-color:; box-shadow:; color:;">연
																	7% <br>${carPriceInfo.result2 } 만원
															</span></label><label role="radio" tabindex="-1" id="interestbtn2"
																class="el-radio-button" data-v-59a16f56=""><input
																name="rate" type="radio" tabindex="-1"
																autocomplete="off" value="1"
																class="el-radio-button__orig-radio"
																onclick="rateCheck('${carPriceInfo8.result }','8')"><span
																class="el-radio-button__inner rate" id="8">연 8% <br>${carPriceInfo8.result2 }
																	만원
															</span></label><label role="radio" tabindex="-1" id="interestbtn3"
																class="el-radio-button" data-v-59a16f56=""><input
																name="rate" type="radio" tabindex="-1"
																autocomplete="off" value="2"
																class="el-radio-button__orig-radio"
																onclick="rateCheck('${carPriceInfo9.result }','9')"><span
																class="el-radio-button__inner rate" id="9">연 9% <br>${carPriceInfo9.result2 }
																	만원
															</span></label><label role="radio" tabindex="-1" id="interestbtn4"
																class="el-radio-button" data-v-59a16f56=""><input
																name="rate" type="radio" tabindex="-1"
																autocomplete="off" value="3"
																class="el-radio-button__orig-radio"
																onclick="rateCheck('${carPriceInfo11.result }','11')"><span
																class="el-radio-button__inner rate" id="11">연 11%
																	<br>${carPriceInfo11.result2 } 만원
															</span></label><label role="radio" tabindex="-1" id="interestbtn5"
																class="el-radio-button" data-v-59a16f56=""><input
																name="rate" type="radio" tabindex="-1"
																autocomplete="off" value="4"
																class="el-radio-button__orig-radio"
																onclick="rateCheck('${carPriceInfo13.result }','13')"><span
																class="el-radio-button__inner rate" id="13">연 13%
																	<br>${carPriceInfo13.result2 } 만원
															</span></label>
														</div>

														<!---->
													</div>
												</div>
											</div>
										</form>
									</div>
									<div class="calcBox" data-v-59a16f56="">
										<ul class="calcDescLists" data-v-59a16f56="">
											<li data-v-59a16f56=""><span data-v-59a16f56="">총
													할부 신청 금액</span> <strong data-v-59a16f56="">${carPriceInfo.installment2 }원</strong></li>
											<li data-v-59a16f56=""><span data-v-59a16f56="">월
													납부금(예상)</span> <strong class="pointC" data-v-59a16f56=""
												id="monthResult">${carPriceInfo.result } 원</strong></li>
										</ul>
										<div class="calcBtnArea" data-v-59a16f56="">
											<div class="searchTrigger box btnSpace20 pT0 el-row"
												data-v-59a16f56="">
											</div>
										</div>
									</div>
									<div class="cardPayInfoTxt" data-v-59a16f56="">
										<p data-v-59a16f56="">신용카드 결제는 삼성카드로만 할 수 있습니다</p>
										<ul class="caution_dot" data-v-59a16f56="">
											<li data-v-59a16f56=""><a
												href="https://www.samsungcard.com/personal/card/fast-track/UHPPCA0216M0.jsp?click=gnb_apply_fastca"
												target="_blank" data-v-59a16f56="">삼성카드 신규 발급 &gt;</a> 발급
												문의: 삼성카드 고객센터(1588-8700)</li>
											<li data-v-59a16f56=""><a
												href="https://directauto.samsungcard.com/oap/partner/UOAPUA0101M0.jsp?usdcrAlncDvC=006&amp;click=barolink_lms"
												target="_blank" data-v-59a16f56="">삼성카드 혜택 확인 &gt;</a> 혜택
												문의: 자동차 금융상담센터(1688-3001)</li>
										</ul>
									</div>
									<div id="flagDgnos" class="bannerArea mT20" data-v-59a16f56="">
										<div data-v-59a16f56="">
											<a
												href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_kcar2021_30&amp;adgroupid=adg_kcaradmin_20220607_6&amp;adid=adi_kcaradmin_20220607_10"><img
												src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/SLOT/banner-3@2xtQHNfhZ5XWicU84Pnqu4.png"></a>
										</div>
									</div>
									<div class="tabMenuWrap" data-v-59a16f56="">
										<ul class="tabMenu" data-v-59a16f56="">
											<li data-menu="1" class="active" data-v-59a16f56=""><a
												href="#menu1" data-index="1" class="scroll"
												data-v-59a16f56="">진단사항</a></li>
											<li data-menu="2" data-v-59a16f56=""><a href="#menu2"
												data-index="2" class="scroll" data-v-59a16f56="">차량정보</a></li>
											<li data-menu="4" data-v-59a16f56=""><a href="#menu4"
												data-index="4" class="scroll" data-v-59a16f56="">차량옵션</a></li>
										</ul>
									</div>
									<ul class="tabMenuCont" data-v-59a16f56="">
										<li id="menu1" data-menu-section="1" data-v-59a16f56=""><div
												class="flexSB mB32 pT100" data-v-59a16f56="">
												<h2 class="infoHead2 mB0" data-v-59a16f56="">K Car 진단
													요약</h2>
												<ul class="barLists" data-v-59a16f56="">
													<li data-v-59a16f56=""><span data-v-59a16f56="">사고유무</span>
														<span class="pointC" data-v-59a16f56="">무사고</span></li>
												</ul>
											</div>
											<div class="threeDArea" data-v-6b3a86a8="" data-v-59a16f56="">
												<ul class="labels" data-v-6b3a86a8="">
													<li data-v-6b3a86a8="">판금 0건</li>
													<li data-v-6b3a86a8="">교환 0건</li>
												</ul>
												<div style="display: flex; padding-bottom: 4rem"
													data-v-6b3a86a8="">
													<section class="ext" data-v-6b3a86a8="">
														<div class="base_ext" data-v-6b3a86a8="">
															<div data-v-6b3a86a8="" status="1" class="repair"
																style="position: absolute; left: 0px; top: 0px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/body.png"
																	src_ori="/images/carimage/sedan/body.png">
															</div>
															<div data-v-6b3a86a8="" status="1" class="repair"
																style="position: absolute; left: 262px; top: 74px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/roof.png"
																	src_ori="/images/carimage/sedan/roof.png">
															</div>
															<div data-v-6b3a86a8="" status="1" class="repair"
																style="position: absolute; left: 117px; top: 186px; z-index: 20;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/bonnet.png"
																	src_ori="/images/carimage/sedan/bonnet.png">
															</div>
															<div data-v-6b3a86a8="" status="1" class="repair"
																style="position: absolute; left: 259px; top: 249px; z-index: 22;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/front-fender-left.png"
																	src_ori="/images/carimage/sedan/front-fender-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" class="repair"
																style="position: absolute; left: 330px; top: 146px; z-index: 21;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/front-door-left.png"
																	src_ori="/images/carimage/sedan/front-door-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" class="repair"
																style="position: absolute; left: 400px; top: 124px; z-index: 20;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/back-door-left.png"
																	src_ori="/images/carimage/sedan/back-door-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" class="repair"
																style="position: absolute; left: 451px; top: 112px; z-index: 19;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/back-fender-left.png"
																	src_ori="/images/carimage/sedan/back-fender-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" class="repair"
																style="position: absolute; left: 120px; top: 181px; z-index: 4;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/front-fender-right.png"
																	src_ori="/images/carimage/sedan/front-fender-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" class="repair"
																style="position: absolute; left: 193px; top: 102px; z-index: 5;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/front-door-right.png"
																	src_ori="/images/carimage/sedan/front-door-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" class="repair"
																style="position: absolute; left: 268px; top: 83px; z-index: 1;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/back-door-right.png"
																	src_ori="/images/carimage/sedan/back-door-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" class="repair"
																style="position: absolute; left: 313px; top: 66px; z-index: 0;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/back-fender-right.png"
																	src_ori="/images/carimage/sedan/back-fender-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" class="repair"
																style="position: absolute; left: 396px; top: 64px; z-index: 5;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/trunk.png"
																	src_ori="/images/carimage/sedan/trunk.png">
															</div>
														</div>
													</section>
													<section class="ext" data-v-6b3a86a8="">
														<div class="base_frame" data-v-6b3a86a8="">
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 117px; top: 209px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/front-panel.png"
																	src_ori="/images/carimage/sedan/front-panel.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 138px; top: 211px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/radiator.png"
																	src_ori="/images/carimage/sedan/radiator.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 158px; top: 233px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/crossmember.png"
																	src_ori="/images/carimage/sedan/crossmember.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 188px; top: 174px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/dash-panel.png"
																	src_ori="/images/carimage/sedan/dash-panel.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 248px; top: 144px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/floor-panel.png"
																	src_ori="/images/carimage/sedan/floor-panel.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 361px; top: 33px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/packagetray.png"
																	src_ori="/images/carimage/sedan/packagetray.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 363px; top: 71px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/trunk-floor-panel.png"
																	src_ori="/images/carimage/sedan/trunk-floor-panel.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 384px; top: 23px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/rear-panel.png"
																	src_ori="/images/carimage/sedan/rear-panel.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 207px; top: 265px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/sidemember-front-left.png"
																	src_ori="/images/carimage/sedan/sidemember-front-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 174px; top: 222px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/inside-panel-left.png"
																	src_ori="/images/carimage/sedan/inside-panel-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 272px; top: 240px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/wheelhouse-front-left.png"
																	src_ori="/images/carimage/sedan/wheelhouse-front-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 320px; top: 115px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/a-pillar-left.png"
																	src_ori="/images/carimage/sedan/a-pillar-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 381px; top: 87px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/b-pillar-left.png"
																	src_ori="/images/carimage/sedan/b-pillar-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 419px; top: 58px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/quarter-panel-left.png"
																	src_ori="/images/carimage/sedan/quarter-panel-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 430px; top: 109px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/wheelhouse-back-left.png"
																	src_ori="/images/carimage/sedan/wheelhouse-back-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 450px; top: 84px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/sidemember-back-left.png"
																	src_ori="/images/carimage/sedan/sidemember-back-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 347px; top: 159px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/sidesill-left.png"
																	src_ori="/images/carimage/sedan/sidesill-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 120px; top: 214px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/sidemember-front-right.png"
																	src_ori="/images/carimage/sedan/sidemember-front-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 129px; top: 188px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/inside-panel-right.png"
																	src_ori="/images/carimage/sedan/inside-panel-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 164px; top: 180px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/wheelhouse-front-right.png"
																	src_ori="/images/carimage/sedan/wheelhouse-front-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 190px; top: 64px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/a-pillar-right.png"
																	src_ori="/images/carimage/sedan/a-pillar-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 260px; top: 50px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/b-pillar-right.png"
																	src_ori="/images/carimage/sedan/b-pillar-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 316px; top: 23px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/quarter-panel-right.png"
																	src_ori="/images/carimage/sedan/quarter-panel-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 323px; top: 59px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/wheelhouse-back-right.png"
																	src_ori="/images/carimage/sedan/wheelhouse-back-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 337px; top: 41px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/sidemember-back-right.png"
																	src_ori="/images/carimage/sedan/sidemember-back-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 238px; top: 124px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/sidesill-right.png"
																	src_ori="/images/carimage/sedan/sidesill-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="position: absolute; left: 0px; top: 0px; z-index: 1;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/frame.png"
																	src_ori="/images/carimage/sedan/frame.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 117px; top: 209px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/front-panel.png"
																	src_ori="/images/carimage/sedan/front-panel.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 138px; top: 211px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/radiator.png"
																	src_ori="/images/carimage/sedan/radiator.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 158px; top: 233px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/crossmember.png"
																	src_ori="/images/carimage/sedan/crossmember.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 188px; top: 174px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/dash-panel.png"
																	src_ori="/images/carimage/sedan/dash-panel.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 248px; top: 144px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/floor-panel.png"
																	src_ori="/images/carimage/sedan/floor-panel.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 361px; top: 33px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/packagetray.png"
																	src_ori="/images/carimage/sedan/packagetray.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 363px; top: 71px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/trunk-floor-panel.png"
																	src_ori="/images/carimage/sedan/trunk-floor-panel.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 384px; top: 23px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/rear-panel.png"
																	src_ori="/images/carimage/sedan/rear-panel.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 207px; top: 265px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/sidemember-front-left.png"
																	src_ori="/images/carimage/sedan/sidemember-front-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 174px; top: 222px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/inside-panel-left.png"
																	src_ori="/images/carimage/sedan/inside-panel-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 272px; top: 240px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/wheelhouse-front-left.png"
																	src_ori="/images/carimage/sedan/wheelhouse-front-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 320px; top: 115px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/a-pillar-left.png"
																	src_ori="/images/carimage/sedan/a-pillar-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 381px; top: 87px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/b-pillar-left.png"
																	src_ori="/images/carimage/sedan/b-pillar-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 419px; top: 58px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/quarter-panel-left.png"
																	src_ori="/images/carimage/sedan/quarter-panel-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 430px; top: 109px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/wheelhouse-back-left.png"
																	src_ori="/images/carimage/sedan/wheelhouse-back-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 450px; top: 84px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/sidemember-back-left.png"
																	src_ori="/images/carimage/sedan/sidemember-back-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 347px; top: 159px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/sidesill-left.png"
																	src_ori="/images/carimage/sedan/sidesill-left.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 120px; top: 214px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/sidemember-front-right.png"
																	src_ori="/images/carimage/sedan/sidemember-front-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 129px; top: 188px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/inside-panel-right.png"
																	src_ori="/images/carimage/sedan/inside-panel-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 164px; top: 180px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/wheelhouse-front-right.png"
																	src_ori="/images/carimage/sedan/wheelhouse-front-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 190px; top: 64px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/a-pillar-right.png"
																	src_ori="/images/carimage/sedan/a-pillar-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 260px; top: 50px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/b-pillar-right.png"
																	src_ori="/images/carimage/sedan/b-pillar-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 316px; top: 23px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/quarter-panel-right.png"
																	src_ori="/images/carimage/sedan/quarter-panel-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 323px; top: 59px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/wheelhouse-back-right.png"
																	src_ori="/images/carimage/sedan/wheelhouse-back-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 337px; top: 41px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/sidemember-back-right.png"
																	src_ori="/images/carimage/sedan/sidemember-back-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 238px; top: 124px; z-index: 10;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/sidesill-right.png"
																	src_ori="/images/carimage/sedan/sidesill-right.png">
															</div>
															<div data-v-6b3a86a8="" status="1" status_fix="1"
																class="repair"
																style="opacity: 0; position: absolute; left: 0px; top: 0px; z-index: 1;">
																<img data-v-6b3a86a8=""
																	src="/images/carimage/sedan/frame.png"
																	src_ori="/images/carimage/sedan/frame.png">
															</div>
														</div>
													</section>
												</div>
											</div>
											<h3 class="infoHead3 mT40" data-v-59a16f56="">K Car는
												고객님의 안전이, 그 무엇보다 중요합니다.</h3>
										<li id="menu2" data-menu-section="2" data-v-59a16f56=""><div
												class="flexSB pT100 mB32" data-v-59a16f56="">
												<h2 class="infoHead2 mB0" data-v-59a16f56="">
													K Car 차량 정보 <span data-v-59a16f56="">놓치기 쉬운 정보도,
														세심하게 알려드립니다.</span>
												</h2>
											</div>
											<div class="carCard" data-v-59a16f56="">
												<strong class="carNum" data-v-59a16f56="">${car.c_num }</strong>
												<p data-v-59a16f56="" class="carName">${car.cb_brand }
													${car.cb_m_model } ${car.c_fuel }</p>
											</div>
											<div class="flexSB mT40 mB20" data-v-59a16f56="">
												<h3 class="infoHead3 mB0" data-v-59a16f56="">차량정보</h3>
												<span class="rightDesc" data-v-59a16f56="">제시신고번호 제
													2022036812호</span>
											</div>
											<ul class="infoSummary" data-v-59a16f56="">
												<li data-v-59a16f56=""><span data-v-59a16f56="">주행거리</span>
													<span data-v-59a16f56="">${car.c_distance }km</span></li>
												<li data-v-59a16f56=""><span data-v-59a16f56="">연식</span>
													<span data-v-59a16f56="">${car.c_year }</span></li>
												<li data-v-59a16f56=""><span data-v-59a16f56="">연료</span>
													<span data-v-59a16f56="">${car.c_fuel }</span></li>
												<li data-v-59a16f56=""><span data-v-59a16f56="">변속기</span>
													<span data-v-59a16f56="">${car.c_change }</span></li>
												<li data-v-59a16f56=""><span data-v-59a16f56="">인승</span>
													<span data-v-59a16f56="">${car.c_seat }</span></li>
												<li data-v-59a16f56=""><span data-v-59a16f56="">차종</span>
													<span data-v-59a16f56="">${car.c_model }</span></li>
												<li data-v-59a16f56=""><span data-v-59a16f56="">색상</span>
													<span data-v-59a16f56="">${car.c_color }</span></li>
											</ul></li>
										<li id="menu4" data-menu-section="4" data-v-59a16f56=""><h2
												class="infoHead2 pT100" data-v-59a16f56="">
												편안하게 타실 수 있도록, <span data-v-59a16f56="">옵션까지 한눈에
													보여드립니다.</span>
											</h2>
											<div class="carOptions" data-v-59a16f56="">
												<ul class="iconLists" data-v-59a16f56="">
													<c:if test="${carOption.c_o_sonRoof != null }">
														<li data-v-59a16f56=""><i data-v-59a16f56=""
														class="icon-detail-option-02" ></i> <span class="opText"
														data-v-59a16f56="">선루프</span></li>
													</c:if>
													<c:if test="${carOption.c_o_hiPass != null }">
														<li data-v-59a16f56=""><i data-v-59a16f56=""
														class="icon-detail-option-11"></i> <span class="opText"
														data-v-59a16f56="">하이패스</span></li>
													</c:if>
													<c:if test="${carOption.c_o_backSensor != null }">
														<li data-v-59a16f56=""><i data-v-59a16f56=""
														class="icon-detail-option-08"></i> <span class="opText"
														data-v-59a16f56="">후측방 경보시스템</span></li>
													</c:if>
													<c:if test="${carOption.c_o_camera != null }">
														<li data-v-59a16f56=""><i data-v-59a16f56=""
														class="icon-detail-option-08"></i> <span class="opText"
														data-v-59a16f56="">후측방 카메라</span></li>
													</c:if>
													<c:if test="${carOption.c_o_navigation != null }">
														<li data-v-59a16f56=""><i data-v-59a16f56=""
														class="icon-detail-option-07"></i> <span class="opText"
														data-v-59a16f56="">네비게이션</span></li>
													</c:if>
													<c:if test="${carOption.c_o_handleHot != null }">
														<li data-v-59a16f56=""><i data-v-59a16f56=""
														class="icon-detail-option-04"></i> <span class="opText"
														data-v-59a16f56="">열선시트</span></li>
													</c:if>
													<c:if test="${carOption.c_o_airback != null }">
														<li data-v-59a16f56=""><i data-v-59a16f56=""
														class="icon-detail-option-03"></i> <span class="opText"
														data-v-59a16f56="">에어백</span></li>
													</c:if>
													<c:if test="${carOption.c_o_smartKey != null }">
														<li data-v-59a16f56=""><i data-v-59a16f56=""
														class="icon-detail-option-06"></i> <span class="opText"
														data-v-59a16f56="">스마트키</span></li>
													</c:if>
													<c:if test="${carOption.c_o_blackBox != null }">
														<li data-v-59a16f56=""><i data-v-59a16f56=""
														class="icon-detail-option-17"></i> <span class="opText"
														data-v-59a16f56="">블랙박스</span></li>
													</c:if>
												</ul>
											</div>
										</li>
									</ul>
									<div class="warrantySection el-row" data-v-59a16f56="">
										<h2 class="infoHead2 mT100" data-v-59a16f56="">
											최대 365일 <span data-v-59a16f56="">K Car Warranty로 대비하자!</span>
										</h2>
										<h3 class="infoHead3 mB64" data-v-59a16f56="">
											<span data-v-59a16f56="">K Car Warranty로 수리비 걱정 끝!</span> <br
												data-v-59a16f56=""> <span class="pointC"
												data-v-59a16f56="">엔진·변속기, 제동장치 일반부품까지 보증합니다.</span>
										</h3>
										<ul class="progressbarLists" data-v-59a16f56="">
											<li data-v-59a16f56=""><div class="pbLabel"
													data-v-59a16f56="">KW3(90일)</div>
												<div class="progressbar" data-v-59a16f56="">
													<span class="value" data-v-59a16f56=""></span>
												</div>
												<div class="km" data-v-59a16f56="">5,000km 보증</div></li>
											<li data-v-59a16f56=""><div class="pbLabel"
													data-v-59a16f56="">
													KW6(180일) <span class="tagLabel redC" data-v-59a16f56="">추천</span>
												</div>
												<div class="progressbar" data-v-59a16f56="">
													<span class="value" data-v-59a16f56=""></span>
												</div>
												<div class="km" data-v-59a16f56="">10,000km 보증</div></li>
											<li data-v-59a16f56=""><div class="pbLabel"
													data-v-59a16f56="">KW12(365일)</div>
												<div class="progressbar" data-v-59a16f56="">
													<span class="value" data-v-59a16f56=""></span>
												</div>
												<div class="km" data-v-59a16f56="">20,000km 보증</div></li>
										</ul>
										<ul class="panelLists mT24" data-v-59a16f56="">
											<li data-v-59a16f56=""><strong class="tit"
												data-v-59a16f56="">폭 넓은 보증범위</strong>
												<p class="desc" data-v-59a16f56="">엔진, 변속기는 물론 일반부품 대부분을
													보증해드려요.</p></li>
											<li data-v-59a16f56=""><strong class="tit"
												data-v-59a16f56="">쾌적한 정비 서비스</strong>
												<p class="desc" data-v-59a16f56="">GS엠비즈 오토오아시스 제휴지점 및 K
													Car 협력 정비소를 통해 편리하게 정비 받으세요.</p></li>
											<li data-v-59a16f56=""><strong class="tit"
												data-v-59a16f56="">부담 없는 가입비</strong>
												<p class="desc" data-v-59a16f56="">업계 최저 수준의 가입비와 폭 넓은
													보증 혜택을 누려보세요.</p></li>
											<li data-v-59a16f56=""><strong class="tit"
												data-v-59a16f56="">든든한 보증한도</strong>
												<p class="desc" data-v-59a16f56="">최대 1,500만원까지 보증해 드리니까
													큰 고장에도 든든해요.</p></li>
										</ul>
										<div class="searchTrigger box Large DarkColor el-row"
											data-v-59a16f56="">
											<button class="button lineApply">K Car Warranty 자세히
												보기</button>
										</div>
									</div>
									<div class="faqWrap mT100" data-v-59a16f56="">
										<div class="infoTitleWrap infoTitleWrap2 mb40">
											<h2 class="infoTitle">자주 묻는 질문</h2>
											<a class="moreBtn el-link el-link--default is-underline"
												href="/csQstn"> <!----> <span class="el-link--inner">
													전체보기<i class="el-icon-arrow-right"></i>
											</span> <!---->
											</a>
										</div>
										<div role="tablist" aria-multiselectable="true"
											class="el-collapse faqList">

											<c:forEach var="question" items="${questionList }"
												varStatus="status">
												<div class="el-collapse-item">
													<div role="tab" aria-controls="el-collapse-content-603"
														onclick="question('${status.index}')"
														aria-describedby="el-collapse-content-603">
														<div role="button" id="el-collapse-head-603" tabindex="0"
															class="el-collapse-item__header">
															<i class="el-icon-Q"></i> <span>${question.q_title }</span><i
																class="el-collapse-item__arrow el-icon-arrow-right"></i>
														</div>
													</div>
													<div role="tabpanel" aria-hidden="true"
														aria-labelledby="el-collapse-head-603"
														id="el-collapse-content-603"
														class="el-collapse-item__wrap" style="display: none;">
														<div class="el-collapse-item__content">
															<div>
																<i class="el-icon-A"></i>
																<div class="faqA">${question.q_content }</div>
															</div>
														</div>
													</div>
												</div>
											</c:forEach>

										</div>
									</div>
									<!---->
									<!---->
									<div class="flexSB mB32 mT100" data-v-59a16f56="">
										<h2 class="infoHead2 mB0" data-v-59a16f56="">
											<span data-v-59a16f56="">솔직한 구매후기로 </span>한 번 더 안심!
										</h2>
										<button type="button"
											class="el-button rightDesc viewAll el-button--text"
											data-v-59a16f56="">
											<!---->
											<!---->
											<span> 전체보기 </span>
										</button>
									</div>
									<div data-v-59a16f56="">
										<div
											class="productWrap swiper-container swiper-container-initialized swiper-container-horizontal"
											data-v-59a16f56="">
											<div class="swiper-wrapper"
												style="transform: translate3d(0px, 0px, 0px);">
												<c:forEach var="buyReview" items="${reviewList }">
													<div class="swiper-slide roundType swiper-slide-active"
														style="width: 240px; margin-right: 40px;"
														onclick="reviewModalOpen('${buyReview.cb_brand } ${buyReview.cb_m_model }', '${buyReview.m_r_title }', '${buyReview.m_r_review }', '${buyReview.m_r_registDate }', '${buyReview.m_r_photo}')">
														<a class="el-link el-link--default is-underline"> <!---->
															<span class="el-link--inner"><div class="prdImg">
																	<img
																		src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/REVIEW/20227/내차사기 03_유동욱_올뉴말리부_0725tgoH62XoIbfjqv1cyNp2.jpg"
																		alt="이미지">
																</div> <span class="postLabel">${buyReview.cb_brand }&nbsp;${buyReview.cb_m_model }</span>
																<div class="postWrap">
																	<div class="postTit">${buyReview.m_r_title }</div>
																	<p class="postDesc">${buyReview.m_r_review }</p>
																	<span class="postDate">${buyReview.m_r_registDate }</span>
																</div></span> <!---->
														</a>
													</div>
												</c:forEach>
											</div>
											<div class="swiperPnBox">
												<div class="swiperPagination"></div>
											</div>
											<div class="navigation">
												<div class="swiper-button-next" tabindex="0" role="button"
													aria-label="Next slide" aria-disabled="false"></div>
												<div class="swiper-button-prev swiper-button-disabled"
													tabindex="0" role="button" aria-label="Previous slide"
													aria-disabled="true"></div>
											</div>
											<span class="swiper-notification" aria-live="assertive"
												aria-atomic="true"></span>
										</div>
									</div>
									<div class="bannerArea mT20" data-v-59a16f56="">
										<div data-v-59a16f56="">
											<a
												href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_kcar2021_31&amp;adgroupid=adg_kcaradmin_20220607_7&amp;adid=adi_kcaradmin_20220607_11"><img
												src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/SLOT/banner-copy-3@2xnFqTpLIgRdtm5xeR3BCU.png"></a>
										</div>
									</div>
									<h2 class="infoHead2 mT100" data-v-59a16f56="">
										이 차량은 ${car.st_name }<span data-v-59a16f56="">에 있습니다.</span>
									</h2>
									<div class="bannerWrap mT40" data-v-59a16f56="">
										<div class="bannerArea" data-v-59a16f56="">
											<div data-v-59a16f56="">
												<a
													href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_kcar2021_33&amp;adgroupid=adg_kcaradmin_20220607_9&amp;adid=adi_kcaradmin_20220607_13"><img
													src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/SLOT/banner-title-row-1-copy@2xKEXxmggAvnhikFa3nGGV.png"></a>
											</div>
										</div>
									</div>
									<h2 data-v-59a16f56="" class="infoHead2 mT100">
										케이카 영상 <span data-v-59a16f56="">클립</span>
									</h2>
									<div data-v-59a16f56="" class="videoArea">
										<div data-v-59a16f56="">
											<iframe data-v-59a16f56="" width="100%" height="100%"
												src="https://www.youtube.com/embed/UZs758DjFgI"
												frameborder="0"
												allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
												allowfullscreen="allowfullscreen"></iframe>
										</div>
										<div data-v-59a16f56="">
											<iframe data-v-59a16f56="" width="100%" height="100%"
												src="https://www.youtube.com/embed/L00es0fmXw4"
												frameborder="0"
												allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
												allowfullscreen="allowfullscreen"></iframe>
										</div>
									</div>
									<div class="bannerArea mT20" data-v-59a16f56="">
										<div data-v-59a16f56="">
											<a
												href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_kcar2021_34&amp;adgroupid=adg_kcaradmin_20220607_10&amp;adid=adi_kcaradmin_20220607_14"><img
												src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/SLOT/banner-copy@3xPFmRmrM8XQPgkaJnCWdK.png"></a>
										</div>
									</div>
								</div>
								<form action="carOrderBuy" method="post" id="buyF">
									<input type="hidden" value="${car.c_num }" name="c_num">
									<div class="carInfoRight" data-v-59a16f56="">
										<div class="stikyWrap" data-v-59a16f56="">
											<div class="sumSummaryWrap" data-v-59a16f56="">
												<h3 data-v-59a16f56="" class="carName">
													${car.cb_brand } ${car.cb_m_model } ${car.c_fuel }<br
														data-v-59a16f56="">
												</h3>
												<ul class="dotLists" data-v-59a16f56="">
													<li data-v-59a16f56="">${car.c_year }</li>
													<li data-v-59a16f56="">${car.c_distance }km</li>
													<li data-v-59a16f56="">${car.c_fuel }</li>
												</ul>
												<div role="tablist" aria-multiselectable="true"
													class="el-collapse accordionMenu" data-v-59a16f56="">
													<div class="el-collapse-item is-active" data-v-59a16f56="">
														<div role="tab" aria-expanded="true"
															aria-controls="el-collapse-content-5474"
															aria-describedby="el-collapse-content-5474">
															<div role="button" id="el-collapse-head-7034"
																tabindex="0" class="el-collapse-item__header is-active">
																고객님의 총 구매 예상 비용 <i
																	class="el-collapse-item__arrow el-icon-arrow-right is-active"></i>
															</div>
														</div>
														<div role="tabpanel"
															aria-labelledby="el-collapse-head-7034"
															id="el-collapse-content-7034"
															class="el-collapse-item__wrap">
															<div class="el-collapse-item__content">
																<ul class="costDetailLists" data-v-59a16f56="">
																	<li data-v-59a16f56=""><span data-v-59a16f56="">차량가</span>
																		<span data-v-59a16f56="">${carPriceInfo.carPrice }
																			원</span></li>
																	<li data-v-59a16f56=""><span data-v-59a16f56="">이전등록비</span>
																		<span data-v-59a16f56="">${carPriceInfo.registrationPrice }
																			원</span></li>
																	<li data-v-59a16f56=""><span data-v-59a16f56="">관리비용</span>
																		<span data-v-59a16f56="">${carPriceInfo.managePrice }
																			원</span></li>
																	<li data-v-59a16f56=""><span data-v-59a16f56="">등록신청대행수수료</span>
																		<span data-v-59a16f56="">${carPriceInfo.registPrice }
																			원</span></li>
																	<li data-v-59a16f56=""><span data-v-59a16f56="">KW보증비<span
																			class="pointN" data-v-59a16f56="">(KW6 선택 시
																				예상)*</span></span> <span data-v-59a16f56="">${carPriceInfo.kw }
																			원</span></li>
																	<li data-v-59a16f56=""><span data-v-59a16f56="">배송비<span
																			class="pointC" data-v-59a16f56="">*</span></span> <span
																		data-v-59a16f56="">배송 지역에 따라 달라집니다.</span></li>
																</ul>
															</div>
														</div>
													</div>
												</div>
												<div class="sumArea" data-v-59a16f56="">
													<span data-v-59a16f56="">합계</span> <strong
														data-v-59a16f56="">${carPriceInfo.sum }원</strong>
												</div>
												<div class="searchTrigger box pT8 el-row" data-v-59a16f56="">
													<button type="submit" id="mkt_homeServiceBuyId"
														class="button apply" data-v-59a16f56="">홈서비스 바로구매</button>
												</div>
												<div class="searchSth" data-v-59a16f56="">
													<button type="button" id="mkt_vsoutLmtnId"
														class="el-button el-button--text" data-v-59a16f56="">
														<!---->
														<!---->
														<span> 대출한도조회 </span>
													</button>
													<button type="button" class="el-button el-button--text"
														data-v-59a16f56="">
														<!---->
														<!---->
														<span> 자동차보험료조회 </span>
													</button>
												</div>
											</div>
											<div class="bannerArea mT20" data-v-59a16f56="">
												<div data-v-59a16f56="">
													<a
														href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_kcar2021_29&amp;adgroupid=adg_kcaradmin_20220607_5&amp;adid=adi_kcaradmin_20220607_9"><img
														src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/SLOT/banner-title-row@2x395GfPyDRHNW1OguKyG3.png"></a>
												</div>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="popSticker PopStickerWrap" data-v-59a16f56=""
							onclick="location.href='/homeSvc'">
							<a><p class="closeBtn">닫기</p> <span>거리가 멀어 고민될 땐?</span>
								<p>
									온라인 구매 <br>내차사기 홈서비스
								</p></a>
						</div>
						<div data-v-59a16f56="">
							<div>
								<span id="modalMenuBack"></span>
								<div class="el-dialog__wrapper popup popCenter wid480 heigAuto" id="modalMenu"
									style="z-index: 2010; display: none;">
								
									<div role="dialog" aria-modal="true" aria-label="공유하기"
										class="el-dialog" style="margin-top: 15vh;">
										<div class="el-dialog__header">
											<span class="el-dialog__title">공유하기</span>
											<button type="button" aria-label="Close"
												class="el-dialog__headerbtn" onclick="shareModalClose()">
												<i class="el-dialog__close el-icon el-icon-close"></i>
											</button>
										</div>
										<div class="el-dialog__body">
											<div class="popContent ">
												<div class="sharePopup">
													<div class="shareBtn">
														<ul>
															<li><a class="el-link el-link--default is-underline" id="shareKakao" ><!-- onclick="shareKakao()" -->
																	<!----> <span class="el-link--inner"><span
																		class="bgYellow shareIco"><img
																			src="/images/carinfodetail/ico-kakao.svg" alt="아이콘"></span>
																		<span class="shareT">카카오톡</span></span> <!---->
															</a></li>
															<li><a class="el-link el-link--default is-underline" onclick="modalMailOpen()">
																	<!----> <span class="el-link--inner"><span
																		class="bgGray shareIco"><img
																			src="https://www.kcar.com/images/carinfodetail/ico-mail.svg" alt="아이콘"></span>
																		<span class="shareT">메일</span></span> <!---->
															</a></li>
														</ul>
													</div>
													<div class="btnInputArea">
														<div
															class="input-with-select el-input el-input-group el-input-group--append">
															<input type="text" autocomplete="off" id="siteVal"
																value="http://localhost/detail/carInfo?c_num=${car.c_num }" readonly="readonly"
																class="el-input__inner">
															<input type="text"style="display:none;" value="" id="hiddenFocus">  
															<div class="el-input-group__append">
																<button type="button" class="el-button" onclick="copySite()">
																	<span>복사</span>
																</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!---->
										<!---->
									</div>
								</div>

								<div>
									<div>
										<div class="el-dialog__wrapper popup fullPopup active" id="modalMail"
											style="z-index: 2010; display: none;">
											<div role="dialog" aria-modal="true" aria-label="메일 보내기"
												class="el-dialog" style="margin-top: 15vh;">
												<div class="el-dialog__header">
													<span class="el-dialog__title">메일 보내기</span>
													<button type="button" aria-label="Close" onclick="shareModalClose()"
														class="el-dialog__headerbtn">
														<i class="el-dialog__close el-icon el-icon-close"></i>
													</button>
												</div>
												<div class="el-dialog__body">
													<div data-v-6538404c="" class="popContent el-scrollbar">
														<div class="el-scrollbar__wrap"
															style="margin-bottom: -17px; margin-right: -17px;">
															<div class="el-scrollbar__view">
																<div data-v-6538404c="">
																	<h3 data-v-6538404c="" class="popupTit">받는사람</h3>
																	<div data-v-6538404c="" class="mT20">
																		<form data-v-6538404c="" class="el-form">
																			<div data-v-6538404c="" class="formPart1">
																				<div data-v-6538404c=""
																					class="el-form-item formPartItem">
																					<!---->
																					<div class="el-form-item__content">
																						<div data-v-6538404c="" class="titLabel">이름
																						</div>
																						<div data-v-6538404c=""
																							class="el-input el-input--suffix">
																							<!---->
																							<input type="text" autocomplete="off"
																								placeholder="이름" class="el-input__inner" id="name">
																							<!---->
																							<!---->
																							<!---->
																							<!---->
																						</div>
																						<!---->
																					</div>
																				</div>
																				<div data-v-6538404c=""
																					class="el-form-item formPartItem">
																					<!---->
																					<div class="el-form-item__content">
																						<div data-v-6538404c="" class="titLabel">
																							이메일</div>
																						<div data-v-6538404c="" class="emailRow el-row">
																							<div data-v-6538404c=""
																								class="email el-input el-input--suffix">
																								<!---->
																								<input type="text" autocomplete="off"
																									placeholder="이메일"
																									class="el-input__inner" id="email1">
																								<!---->
																								<!---->
																								<!---->
																								<!---->
																							</div>
																							<span data-v-6538404c="" class="at">@</span>
																							<div data-v-6538404c=""
																								class="emailAddr el-input">
																								<!---->
																								<input type="text" autocomplete="off"
																									placeholder="ex.com"
																									class="el-input__inner" id="email2">
																								<!---->
																								<!---->
																								<!---->
																								<!---->
																							</div>
																							<div data-v-6538404c=""
																								class="el-select emailSelect">
																								<!---->
																								<div class="el-input el-input--suffix">
																									<!---->
																									<input type="text" readonly="readonly"
																										autocomplete="off" placeholder="선택"
																										class="el-input__inner" id="alignment" value onclick="alignmentClick()">
																									<!---->
																									<span class="el-input__suffix"><span
																										class="el-input__suffix-inner"><i
																											class="el-select__caret el-input__icon el-icon-arrow-up"></i>
																										<!---->
																											<!---->
																											<!---->
																											<!---->
																											<!----></span>
																									<!----></span>
																									<!---->
																									<!---->
																								</div>
																								<div class="el-select-dropdown el-popper"
																									style="display: none; min-width: 147.875px;">
																									<div class="el-scrollbar" style="">
																										<div
																											class="el-select-dropdown__wrap el-scrollbar__wrap"
																											style="margin-bottom: -17px; margin-right: -17px;">
																											<ul
																												class="el-scrollbar__view el-select-dropdown__list" id="alignmentMethod">
																												<!---->
																												<li data-v-6538404c=""
																													class="el-select-dropdown__item selected" onclick="email()"><span>직접입력</span></li>
																												<li data-v-6538404c=""
																													class="el-select-dropdown__item" onclick="email('naver.com')"><span>naver.com</span></li>
																												<li data-v-6538404c=""
																													class="el-select-dropdown__item" onclick="email('gmail.com')"><span>gmail.com</span></li>
																												<li data-v-6538404c=""
																													class="el-select-dropdown__item" onclick="email('hanmail.net')"><span>hanmail.net</span></li>
																												<li data-v-6538404c=""
																													class="el-select-dropdown__item" onclick="email('nate.com')"><span>nate.com</span></li>
																												<li data-v-6538404c=""
																													class="el-select-dropdown__item" onclick="email('daum.net')"><span>daum.net</span></li>
																												<li data-v-6538404c=""
																													class="el-select-dropdown__item" onclick="email('kakao.com')"><span>kakao.com</span></li>
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
																						<!---->
																					</div>
																				</div>
																			</div>
																			<div data-v-6538404c="" class="el-form-item mT20">
																				<!---->
																				<div class="el-form-item__content">
																					<div data-v-6538404c="" class="titLabel">내용</div>
																					<div data-v-6538404c="" class="textCont">
																						<div data-v-6538404c="" class="el-textarea">
																							<textarea autocomplete="off" rows="2"
																								placeholder="내용을 입력해주세요" maxlength="2000"
																								class="el-textarea__inner" id="emailContent"
																								style="resize: none; min-height: 194px; height: 194px;" onkeyup="countWord()"></textarea>
																							<!---->
																						</div>
																						<p data-v-6538404c="" class="counter" id="counter">
																							(0/<span data-v-6538404c="">2,000</span>자)
																						</p>
																					</div>
																					<!---->
																				</div>
																			</div>
																		</form>
																	</div>
																	<div data-v-6538404c="" class="aboutProd mt40">
																		<div data-v-6538404c="" class="carVisual">
																			<p data-v-6538404c="" class="carVisualImg">
																				<img data-v-6538404c=""
																					src="${car.c_photo }"
																					onerror="this.src='/images/common/bg_no_Img_sm.png'"
																					class="carVisual">
																			</p>
																		</div>
																		<div data-v-6538404c="">
																			<div data-v-6538404c="" class="badges"></div>
																			<p data-v-6538404c="" class="carName">${car.cb_brand } ${car.cb_m_model } ${car.c_fuel }</p>
																			<ul data-v-6538404c="" class="options">
																				<li data-v-6538404c="">${car.c_year } <span
																					data-v-6538404c="" class="dot">${car.c_distance }km </span><span
																					data-v-6538404c="" class="dot">${car.st_name } <span
																						data-v-6538404c="" class="dot">${car.c_fuel }</span></span></li>
																			</ul>
																		</div>
																		<div data-v-6538404c="" class="price">
																			<strong data-v-6538404c=""> ${car.c_price}만원 </strong>
																			<p data-v-6538404c="" class="dis">
																				36개월 할부 <span data-v-6538404c="" class="pointColor">월
																					${carPriceInfo.result2 }만원</span>
																			</p>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="el-scrollbar__bar is-horizontal">
															<div class="el-scrollbar__thumb"
																style="transform: translateX(0%);"></div>
														</div>
														<div class="el-scrollbar__bar is-vertical">
															<div class="el-scrollbar__thumb"
																style="height: 64.8058%; transform: translateY(0%);"></div>
														</div>
													</div>
												</div>
												<div class="el-dialog__footer">
													<span class="dialog-footer"><div
															class="footerBtnWrap">
															<div class="searchTrigger box multBtn el-row">
																<button class="button chosenApply" onclick="shareModalOpen()">취소</button>
																<button class="button apply" onclick="emailSend()">보내기</button>
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
												<button type="button" aria-label="Close" onclick="shareModalClose()"
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
						<div data-v-59a16f56="">
							<div>
								<div class="el-dialog__wrapper popup popCenter hauto"
									style="display: none;">
									<div role="dialog" aria-modal="true" aria-label="차량 기본 정보"
										class="el-dialog" style="margin-top: 15vh;">
										<div class="el-dialog__header">
											<span class="el-dialog__title">차량 기본 정보</span>
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
						</div>
						<!-- 내차사기 고객후기 모달창 -->
						<div>
							<span id="reviewModalBack"></span>
							<div class="el-dialog__wrapper popup popCenter" id="reviewModal"
								style="z-index: 2010; display: none;">
								<div role="dialog" aria-modal="true" aria-label="내차사기 고객후기"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">내차사기 고객후기</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn" onclick="reviewModalClose()">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<div class="el-dialog__body">
										<div class="popContent el-scrollbar">
											<div class="el-scrollbar__wrap"
												style="margin-bottom: -21px; margin-right: -21px;">
												<div class="el-scrollbar__view">
													<div class="carSellPopup">
														<h5 style="word-break: break-all;" id="modalTitle"></h5>
														<span id="modalModelNDate"> </span>
														<p style="word-break: break-all;" id="modalContent"></p>
														<div class="carSellPopupImg">
															<img id="modalPhoto" src="" alt="이미지1">
														</div>
														<!---->
														<!---->
													</div>
												</div>
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
									</div>
									<!---->
								</div>
							</div>
						</div>
						<!-- 모달창 끝 -->
						<div class="el-dialog__wrapper popup fullPopup"
							style="display: none;" data-v-59a16f56="">
							<div role="dialog" aria-modal="true" aria-label="차량정보 인쇄하기"
								class="el-dialog" style="margin-top: 15vh;">
								<div class="el-dialog__header">
									<span class="el-dialog__title">차량정보 인쇄하기</span>
									<button type="button" aria-label="Close"
										class="el-dialog__headerbtn">
										<i class="el-dialog__close el-icon el-icon-close"></i>
									</button>
								</div>
								<!---->
								<div class="el-dialog__footer">
									<span class="dialog-footer"><div class="footerBtnWrap">
											<div class="searchTrigger box multBtn el-row">
												<button class="button apply">닫기</button>
											</div>
										</div></span>
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
<script src="/js/question.js"></script>
<script src="/js/reviewModal.js"></script>
<script src="/js/installment.js"></script>
<script src="/js/carInfo.js"></script>
</body>
</html>