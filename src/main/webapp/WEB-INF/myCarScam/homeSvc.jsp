<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html lang="ko" class="chrome">
<head>
<title>내차사기 홈서비스</title>
<%@include file="homeSvc_style.jsp" %>
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
<meta data-n-head="ssr" data-hid="description" name="description"
	content="대한민국 No.1 직영 중고차. 중고차 매입, 중고차 판매, 중고차 최초 환불 서비스, 중고차 온라인 구매 홈서비스, 중고차 매매, 중고차 사이트 ">
<meta data-n-head="ssr" data-hid="keywords" name="keywords"
	content="중고차, 중고차 시세, K Car 직영차, 중고차팔기, 보험, 보증, 진단, 대출, 중고차 매매, 국산차, 수입차">

<meta http-equiv="origin-trial"
	content="A9wkrvp9y21k30U9lU7MJMjBj4USjLrGwV+Z8zO3J3ZBH139DOnCv3XLK2Ii40S94HG1SZ/Zeg2GSHOD3wlWngYAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjYxMjk5MTk5LCJpc1RoaXJkUGFydHkiOnRydWV9">
<meta http-equiv="origin-trial"
	content="Azy2GzGQxPvGmQwVDdEL1jRuKSXIdSSASA06JCA6PCeaVHpFYf8Rw5/q+9adc9CrBTxfCeUwxkuDM4PWEmdqywwAAACKeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZWFkc2VydmljZXMuY29tOjQ0MyIsImZlYXR1cmUiOiJQcml2YWN5U2FuZGJveEFkc0FQSXMiLCJleHBpcnkiOjE2NjEyOTkxOTksImlzU3ViZG9tYWluIjp0cnVlLCJpc1RoaXJkUGFydHkiOnRydWV9">
<meta http-equiv="origin-trial"
	content="A+Mt6wQ7St5J869uXW1A/aL3lJaYJYff4gUwPvwSbTuZ7z/T1l4np41d/t4W9TdeS/EMua5fYfBoz4v4TT9tdAgAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5uZXQ6NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY2MTI5OTE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
<meta http-equiv="origin-trial"
	content="AxFuPIivbOVh9A1iWigZYBKLEsd09F0TKyZCh3vhaAKunGI5SMnDaV1g2yqrnkAKqythLyd+bS8ShWXWx388aQIAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY2MTI5OTE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">

