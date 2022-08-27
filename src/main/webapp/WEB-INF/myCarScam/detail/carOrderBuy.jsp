<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="ko" class="chrome">
<head>
<title>주문 신청</title>

<%@include file="carOrderBuy_style.jsp"%>
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
				<div class="homeServiceWrap contWrap">
					<div class="progressWrap">
						<div class="tit">
							<strong>결제를 도와드리겠습니다.</strong>
							<p>화면 아래에 표시된 순서에 따라 진행됩니다.</p>
						</div>
						<div>
							<div data-v-64faeeff="" class="el-row">
								<div data-v-64faeeff="" class="steps">
									<ul data-v-64faeeff="">
										<li data-v-64faeeff="" class="stepItem current"><p
												data-v-64faeeff="" class="label">주문 신청</p></li>
										<li data-v-64faeeff="" class="stepItem"><p
												data-v-64faeeff="" class="label mL8">주문 내역 확인</p></li>
										<li data-v-64faeeff="" class="stepItem"><p
												data-v-64faeeff="" class="label mL8">결제</p></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="homeCont">
						<div class="contentsBox el-row">
							<div>
								<div class="desc">
									<strong> ${sessionScope.name } 고객님, 안녕하세요.<br>
									<br> 지금부터 홈서비스 바로구매를 시작하겠습니다.<br> 먼저, 차량 정보와 예상 결제
										금액을 확인해 주세요.<br></strong>
								</div>
								<div class="carImg">
									<img
										src="${car.c_photo }"
										alt="차량이미지">
								</div>
								<div class="mT16">
									<ul class="guideTxt">
										<li>K Car Warranty 가입비는 KW6에 가입하는 경우의 예상 비용입니다.<br>
											K Car Warranty에 가입하지 않거나 KW3 또는 KW12에 가입하는 경우 실제 가입비는 달라질 수
											있습니다.
										</li>
										<li>배송비는 배송 지역에 따라 다릅니다. 정확한 배송비는 결제 단계에서 확인하실 수 있으며, 예상
											결제 금액에는 포함되지 않습니다.</li>
										<li>이전등록비 감면 혜택 선택은 결제 후 추가정보 입력 할 때 선택할 수 있습니다.</li>
									</ul>
								</div>
								<form action="carOrderRequest" method="post" id="orderRequestF">
									<div class="btmButton">
										<input type="hidden" name="c_num" value="${car.c_num }">
										<input type="hidden" name="c_price" value="${car.c_price }">
										<div class="searchTrigger box el-row">
											<button type="submit" class="button apply">다음</button>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="contentsBox  contRight el-row">
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
															<div class="el-progress-bar__inner" style="width: 33%;">
																<!---->
															</div>
														</div>
													</div>
													<div class="el-progress__text" style="font-size: 15.2px;">1/3</div>
												</div>
											</div>
											<h3 class="carName">${car.cb_brand } ${car.cb_m_model } ${car.c_fuel }</h3>
											<p>${car.c_num }</p>
											<ul class="dotLists">
												<li>${car.c_year }</li>
												<li>${car.c_distance }km</li>
												<li>${car.c_fuel }</li>
											</ul>
											<div role="tablist" aria-multiselectable="true"
												class="el-collapse accordionMenu">
												<div class="el-collapse-item is-active">
													<div role="tab" aria-expanded="true"
														aria-controls="el-collapse-content-2411"
														aria-describedby="el-collapse-content-2411">
														<div role="button" id="el-collapse-head-2411" tabindex="0"
															class="el-collapse-item__header is-active">
															예상 결제 금액 <i
																class="el-collapse-item__arrow el-icon-arrow-right is-active"></i>
														</div>
													</div>
													<div role="tabpanel"
														aria-labelledby="el-collapse-head-2411"
														id="el-collapse-content-2411"
														class="el-collapse-item__wrap">
														<div class="el-collapse-item__content">
															<ul class="costDetailLists">
																<li><span>차량가</span> <span>${carPriceInfo.carPrice } 원</span></li>
																<li><span>이전등록비</span> <span>${carPriceInfo.registrationPrice } 원</span></li>
																<li><span>관리비용</span> <span>${carPriceInfo.managePrice } 원</span></li>
																<li><span>등록신청대행수수료</span> <span>${carPriceInfo.registPrice } 원</span></li>
																<li><span>K Car Warranty<span class="pointN">(KW6
																			선택시)</span></span> <span>${carPriceInfo.kw } 원</span></li>
																<li><span>배송비<span class="pointC">*</span></span> <span>배송
																		지역에 따라 다름</span></li>
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
						<div>
							<div>
								<div class="el-dialog__wrapper popup confirm noTitle"
									style="display: none;">
									<div role="dialog" aria-modal="true" aria-label="Title - 확인"
										class="el-dialog" style="margin-top: 15vh;">
										<div class="el-dialog__header">
											<span class="el-dialog__title">Title - 확인</span>
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
			<%@include file="/WEB-INF/default/footer.jsp"%>
			<!-- footer end -->
			</div>
		</div>
	</div>
</body>
</html>