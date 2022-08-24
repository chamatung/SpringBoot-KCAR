<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html lang="ko" class="chrome">
<head>
<title>주문내역 확인</title>
<%@include file="carOrderDetail_style.jsp" %>
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
				<%@include file="/WEB-INF/default/header.jsp" %>
				<!-- header end -->
				<div class="homeServiceWrap contWrap">
					<div class="homeCont">
					<form action="payment" method="post" id="paymentMethodF">
						<input type="hidden" name="c_num" value="${car.c_num }">
						<div class="contentsBox el-row">
							<div>
								<div class="contStage1">
									<div class="tit">
										<strong>주문내역</strong>
										<p>이제 명의자 정보와 배송 정보를 확인해주세요.</p>
									</div>
									<div class="formWrap">
										<div class="sectionHeader"></div>
											<div class="el-form-item nameWrap">
												<!---->
												<div class="el-form-item__content">
													<div class="titLabel">명의자 이름</div>
													<div class="flexbox">
														<div class="el-input is-disabled">
															<!---->
															<input type="text" readonly autocomplete="off"
																placeholder="이름 입력" maxlength="20" name="m_name" value="${member.m_name }"
																class="el-input__inner">
															<!---->
															<!---->
															<!---->
															<!---->
														</div>
													</div>
												</div>
											</div>
											<div class="el-form-item">
												<!---->
												<div class="el-form-item__content">
													<div class="titLabel">명의자 휴대폰번호</div>
													<div class="flexbox">
														<div class="el-input is-disabled el-input--suffix">
															<!---->
															<input type="text" readonly autocomplete="off"
																placeholder="휴대폰번호 입력" name="m_tel" value="${member.m_tel }"
																inputmode="numeric" maxlength="13"
																class="el-input__inner">
															<!---->
															<!---->
															<!---->
															<!---->
														</div>
													</div>
													<!---->
												</div>
											</div>
											<div class="el-form-item postWrap">
												<!---->
												<div class="el-form-item__content">
													<div class="titLabel">명의자 주민등록 주소지</div>
													<div class="flexbox">
														<div class="el-input is-disabled">
															<!---->
															<input type="text" readonly autocomplete="off"
																placeholder="우편번호 입력" class="el-input__inner" name="m_zipcode" value="${member.m_zipcode }">
															<!---->
															<!---->
															<!---->
															<!---->
														</div>
													</div>
													<div class="el-input is-disabled">
														<!---->
														<input type="text" readonly autocomplete="off"
															placeholder="주소 입력" class="el-input__inner" name="m_addr1" value="${member.m_addr1 }">
														<!---->
														<!---->
														<!---->
														<!---->
													</div>
													<div class="el-input is-disabled">
														<!---->
														<input type="text" autocomplete="off"
															placeholder="상세주소 입력" maxlength="80"
															class="el-input__inner" readonly name="m_addr2" value="${member.m_addr2 }">
														<!---->
														<!---->
														<!---->
														<!---->
													</div>
													<!---->
												</div>
											</div>
									</div>
									<!---->
									<!---->
									<!---->
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
									<div class="mT16">
										<ul class="guideTxt">
											<li>사정에 따라 배송일이 변경될 수 있습니다.</li>
											<li>배송비는 배송 지역에 따라 다릅니다.</li>
											<li>정확한 배송비는 결제 단계에서 확인하실 수 있습니다.</li>
											<li>오전 11시 이전에 차량 금액을 모두 납입하고 보험가입증명서를 제출할 경우 당일 출고 및
												배송이 가능합니다.</li>
										</ul>
									</div>
								</div>
								<div class="btmButton">
									<div class="searchTrigger box el-row">
										<button id="mkt_btnBuyer_100" type="submit" class="button apply">
											결제하기</button>
									</div>
								</div>
							</div>
						</div>
					</form>
						<div class="contentsBox contRight el-row">
							<div>
								<div class="el-row">
									<div class="carInfoRight">
										<div class="sumSummaryWrap">
											<div class="progressBarWrap">
												<h3>주문 신청</h3>
												<div role="progressbar" aria-valuenow="16" aria-valuemin="0"
													aria-valuemax="100"
													class="el-progress progressBar el-progress--line">
													<div class="el-progress-bar">
														<div class="el-progress-bar__outer" style="height: 8px;">
															<div class="el-progress-bar__inner" style="width: 100%;">
																<!---->
															</div>
														</div>
													</div>
													<div class="el-progress__text" style="font-size: 15.2px;">3/3</div>
												</div>
											</div>
											<div class="carImg">
												<img
													src="${car.c_photo }"
													alt="${car.cb_brand } ${car.cb_m_model } ${car.c_fuel }">
											</div>
											<h3 class="carName">${car.cb_brand } ${car.cb_m_model } ${car.c_fuel }</h3>
											<p class="subTit">${car.c_num }</p>
											<ul class="dotLists">
												<li>${car.c_year }</li>
												<li>${car.c_distance }km</li>
												<li>${car.c_fuel }</li>
											</ul>
											<div role="tablist" aria-multiselectable="true"
												class="el-collapse accordionMenu">
												<div class="el-collapse-item is-active">
													<div role="tab" aria-expanded="true"
														aria-controls="el-collapse-content-7279"
														aria-describedby="el-collapse-content-7279">
														<div role="button" id="el-collapse-head-7279" tabindex="0"
															class="el-collapse-item__header is-active">
															예상 결제 금액 <i
																class="el-collapse-item__arrow el-icon-arrow-right is-active"></i>
														</div>
													</div>
													<div role="tabpanel"
														aria-labelledby="el-collapse-head-7279"
														id="el-collapse-content-7279"
														class="el-collapse-item__wrap">
														<div class="el-collapse-item__content">
															<ul class="costDetailLists">
																<li><span>차량가</span> <span>${carPriceInfo.carPrice } 원</span></li>
																<li><span>이전등록비</span> <span>${carPriceInfo.registrationPrice } 원</span></li>
																<li><span>관리비용</span> <span>${carPriceInfo.managePrice } 원</span></li>
																<li><span>등록신청대행수수료</span> <span>${carPriceInfo.registPrice } 원</span></li>
																<li><span>K Car Warranty<span class="pointN"></span></span> <span>${carPriceInfo.kw } 원</span></li>
																<li><span>배송비<span class="pointC">*</span></span> <span>배송
																		지역에 따라 다름</span>
																<p class="darkTip" style="">배송비가 추가되었습니다.</p></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
											<div class="sumArea">
												<span>합계</span> <strong>${carPriceInfo.sum }원</strong>
											</div>
										</div>
										<div class="bannerArea mT20">
											<a href="/sc/HomeSvcMain" target="homeSvcMain"><div
													class="bannerTxt">
													<h3 class="tit">내차팔기 간편신청!</h3>
													<p class="desc">K Car 평가사가 무료 방문및 견적 드립니다.</p>
												</div> <img src="/images/carInfo/bg-banner-half.png" alt=""></a>
										</div>
									</div>
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
				<!-- footer start -->
				<%@include file="/WEB-INF/default/footer.jsp" %>
				<!-- footer end -->
			</div>
		</div>
	</div>
	<script>
/* 	clientID : 4rnpgkjox9
	clientPw : MwsfHHuAfhVZynzi4HcoMKNnf1BW7MJYZM4OZqNI */
	</script>
</body>
</html>