<meta data-n-head="ssr" data-hid="title" name="title"
	content="내차사기 홈서비스">
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
				<%@include file="/WEB-INF/default/header.jsp" %>
				<!-- header end -->
				<div class="homeServiceWrap contWrap">
					<div class="hsBanner"
						style="background-image: url(&quot;/images/homeserivce/bg_hs_main.jpg&quot;);">
						<p class="title">
							24시간 온라인 주문<br> 내차사기 홈서비스
						</p>
						<p class="desc">
							24시간 언제든지<br> 온라인으로 구매하세요!<br> 마음에 안들면 환불 보장
						</p>
					</div>
					<div class="contentsBox noBg section01 el-row">
						<div>
							<div class="titleWrap pageContents">
								<strong>결제부터 집 앞 배송까지, <span class="textRed">1Day!</span></strong><br>
								K Car 내차사기 홈서비스
							</div>
							<div class="hsListStep">
								<ul class="stepBox">
									<li class="iconType01"><span class="tag step">step1</span>
										<p class="title">차량 선택</p>
										<p class="desc">
											[내차사기-&gt;차량검색]에서 마음에 드는 차량을 고르고<br> [홈서비스 바로구매]를 눌러주세요.
										</p></li>
									<li class="iconType02"><span class="tag step">step2</span>
										<p class="title">정보 입력</p>
										<p class="desc">
											명의자 및 배송 정보를 입력하고,“K Car Warranty” <br> 가입여부를 선택해 주세요.
										</p>
										<p class="desc">※ K Car Warranty는 K Car가 운용하는 보증서비스입니다.</p></li>
									<li class="iconType03"><span class="tag step">step3</span>
										<p class="title">결제하기</p>
										<p class="desc">
											현금, K Car 할부, 카드 중에서 원하는 결제방식을 선택해 주세요.<br> 여러 결제 방식을 함께
											선택하여 금액을 나누어 결제할 수도 있습니다.
										</p></li>
									<li class="iconType04"><span class="tag step">step4</span>
										<p class="title">1일 이내 배송</p>
										<p class="desc">전문 배송기사가 고객님의 집 앞까지 차량을 배송해드립니다.</p></li>
								</ul>
								
								<div class="youtubeWrap">
									<div class="ytVideo">
										<div class="video-container">
											<iframe width="100%" height="100%"
												src="https://www.youtube.com/embed/UZs758DjFgI"
												frameborder="0"
												allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
												allowfullscreen="allowfullscreen"></iframe>
										</div>
									</div>
									<div class="ytVideo">
										<div class="video-container">
											<iframe width="100%" height="100%"
												src="https://www.youtube.com/embed/L00es0fmXw4"
												frameborder="0"
												allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
												allowfullscreen="allowfullscreen"></iframe>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="contentsBox noBg section02 el-row">
						<div>
							<div class="titleWrap">
								<strong>내차사기 홈서비스 실시간 이용현황</strong>
							</div>
							<div class="radiusBox asym counts">
								<div>
									<p class="title">총 이용 고객 수</p>
									<p class="count ftBold">
										${memberCount }
									</p>
								</div>
							</div>
							<!--  -->
							<div
								class="liveHSWrap swiper-container swiper-container-initialized swiper-container-horizontal">
								<div class="swiper-wrapper"
									style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
									<!-- forEach start 5개가 있어야 1개가 나타남 6개면 2개-->
									<c:forEach var="car" items="${carList }" >
										<div class="swiper-slide"
											style="width: 237.6px; margin-right: 8px;">
											<div class="liveItem">
												<p class="title">${car.cb_brand } ${car.cb_m_model }</p>
												<p class="desc">${car.c_year } ${car.c_distance } km</p>
											</div>
										</div>
									</c:forEach>
									<!-- forEach end -->
								</div>
								<div class="swiperPagination"></div>
								<span class="swiper-notification" aria-live="assertive"
									aria-atomic="true"></span>
							</div>
							<div class="buttonWrap">
								<div class="searchTrigger box Large RedColor el-row">
									<button class="button chosenApply" onclick="location.href='carbuy'">차량검색</button>
								</div>
							</div>
						</div>
					</div>
					<div class="contentsBox noBg section03 el-row">
						<div>
							<div class="titleWrap">
								<strong>지금까지 
								<span id="" class="pointC numCount">
									${memberCount }
								</span>명의
									고객님이
								</strong><br> 내차사기 홈서비스를 이용하셨어요.
							</div>
							<div class="reviewWrap">
								<a href="/BuyCustReview" class="viewmore"> 더보기 </a>
								<div>
									<ul>
									<!-- forEach start -->
									<c:forEach var="buyReview" items="${reviewList }">
										<li onclick="reviewModalOpen('${buyReview.cb_brand } ${buyReview.cb_m_model }', '${buyReview.m_r_title }', '${buyReview.m_r_review }', '${buyReview.m_r_registDate }', '${buyReview.m_r_photo}')"><a aria-current="page"
											class="nuxt-link-exact-active nuxt-link-active"><div
													class="reviewImg">
													<img
														src="${buyReview.m_r_photo}"
														alt="이미지" onerror="this.style.display='none';">
												</div>
												<div class="reviewDesc">
													<p class="target">${buyReview.cb_brand }&nbsp;${buyReview.cb_m_model }</p>
													<div class="descInner">
														<p class="title" style="word-break: break-all;">${buyReview.m_r_title }</p>
														<p class="desc" style="word-break: break-all;">
															<span>${buyReview.m_r_review }</span>
														</p>
														<p class="dates">
															<span>${buyReview.m_r_registDate }</span>
														</p>
													</div>
												</div></a></li>
									</c:forEach>
										<!-- forEach end -->
									</ul>
									<!-- 내차사기 고객후기 모달창 -->
					<div>
						<span id="reviewModalBack"></span>
						<div class="el-dialog__wrapper popup popCenter" id="reviewModal"
							style="z-index: 2010;display:none;">
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
													<span id="modalModelNDate">
													</span>
													<p style="word-break: break-all;" id="modalContent"></p>
													<div class="carSellPopupImg">
														<img id="modalPhoto"
															src=""
															alt="이미지1">
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
								</div>
							</div>
						</div>
					</div>
					<div class="el-divider el-divider--horizontal">
						<!---->
					</div>
					<div class="contentsBox section05 el-row">
						<div class="faqWrap">
							<div class="infoTitleWrap mb40">
								<h2 class="infoTitle">자주 하는 질문</h2>
								<a class="moreBtn el-link el-link--default is-underline" href="/csQstn">
									<!---->
									<span class="el-link--inner"> 전체 보기<i
										class="el-icon-arrow-right"></i></span>
								<!---->
								</a>
							</div>
							
							<!-- forEach start -->
							<div role="tablist" aria-multiselectable="true"
								class="el-collapse faqList">
								
								<c:forEach var="question" items="${questionList }" varStatus="status">
									<div class="el-collapse-item">
										<div role="tab" aria-controls="el-collapse-content-6580" onclick="question('${status.index}')"
											aria-describedby="el-collapse-content-6580">
											<div role="button" id="el-collapse-head-6580" tabindex="0"
												class="el-collapse-item__header">
												<i class="el-icon-Q"></i> <span>${question.q_title }</span><i
													class="el-collapse-item__arrow el-icon-arrow-right"></i>
											</div>
										</div>
										<div role="tabpanel" aria-hidden="true"
											aria-labelledby="el-collapse-head-6580"
											id="el-collapse-content-6580" class="el-collapse-item__wrap"
											style="display: none;">
											<div class="el-collapse-item__content">
												<div>
													<i class="el-icon-A"></i>
													<div class="faqA">
														${question.q_content }
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								
							</div>
							<!-- forEach start -->
							
						<div class="guideWrap">
							<div class="etcInfo2">
								<div class="titleWrap">
									<h4>꼭! 알아두세요</h4>
									<a href="javascript:void(0);"
										class="txtBtn el-link el-link--default is-underline">
										<!---->
										<span class="el-link--inner"> 환불규정안내 </span>
									<!---->
									</a>
								</div>
								<ul class="guideTxt ft13">
									<li>환불은 환불규정 제 2조에 규정된 환불기간 안에 고객님이 K Car에 환불을 신청하고 K Car가
										지정하는 가까운 직영점에 차량을 반환해야 환불받으실 수 있습니다.</li>
									<li>차량 배송비를 제외한 전액을 환불받으실 수 있습니다.</li>
									<li>오전 11시 이전(영업일 기준)에 결제한 차량은 당일 배송됩니다. 단, 도섬 지역이나 산간 지역
										등 거리가 먼 일부 지역은 당일 배송이 어려울 수 있습니다.</li>
									<li>차량 인수 후, 고객이 임의로 추가 장착한 제품의 비용 및 차량에 투입된 비용은 환불되지
										않습니다.</li>
									<li>내차사기 홈서비스 이용 시 신용카드 결제는 삼성카드로만 할 수 있습니다.</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="el-dialog__wrapper popup fullPopup"
						style="display: none;">
						<div role="dialog" aria-modal="true"
							aria-label="내차사기 홈서비스에 대한 환불약관" class="el-dialog"
							style="margin-top: 15vh;">
							<div class="el-dialog__header">
								<span class="el-dialog__title">내차사기 홈서비스에 대한 환불약관</span>
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
				<!-- footer start -->
				<%@include file="/WEB-INF/default/footer.jsp" %>
				<!-- footer end -->
			</div>
		</div>
	</div>
	<div id="criteo-tags-div" style="display: none;">
		<script async="true" type="text/javascript"
			src="https://sslwidget.criteo.com/event?a=73896&amp;v=5.12.0&amp;p0=e%3Dexd%26site_type%3Dd%26ref%3Dhttps%253A%252F%252Fwww.google.com&amp;p1=e%3Dvh&amp;p2=e%3Ddis&amp;adce=1&amp;bundle=8DPgSF9YMk93UWdmWXQ5VUp3cGdoMHdiM1QxZnRLSCUyQjB4M1Q4TnhIbkZNRjluWWp2ZVpIQWFLJTJCdDVVT2NIM2xPZ0hnYmJpUEZaVDRKRmV5ZEQ2VjZCTWJaSDY4bVVuMkh1UmIwVzZORkxrRSUyRlZObUhMN09sOEhQdWZObEFQTjlIeEJtT2h5OEZmZnpOOWUxMUU2dlYlMkZTdGZlUSUzRCUzRA&amp;tld=kcar.com&amp;fu=https%253A%252F%252Fwww.kcar.com%252Fbc%252FhomeSvc%252Fmain&amp;pu=https%253A%252F%252Fwww.google.com%252F&amp;dtycbr=19454"></script>
	</div>
	<iframe src="//tpc.googlesyndication.com/sodar/Beq5YUTp.html" width="0"
		height="0" style="display: none;"></iframe>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<iframe id="groobeeBox" name="groobeeBox" style="display: none;"></iframe>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
		

<script src="js/question.js"></script>
<script src="js/reviewModal.js"></script>
<script>
var swiperWrapper = document.querySelector('.swiper-wrapper');
//홈페이지 접근시 domTree 생성 시 함수 실행
document.addEventListener("DOMContentLoaded", function(){
	slide();
})
var slide = function(){
	var checkIndex = 0;
	//1.5초마다 오른쪽으로 이동
	setInterval(function(){
		swiperWrapper.style.transition = '0.3s';
		swiperWrapper.style.transform = "translate3d(-"+245.6*(checkIndex)+"px, 0px, 0px)";
		
		checkIndex ++;
		// index값 15 일 때(= 오른쪽 끝일떄) 0.2초 후 slide 처음으로 돌아가기
		if(checkIndex == 15){
			setTimeout(function(){
				swiperWrapper.style.transition = '1s';
				swiperWrapper.style.transform = "translate3d(0px, 0px, 0px)";
			},201)
			checkIndex = 0;
		}
	},1500);
}
</script>
</body>
</html>