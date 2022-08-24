<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<style>
.normal {
	display: none;
}
</style>
<%@include file="/WEB-INF/default/header.jsp"%>
<head>

<title>K-CAR 검색페이지</title>
<c:if test="${not empty msg }">
	<script>
		alert("${msg}");window.history.back();
	</script>
</c:if>
</head>

<body class="" style="">
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

				<div class="searchWrap">

					<div class="containerWrap el-row">
						<form action="IntgSearchList">
							<div class="centerSearchForm">

								<div class="areaSearch">
									<div class="resultText">
										<span>"<em>${keyword}</em>" 통합 검색 결과
										</span> <strong><em>${fn:length(buy)+fn:length(rent)}  </em>건</strong>
									</div>
									<div class="el-input el-input--suffix">
										<!---->
										<input type="text" autocomplete="off" id="inputsuffix"
											placeholder="원하는 차량을 검색하세요." class="el-input__inner"
											onkeyup="keyinput(this)" name="searchWord">
										<!---->
										<!---->
										<!---->
										<div id="livceSearch" class="normal">
											<ul>
												<li class='el-select-dropdown__item'></li>
											</ul>
										</div>
									</div>
									<!---->
								</div>
								<button type="subbmit"
									class="el-button icon-search-search el-button--default">
								</button>

							</div>
						</form>
						<div class="resultWrap">
							<div class="resultCnt">
								<div class="flexSB">
									<h2 class="subTitle">
										직영차 <span class="textRed">${fn:length(buy)}</span>대
									</h2>
									<a href="/carbuy"
										class="rightDesc viewAll nuxt-link-active"><span>직영차
											더보기</span></a>
								</div>
								<div class="lineTop mT20">
									<div class="carListWrap">
										<c:forEach var="detail" items="${buy}" end="2">
											<div class="carListBox">
												<div class="carListImg">
													<a href="/bc/search/IntgSearchList"
														class="nuxt-link-active" id="mkt_clickCar"><img
														src="${detail.c_photo}" alt="챠량이미지"
														onerror="this.src='/images/search/bg_no_Img_lg.png'"
														loading="lazy"></a>

												</div>
												<div class="detailInfo">
													<div class="carName">
														<p class="carTit">
															<a href="/bc/search/IntgSearchList"
																class="nuxt-link-active" id="mkt_clickCarNm">
																${detail.cb_m_model} </a>
														</p>
													</div>
													<div class="carListFlex">
														<div class="carExpIn">
															<p class="carExp">
																${detail.c_price }만원
																<!---->
															</p>
															<ul class="carPayMeth">
																<li><a
																	class="el-link el-link--default is-underline"> </a></li>
																<!---->
															</ul>
														</div>
														<p class="detailCarCon">
															<span class="block">${detail.c_year }</span> <span>${detail.c_distance}km</span>
															<span>${detail.c_fuel}</span> <span>${detail.st_name }</span>
														</p>
													</div>
													<ul class="infoTooltip">
														<!---->
														<!---->
														<!---->
														<!---->
														<!---->
														<!---->
													</ul>
												</div>
											</div>
										</c:forEach>
										<div>
											<div>
												<div class="el-dialog__wrapper popup confirm noTitle"
													style="display: none;">
													<div role="dialog" aria-modal="true"
														aria-label="관심 차량 등록 알림" class="el-dialog"
														style="margin-top: 15vh;">
														<div class="el-dialog__header">
															<span class="el-dialog__title">관심 차량 등록 알림</span>
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
										<div>
											<div>
												<div class="el-dialog__wrapper popup popCenter  active"
													style="display: none;">
													<div role="dialog" aria-modal="true"
														aria-label="관심 차량 등록 알림" class="el-dialog"
														style="margin-top: 15vh;">
														<div class="el-dialog__header">
															<span class="el-dialog__title">관심 차량 등록 알림</span>
															<button type="button" aria-label="Close"
																class="el-dialog__headerbtn">
																<i class="el-dialog__close el-icon el-icon-close"></i>
															</button>
														</div>
														<!---->
														<div class="el-dialog__footer">
															<span class="dialog-footer"><div
																	class="footerBtnWrap">
																	<div class="searchTrigger box multBtn el-row">
																		<button id="" class="button chosenApply">취소</button>
																		<button id="mkt_intrstCarAplId" class="button apply">
																			신청하기</button>
																	</div>
																</div></span>
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
										<div>
											<div>
												<div class="el-dialog__wrapper popup fullPopup hfix active"
													style="display: none;">
													<div role="dialog" aria-modal="true"
														aria-label="판매준비차량 알림신청" class="el-dialog"
														style="margin-top: 15vh;">
														<div class="el-dialog__header">
															<span class="el-dialog__title">판매준비차량 알림신청</span>
															<button type="button" aria-label="Close"
																class="el-dialog__headerbtn">
																<i class="el-dialog__close el-icon el-icon-close"></i>
															</button>
														</div>
														<!---->
														<div class="el-dialog__footer">
															<span class="dialog-footer"><div
																	class="searchTrigger box el-row">
																	<button class="button apply">신청하기</button>
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
										</div>
									</div>
								</div>
							</div>
							<div class="resultCnt">
								<div class="flexSB">
									<h2 class="subTitle">
										렌트 <span class="textRed">${fn:length(rent)}</span>대
									</h2>
									<!-- <a href="/bc/search/IntgSearchList"
										class="rightDesc viewAll nuxt-link-active"><span>렌트
											더보기</span></a>  -->
								</div>
								<div class="lineTop mT20">
									<div class="carListWrap">
									<!-- 각주 -->
									<c:forEach var="detail" items="${rent}" end="2">
										<div class="carListBox">
											<div class="carListImg">
												<!---->
												<span class="car360Img"><img
													src="/images/common/ico-360.svg" alt="360"></span> <a
													href="/bc/search/IntgSearchList" class="nuxt-link-active"
													id="mkt_clickCar"><img
													src="${detail.crpPhoto}"
													alt="챠량이미지"
													onerror="this.src='/images/search/bg_no_Img_lg.png'"
													loading="lazy"></a>
												<ul class="listViewBtn">
													<li><button type="button"
															class="el-button icon icoFav el-button--default"
															id="mkt_clickWish">
															<!---->
															<!---->
															<span><span class="_hidden">찜하기</span></span>
														</button></li>
												</ul>
											</div>
											<div class="detailInfo">
												<div class="carName">
													<p class="carTit">
														<a href="/bc/search/IntgSearchList"
															class="nuxt-link-active" id="mkt_clickCarNm"> ${detail.crName} </a>
													</p>
												</div>
												<div class="carListFlex">
													<div class="carExpIn">
														<p class="carExp">
															렌트 <span class="textRed">월 ${detail.crPrice}만원 / ${detail.crMonth }개월</span>
														</p>
														<ul class="carPayMeth">
															<li>초기납입금 <span>${detail.crFirstPrice}만원</span></li>
														</ul>
													</div>
													<p class="detailCarCon">
														<span class="block">${detail.crYear}년식</span> <span>${detail.crDistance}</span> <span>${detail.crFuel}</span>
														<span></span>
													</p>
												</div>
											</div>
										</div>
										</c:forEach>
									<div>
											<div>
												<div class="el-dialog__wrapper popup confirm noTitle"
													style="display: none;">
													<div role="dialog" aria-modal="true"
														aria-label="관심 차량 등록 알림" class="el-dialog"
														style="margin-top: 15vh;">
														<div class="el-dialog__header">
															<span class="el-dialog__title">관심 차량 등록 알림</span>
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
										<div>
											<div>
												<div class="el-dialog__wrapper popup popCenter  active"
													style="display: none;">
													<div role="dialog" aria-modal="true"
														aria-label="관심 차량 등록 알림" class="el-dialog"
														style="margin-top: 15vh;">
														<div class="el-dialog__header">
															<span class="el-dialog__title">관심 차량 등록 알림</span>
															<button type="button" aria-label="Close"
																class="el-dialog__headerbtn">
																<i class="el-dialog__close el-icon el-icon-close"></i>
															</button>
														</div>
														<!---->
														<div class="el-dialog__footer">
															<span class="dialog-footer"><div
																	class="footerBtnWrap">
																	<div class="searchTrigger box multBtn el-row">
																		<button id="" class="button chosenApply">취소</button>
																		<button id="mkt_intrstCarAplId" class="button apply">
																			신청하기</button>
																	</div>
																</div></span>
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
										<div>
											<div>
												<div class="el-dialog__wrapper popup fullPopup hfix active"
													style="display: none;">
													<div role="dialog" aria-modal="true"
														aria-label="판매준비차량 알림신청" class="el-dialog"
														style="margin-top: 15vh;">
														<div class="el-dialog__header">
															<span class="el-dialog__title">판매준비차량 알림신청</span>
															<button type="button" aria-label="Close"
																class="el-dialog__headerbtn">
																<i class="el-dialog__close el-icon el-icon-close"></i>
															</button>
														</div>
														<!---->
														<div class="el-dialog__footer">
															<span class="dialog-footer"><div
																	class="searchTrigger box el-row">
																	<button class="button apply">신청하기</button>
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
</body>
<script>
	var req;
	function keyinput(content) {
		document.getElementById('livceSearch').className = 'normal';
		req = new XMLHttpRequest();
		req.onreadystatechange = textChange;
		req.open('post', '/search/keyword');
		req.send(content.value);

	}
	function textChange() {
		if (req.readyState == 4 && req.status == 200) {

			if(req.responseText != "fail" || !req.esponseText.equals("fail"))
			{document.getElementById('livceSearch').innerHTML = req.responseText;
			document.getElementById('livceSearch').className = 'layerWrap livceSearch active';
			}

		}
	}
	function modelsel(content) {
		document.getElementById('livceSearch').className = 'normal';
		document.getElementById('inputsuffix').value = content.innerHTML;

	}
	
</script>
