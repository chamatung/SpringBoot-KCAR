<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="rent_style.jsp"%>
<html lang="ko" class="chrome">
<head>
<title>차량상세 중고차렌트</title>
	<!-- 렌트신청 문자전송 js -->
<script type="text/javascript">
$('#send').click(function() {
	
	const to = $('#to').val();
	
	$.ajax ({
		url: 'rentUsedInfoProc/sendSMS',
		type: 'GET',
		data: {
			"to" : to
		},
		success: function(data) {
			const checkNum = data;//to로 받아온 데이터
			alert('메세지 전송'+ checkNum);
			
		}
	});
	
});
</script>
<script
	src="https://connect.facebook.net/signals/config/771045850193577?v=2.9.75&amp;r=stable"
	async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion_async.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-12BKR6ZT1H&amp;l=dataLayer&amp;cx=c"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-NXZPHVG"></script>
<script type="text/javascript"
	src="https://js.appboycdn.com/web-sdk/3.2/appboy.min.js" async=""></script>
<script type="text/javascript"
	integrity="sha384-vYYnQ3LPdp/RkQjoKBTGSq0X5F73gXU3G2QopHaIfna0Ct1JRWzwrmEz115NzOta"
	crossorigin="anonymous" async=""
	src="https://cdn.amplitude.com/libs/amplitude-5.8.0-min.gz.js"></script>
<script data-n-head="ssr" src="/mobile_redirect.js"></script>
<script data-n-head="ssr" src="/static_mma_common.js"></script>
<script src="//rum.beusable.net/script/b171101e144206u678/f88ad03cce"
	async="" type="text/javascript"></script>
<script data-n-head="ssr" src="//t1.daumcdn.net/adfit/static/kp.js"
	charset="utf-8"></script>
<script data-n-head="ssr" data-hid="gtm-script">if(!window._gtm_init){window._gtm_init=1;(function(w,n,d,m,e,p){w[d]=(w[d]==1||n[d]=='yes'||n[d]==1||n[m]==1||(w[e]&&w[e][p]&&w[e][p]()))?1:0})(window,navigator,'doNotTrack','msDoNotTrack','external','msTrackingProtectionEnabled');(function(w,d,s,l,x,y){w[x]={};w._gtm_inject=function(i){if(w.doNotTrack||w[x][i])return;w[x][i]=1;w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s);j.async=true;j.src='https://www.googletagmanager.com/gtm.js?id='+i;f.parentNode.insertBefore(j,f);};w[y]('GTM-NXZPHVG')})(window,document,'script','dataLayer','_gtm_ids','_gtm_inject')}</script>
<script data-n-head="ssr" src="/js/3dview/jquery-latest.js"></script>
<script data-n-head="ssr" src="/js/3dview/kcarview.js" defer=""></script>
<script data-n-head="ssr" src="/js/3dview/libpannellum.js"></script>
<script data-n-head="ssr" src="/js/3dview/pannellum.js"></script>
<script data-n-head="ssr" src="/js/3dview/wheelzoom.js"></script>
<script data-n-head="ssr" src="/js/calculator/cm_calculator.js"></script>
<script data-n-head="ssr" src="/js/konan/kwl-1.0.0.js"></script>
<script data-n-head="ssr">
                  (function(a,i,u,e,o) {
                    a[u]=a[u]||function(){(a[u].q=a[u].q||[]).push(arguments)};
                    })(window, document, "groobee");
                    groobee("serviceKey", "312cb99ca46746198062497017c773c5");groobee("siteType", "custom");</script>
<script data-n-head="ssr"
	src="https://static.groobee.io/dist/g2/groobee.init.min.js"
	charset="utf-8"></script>
<script data-n-head="ssr" src="//developers.kakao.com/sdk/js/kakao.js"></script>
<link rel="preload" href="/_nuxt/037d689.js" as="script">
<link rel="preload" href="/_nuxt/89fbbcc.js" as="script">
<link rel="preload" href="/_nuxt/cb4d74d.js" as="script">
<link rel="preload" href="/_nuxt/5bab1e0.js" as="script">
<link rel="preload" href="/_nuxt/cbc42cf.js" as="script">
<link rel="preload" href="/_nuxt/59d2b38.js" as="script">
<link rel="preload" href="/_nuxt/75ed485.js" as="script">
<link rel="preload" href="/_nuxt/a9a61d7.js" as="script">
<link rel="preload" href="/_nuxt/1e3afca.js" as="script">

<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1660806144299&amp;cv=9&amp;fst=1660806144299&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635470&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=1&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg8h0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fur%2FRentDtl%3FrentCarCd%3DRC116728%26rentMth%3D24%26ecCarCd&amp;ref=https%3A%2F%2Fwww.kcar.com%2Fur%2FRentList&amp;tiba=%EC%B0%A8%EB%9F%89%EC%83%81%EC%84%B8%20%EC%A4%91%EA%B3%A0%EC%B0%A8%EB%A0%8C%ED%8A%B8&amp;auid=481675456.1659003999&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<link rel="stylesheet" type="text/css"
	href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="//static.groobee.io/dist/g2/css/grb-recommend-list_v2.css">
<link rel="stylesheet" type="text/css"
	href="//static.groobee.io/dist/g2/css/grb-recommend-list_v2.css">
<script charset="utf-8" src="/_nuxt/a7c95c7.js"></script>
<script charset="utf-8" src="/_nuxt/afcd7ba.js"></script>
<script charset="utf-8" src="/_nuxt/89a1f58.js"></script>
<script charset="utf-8" src="/_nuxt/0947a70.js"></script>
</head>
<body>
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

				<%@include file="/WEB-INF/default/header.jsp"%>

				<div class="carInfoWrap" data-v-ec1dd4fa="">
					<div class="carInfoContainer" data-v-ec1dd4fa="">
						<div class="carInfoContent rent" data-v-ec1dd4fa="">
							<div class="carInfoKeyArea" data-v-ec1dd4fa="">
								<div class="carNameWrap" data-v-ec1dd4fa="">
									<div class="left" data-v-ec1dd4fa="">
										<h2 class="carName" data-v-ec1dd4fa="">
											${rentUsedInfo.crBrand } ${rentUsedInfo.crName }
											${rentUsedInfo.crGrade }</h2>
										<div data-v-ec1dd4fa="">
											<ul class="dotLists" data-v-ec1dd4fa="">
												<li data-v-ec1dd4fa="">${rentUsedInfo.crYear }</li>
												<li data-v-ec1dd4fa="">${rentUsedInfo.crDistance }km</li>
												<li data-v-ec1dd4fa="">${rentUsedInfo.crFuel }</li>
												<li data-v-ec1dd4fa="">${rentUsedInfo.crColor }</li>
												<li data-v-ec1dd4fa="">${rentUsedInfo.crMission }</li>
												<li data-v-ec1dd4fa="">약정거리 연2만 Km</li>
											</ul>
										</div>
									</div>
									<div class="right" data-v-ec1dd4fa="">
										<div class="carPriceView" data-v-ec1dd4fa="">
											<div class="price" data-v-ec1dd4fa="">
												<strong data-v-ec1dd4fa="">선수금방식 렌트비 <span
													class="pointC" data-v-ec1dd4fa="">월${rentUsedInfo.crPrice }만원
														/ ${rentUsedInfo.crMonth }개월</span></strong>
											</div>
											<ul class="priceLists" data-v-ec1dd4fa="">
												<li data-v-ec1dd4fa="">초기납입금
													${rentUsedInfo.crFirstPrice }만원</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="consultGuide mT40" data-v-ec1dd4fa="">
									<div data-v-ec1dd4fa="">
										<ul data-v-ec1dd4fa="">
											<li data-v-ec1dd4fa="">렌터카 고객센터 1588-5455</li>
											<li data-v-ec1dd4fa="">상담시간: 월~금요일 09:00~18:00</li>
										</ul>
									</div>
								</div>

								<!-- 여기가 이미지슬라이딩 파트 -->

								<div id="slideShow">
									<ul class="slides">
										<c:forEach var="crPhotoList" items="${crPhotoList }">
											<li><img src="${crPhotoList.crpPhoto }" alt=""></li>
											<!-- 								      <li><img src="https://img.kcar.com/carpicture/rentcar/RC116957/kcar_RC116957_005.jpg?1660884326016" alt=""></li> -->
											<!-- 								      <li><img src="https://img.kcar.com/carpicture/rentcar/RC116957/kcar_RC116957_006.jpg?1660884326016" alt=""></li> -->
											<!-- 								      <li><img src="https://img.kcar.com/carpicture/rentcar/RC116957/kcar_RC116957_007.jpg?1660884326016" alt=""></li> -->
											<!-- 								      <li><img src="https://img.kcar.com/carpicture/rentcar/RC116957/kcar_RC116957_008.jpg?1660884326016" alt=""></li> -->
											<!-- 								      <li><img src="https://img.kcar.com/carpicture/rentcar/RC116957/kcar_RC116957_009.jpg?1660884326016" alt=""></li> -->
										</c:forEach>
									</ul>
									<p class="controller">

										<!-- &lang: 왼쪽 방향 화살표
								      &rang: 오른쪽 방향 화살표 -->
										<span class="prev">&lang;</span> <span class="next">&rang;</span>
									</p>
								</div>

								<script type="text/javascript">
  								const slides = document.querySelector('.slides'); //전체 슬라이드 컨테이너
  								const slideImg = document.querySelectorAll('.slides li'); //모든 슬라이드들
  								let currentIdx = 0; //현재 슬라이드 index
  								const slideCount = slideImg.length; // 슬라이드 개수
  								const prev = document.querySelector('.prev'); //이전 버튼
  								const next = document.querySelector('.next'); //다음 버튼
  								const slideWidth = 700; //한개의 슬라이드 넓이
  								const slideMargin = 220; //슬라이드간의 margin 값

  								//전체 슬라이드 컨테이너 넓이 설정
  								slides.style.width = (slideWidth + slideMargin) * slideCount + 'px';

  								function moveSlide(num) {
  								  slides.style.left = -num * 815 + 'px';
  								  currentIdx = num;
  								}

  								prev.addEventListener('click', function () {
  								  /*첫 번째 슬라이드로 표시 됐을때는 
  								  이전 버튼 눌러도 아무런 반응 없게 하기 위해 
  								  currentIdx !==0일때만 moveSlide 함수 불러옴 */

  								  if (currentIdx !== 0) moveSlide(currentIdx - 1);
  								});

  								next.addEventListener('click', function () {
  								  /* 마지막 슬라이드로 표시 됐을때는 
  								  다음 버튼 눌러도 아무런 반응 없게 하기 위해
  								  currentIdx !==slideCount - 1 일때만 
  								  moveSlide 함수 불러옴 */
  								  if (currentIdx !== slideCount - 1) {
  								    moveSlide(currentIdx + 1);
  								  }
  								});
  								</script>

								<!-- 일단 여기까지 이미지 슬라이딩 & 스크립트 -->

							</div>
							<div class="carInfoDetailWrap" data-v-ec1dd4fa="">
								<div class="carInfoLeft" data-v-ec1dd4fa="">

									<ul class="carOptionLists" data-v-ec1dd4fa="">
										<li data-v-ec1dd4fa=""><button type="button"
												class="el-button el-button--default" data-v-ec1dd4fa="">
												<!---->
												<!---->
												<span><span data-v-ec1dd4fa="">기본 정보</span> <strong
													data-v-ec1dd4fa="">${rentUsedInfo.crYear }</strong></span>
											</button></li>
										<li data-v-ec1dd4fa=""><button type="button"
												class="el-button el-button--default noIcon"
												data-v-ec1dd4fa="">
												<!---->
												<!---->
												<span><span data-v-ec1dd4fa="">주행거리</span> <strong
													data-v-ec1dd4fa="">${rentUsedInfo.crDistance }km</strong></span>
											</button></li>
										<li data-v-ec1dd4fa=""><button type="button"
												class="el-button noIcon el-button--default"
												data-v-ec1dd4fa="">
												<!---->
												<!---->
												<span><span data-v-ec1dd4fa="">신차가격</span> <strong
													data-v-ec1dd4fa="">${rentUsedInfo.crNewPrice }만원</strong></span>
											</button></li>
										<li data-v-ec1dd4fa=""><button type="button"
												class="el-button noIcon el-button--default"
												data-v-ec1dd4fa="">
												<!---->
												<!---->
												<span><span data-v-ec1dd4fa="">약정주행거리</span> <strong
													data-v-ec1dd4fa="">연 2만km, 연 3만km</strong></span>
											</button></li>
									</ul>
									<div data-v-ec1dd4fa="" class="flexSB mT100">
										<h2 data-v-ec1dd4fa="" class="infoHead2 mB0">
											내 조건에 맞춰 <br data-v-ec1dd4fa=""> <span
												data-v-ec1dd4fa="">월 렌트비를 계산해 보세요.</span>
										</h2>
										<button data-v-ec1dd4fa="" type="button"
											class="el-button rightDesc viewUnder el-button--text">
											<!---->
											<!---->
											<span> 보험 보상 범위 </span>
										</button>
									</div>
									<div data-v-ec1dd4fa="" class="formWrap">
										<form data-v-ec1dd4fa="" class="el-form">
											<div data-v-ec1dd4fa="" class="el-form-item col50P">
												<!---->
												<div class="el-form-item__content">
													<div data-v-ec1dd4fa="">
														<div data-v-ec1dd4fa="" class="titLabel">
															초기납입금
															<button data-v-ec1dd4fa="" type="button"
																class="el-button el-tooltip item tooltip-btn el-button--default"
																aria-describedby="el-tooltip-7901" tabindex="0">
																<!---->
																<!---->
																<span><i data-v-ec1dd4fa="" class="el-icon-info2"></i></span>
															</button>
														</div>
														<div data-v-ec1dd4fa="" role="radiogroup"
															class="el-radio-group radioBoxs">
															<label data-v-ec1dd4fa="" role="radio" tabindex="-1"
																class="el-radio-button"><input type="radio"
																tabindex="-1" autocomplete="off"
																class="el-radio-button__orig-radio" value="01"><span
																class="el-radio-button__inner"> 선수금 <!----></span></label> <label
																data-v-ec1dd4fa="" role="radio" aria-checked="true"
																tabindex="0" class="el-radio-button is-active"><input
																type="radio" tabindex="-1" autocomplete="off"
																class="el-radio-button__orig-radio" value="02"><span
																class="el-radio-button__inner"> 보증금 <!----></span></label>
														</div>
													</div>
													<div data-v-ec1dd4fa="">
														<div data-v-ec1dd4fa="" class="titLabel">연간 약정운행거리</div>
														<div data-v-ec1dd4fa="" role="radiogroup"
															class="el-radio-group radioBoxs">
															<label data-v-ec1dd4fa="" role="radio"
																aria-checked="true" tabindex="0"
																class="el-radio-button is-active"><input
																type="radio" tabindex="-1" autocomplete="off"
																class="el-radio-button__orig-radio" value="2"><span
																class="el-radio-button__inner"> 20,000km <!----></span></label>
															<label data-v-ec1dd4fa="" role="radio" tabindex="-1"
																class="el-radio-button"><input type="radio"
																tabindex="-1" autocomplete="off"
																class="el-radio-button__orig-radio" value="3"><span
																class="el-radio-button__inner"> 30,000km <!----></span></label>
														</div>
													</div>
													<!---->
												</div>
											</div>
											<div data-v-ec1dd4fa="" class="el-form-item">
												<!---->
												<div class="el-form-item__content">
													<div data-v-ec1dd4fa="" class="titLabel">정비 서비스</div>
													<div data-v-ec1dd4fa="" role="radiogroup"
														class="el-radio-group radioBoxs">
														<label data-v-ec1dd4fa="" role="radio" aria-checked="true"
															tabindex="0" class="el-radio-button is-active"><input
															type="radio" tabindex="-1" autocomplete="off"
															class="el-radio-button__orig-radio" value="01"><span
															class="el-radio-button__inner"> 실속형(정비 미포함) <!----></span></label>
														<label data-v-ec1dd4fa="" role="radio" tabindex="-1"
															class="el-radio-button"><input type="radio"
															tabindex="-1" autocomplete="off"
															class="el-radio-button__orig-radio" value="03"><span
															class="el-radio-button__inner"> 입고정비(풀 정비 가능) <!----></span></label>
														<label data-v-ec1dd4fa="" role="radio" tabindex="-1"
															class="el-radio-button"><input type="radio"
															tabindex="-1" autocomplete="off"
															class="el-radio-button__orig-radio" value="04"><span
															class="el-radio-button__inner"> 순회정비(풀정비 + 방문점검) <!----></span></label>
													</div>
													<!---->
												</div>
											</div>
											<div data-v-ec1dd4fa="" class="el-form-item">
												<!---->
												<div class="el-form-item__content">
													<div data-v-ec1dd4fa="" class="titLabel">렌트기간</div>
													<div data-v-ec1dd4fa="" role="radiogroup"
														class="el-radio-group radioBoxs">
														<label data-v-ec1dd4fa="" role="radio" aria-checked="true"
															tabindex="0" class="el-radio-button is-active"><input
															type="radio" tabindex="-1" autocomplete="off"
															class="el-radio-button__orig-radio" value="12"><span
															class="el-radio-button__inner"> 12개월 <!----></span></label><label
															data-v-ec1dd4fa="" role="radio" tabindex="-1"
															class="el-radio-button"><input type="radio"
															tabindex="-1" autocomplete="off"
															class="el-radio-button__orig-radio" value="24"><span
															class="el-radio-button__inner"> 24개월 <!----></span></label><label
															data-v-ec1dd4fa="" role="radio" tabindex="-1"
															class="el-radio-button"><input type="radio"
															tabindex="-1" autocomplete="off"
															class="el-radio-button__orig-radio" value="36"><span
															class="el-radio-button__inner"> 36개월 <!----></span></label><label
															data-v-ec1dd4fa="" role="radio" tabindex="-1"
															class="el-radio-button"><input type="radio"
															tabindex="-1" autocomplete="off"
															class="el-radio-button__orig-radio" value="48"><span
															class="el-radio-button__inner"> 48개월 <!----></span></label>
													</div>
													<!---->
												</div>
											</div>
										</form>
									</div>
									<div data-v-ec1dd4fa="" class="calcBox">
										<div data-v-ec1dd4fa="" class="rentPrice">
											<strong data-v-ec1dd4fa="">월 렌트비</strong><strong
												data-v-ec1dd4fa="" class="pointC">720,000원</strong>
											<ul data-v-ec1dd4fa="" class="barLists">
												<li data-v-ec1dd4fa=""><span data-v-ec1dd4fa="">렌트기간</span>
													<span data-v-ec1dd4fa="">12개월</span></li>
												<li data-v-ec1dd4fa=""><span data-v-ec1dd4fa="">초기납입금</span>
													<span data-v-ec1dd4fa="">396만원</span></li>
											</ul>
										</div>
										<div data-v-ec1dd4fa="" class="calcBtnArea">
											<div data-v-ec1dd4fa="" class="calcBtns">
												<button data-v-ec1dd4fa="" type="button"
													class="el-button el-button--default">
													<!---->
													<!---->
													<span> 견적보관 </span>
												</button>
											</div>
										</div>
									</div>
									<div class="tabMenuWrap" data-v-ec1dd4fa="">
										<ul class="tabMenu" data-v-ec1dd4fa="">
											<!---->
											<li data-menu="3" data-v-ec1dd4fa="" class="active"><a
												href="#menu3" data-index="3" class="scroll"
												data-v-ec1dd4fa="">차량소개</a></li>
											<li data-menu="4" data-v-ec1dd4fa="" class=""><a
												href="#menu4" data-index="4" class="scroll"
												data-v-ec1dd4fa="">옵션사항</a></li>
											<li data-menu="5" data-v-ec1dd4fa="" class=""><a
												href="#menu5" data-index="5" class="scroll"
												data-v-ec1dd4fa="">차량정보</a></li>
										</ul>
									</div>
									<ul class="tabMenuCont" data-v-ec1dd4fa="">
										<!---->
										<li id="menu3" data-menu-section="3" data-v-ec1dd4fa=""><h2
												class="infoHead2 pT100" data-v-ec1dd4fa="">선택 계약 정보</h2>
											<ul class="infoDescLists" data-v-ec1dd4fa="">
												<li data-v-ec1dd4fa=""><div data-v-ec1dd4fa="">
														계약기간
														<button type="button"
															class="el-button el-tooltip item tooltip-btn el-button--default"
															data-v-ec1dd4fa="" aria-describedby="el-tooltip-2865"
															tabindex="0">
															<!---->
															<!---->
															<span><i class="el-icon-info2" data-v-ec1dd4fa=""></i></span>
														</button>
													</div>
													<div data-v-ec1dd4fa="">12/24/36/48개월</div></li>
												<li data-v-ec1dd4fa=""><div data-v-ec1dd4fa="">
														약정주행거리
														<button type="button"
															class="el-button el-tooltip item tooltip-btn el-button--default"
															data-v-ec1dd4fa="" aria-describedby="el-tooltip-6298"
															tabindex="0">
															<!---->
															<!---->
															<span><i class="el-icon-info2" data-v-ec1dd4fa=""></i></span>
														</button>
													</div>
													<div data-v-ec1dd4fa="">연 2만km/ 연 3만km</div></li>
												<li data-v-ec1dd4fa=""><div data-v-ec1dd4fa="">
														초기납입금
														<button type="button"
															class="el-button el-tooltip item tooltip-btn el-button--default"
															data-v-ec1dd4fa="" aria-describedby="el-tooltip-4849"
															tabindex="0">
															<!---->
															<!---->
															<span><i class="el-icon-info2" data-v-ec1dd4fa=""></i></span>
														</button>
													</div>
													<div data-v-ec1dd4fa="">선납금 또는 보증금 396만원</div></li>
												<li data-v-ec1dd4fa=""><div data-v-ec1dd4fa="">정비
														서비스</div>
													<div data-v-ec1dd4fa="">
														<ul data-v-ec1dd4fa="">
															<li data-v-ec1dd4fa="">실속형(정비 미포함)</li>
															<li data-v-ec1dd4fa="">입고정비(풀 정비 가능)</li>
															<li data-v-ec1dd4fa="">순회정비(풀정비 + 방문점검)</li>
														</ul>
													</div></li>
												<li data-v-ec1dd4fa=""><div data-v-ec1dd4fa="">
														보험 조건
														<button type="button"
															class="el-button el-tooltip item tooltip-btn el-button--default"
															data-v-ec1dd4fa="" aria-describedby="el-tooltip-8304"
															tabindex="0">
															<!---->
															<!---->
															<span><i class="el-icon-info2" data-v-ec1dd4fa=""></i></span>
														</button>
													</div>
													<div data-v-ec1dd4fa="">대인Ⅰ/Ⅱ 가입, 대물 1억, 자손
														사망1억/부상1천5백, 무보험차 상해 2억, 긴급출동 가입</div></li>
												<li data-v-ec1dd4fa=""><div data-v-ec1dd4fa="">
														운전 자격
														<button type="button"
															class="el-button el-tooltip item tooltip-btn el-button--default"
															data-v-ec1dd4fa="" aria-describedby="el-tooltip-1111"
															tabindex="0">
															<!---->
															<!---->
															<span><i class="el-icon-info2" data-v-ec1dd4fa=""></i></span>
														</button>
													</div>
													<div data-v-ec1dd4fa="">만 26세 이상, 1년 이상 운전 경력 보유</div></li>
											</ul>
											<h2 data-v-ec1dd4fa="" class="infoHead2 mT100">차량소개</h2>
											<div data-v-ec1dd4fa="" class="infoDescBox"
												style="white-space: pre-line; font-size: 14px;">▷특이사항
												-GPS장치 GPS가 설치 되어있는 차량입니다. K Car와 협의 없이 차단, 파손, 제거 시 손해를 배상
												해야합니다. -A/S불가 항목 블랙박스 및 기타 소모품은 렌트비에 미반영된 항목으로 A/S가 불가합니다.</div></li>
										<li id="menu4" data-menu-section="4" data-v-ec1dd4fa=""><h2
												class="infoHead2 pT100" data-v-ec1dd4fa="">
												이미지만 나온부분은 <span data-v-ec1dd4fa="">옵션이 없는 차량입니다.</span>
											</h2>
											<div class="carOptions" data-v-ec1dd4fa="">
												<ul class="iconLists" data-v-ec1dd4fa="">
													<li data-v-ec1dd4fa=""><img
														src="https://www.kcar.com/images/carInfo/icon-detail-option-02.svg" />
														<span data-v-ec1dd4fa="">${rentOptionInfo.croSunRoof }</span>
													</li>
													<li data-v-ec1dd4fa=""><img
														src="https://www.kcar.com/images/carInfo/icon-detail-option-11.svg" />
														<span data-v-ec1dd4fa="">${rentOptionInfo.croHiPass }</span>
													</li>
													<li data-v-ec1dd4fa=""><img
														src="https://www.kcar.com/images/carInfo/icon-detail-option-08.svg" />
														<span data-v-ec1dd4fa="">${rentOptionInfo.croBackSensor }</span>
													</li>
													<li data-v-ec1dd4fa=""><img
														src="https://www.kcar.com/images/carInfo/icon-detail-option-09.svg" />
														<span data-v-ec1dd4fa="">${rentOptionInfo.croCamera }</span>
													</li>
													<li data-v-ec1dd4fa=""><img
														src="https://www.kcar.com/images/carInfo/icon-detail-option-07.svg" />
														<span data-v-ec1dd4fa="">${rentOptionInfo.croNavigation }</span>
													</li>
													<li data-v-ec1dd4fa=""><img
														src="https://www.kcar.com/images/carInfo/icon-detail-option-16.svg" />
														<span data-v-ec1dd4fa="">${rentOptionInfo.croHandleHot }</span>
													</li>
													<li data-v-ec1dd4fa=""><img
														src="https://www.kcar.com/images/carInfo/icon-detail-option-19.svg" />
														<span data-v-ec1dd4fa="">${rentOptionInfo.croAirBag }</span>
													</li>
													<li data-v-ec1dd4fa=""><img
														src="https://www.kcar.com/images/carInfo/icon-detail-option-06.svg" />
														<span data-v-ec1dd4fa="">${rentOptionInfo.croSmartKey }</span>
													</li>
													<li data-v-ec1dd4fa=""><img
														src="https://www.kcar.com/images/carInfo/icon-detail-option-17.svg" />
														<span data-v-ec1dd4fa="">${rentOptionInfo.croBlackBox }</span>
													</li>

												</ul>
											</div>
											<div class="searchTrigger box Large DarkColor mT24 el-row"
												data-v-ec1dd4fa="">
												<button type="button" class="button lineApply">옵션
													전체 보기</button>
											</div></li>
										<li id="menu5" data-menu-section="5" data-v-ec1dd4fa=""><h2
												class="infoHead2 pT100" data-v-ec1dd4fa="">차량 기본 정보</h2>
											<ul class="infoSummary" data-v-ec1dd4fa="">
												<li data-v-ec1dd4fa=""><span data-v-ec1dd4fa="">차량번호</span>
													<span data-v-ec1dd4fa="">${rentUsedInfo.crNumber }</span></li>
												<li data-v-ec1dd4fa=""><span data-v-ec1dd4fa="">배기량</span>
													<span data-v-ec1dd4fa="">${rentUsedInfo.crCc }cc</span></li>
												<li data-v-ec1dd4fa=""><span data-v-ec1dd4fa="">연식</span>
													<span data-v-ec1dd4fa="">${rentUsedInfo.crYear }</span></li>
												<li data-v-ec1dd4fa=""><span data-v-ec1dd4fa="">색상</span>
													<span data-v-ec1dd4fa="">${rentUsedInfo.crColor }</span></li>
												<li data-v-ec1dd4fa=""><span data-v-ec1dd4fa="">주행거리</span>
													<span data-v-ec1dd4fa="">${rentUsedInfo.crDistance }km</span></li>
												<li data-v-ec1dd4fa=""><span data-v-ec1dd4fa="">변속기</span>
													<span data-v-ec1dd4fa="">${rentUsedInfo.crMission }</span></li>
												<li data-v-ec1dd4fa=""><span data-v-ec1dd4fa="">연료</span>
													<span data-v-ec1dd4fa="">${rentUsedInfo.crFuel }</span></li>
												<li data-v-ec1dd4fa=""><span data-v-ec1dd4fa="">제조사
														신차가</span> <span data-v-ec1dd4fa="">${rentUsedInfo.crFirstPrice }만원</span></li>
												<li data-v-ec1dd4fa=""><span data-v-ec1dd4fa="">등급</span>
													<span data-v-ec1dd4fa="">${rentUsedInfo.crGrade }</span></li>

											</ul></li>
									</ul>
									<div class="faqWrap mT100" data-v-ec1dd4fa="">
										<div class="infoTitleWrap infoTitleWrap2 mb40">
											<h2 class="infoTitle">자주 묻는 질문</h2>
											<a class="moreBtn el-link el-link--default is-underline">
												<!----> <span class="el-link--inner"> 전체보기<i
													class="el-icon-arrow-right"></i></span> <!---->
											</a>
										</div>
										<div role="tablist" aria-multiselectable="true"
											class="el-collapse faqList">
											<div class="el-collapse-item">
												<div role="tab" aria-controls="el-collapse-content-417"
													aria-describedby="el-collapse-content-417">
													<div role="button" id="el-collapse-head-417" tabindex="0"
														class="el-collapse-item__header">
														<i class="el-icon-Q"></i> <span>보증금/선납금을 납부한 뒤, 월
															렌트비 외에 추가되는 비용이 있나요?</span><i
															class="el-collapse-item__arrow el-icon-arrow-right"></i>
													</div>
												</div>
												<div role="tabpanel" aria-hidden="true"
													aria-labelledby="el-collapse-head-417"
													id="el-collapse-content-417" class="el-collapse-item__wrap"
													style="display: none;">
													<div class="el-collapse-item__content">
														<div>
															<i class="el-icon-A"></i>
															<div class="faqA">
																<p>월 렌트비 외에 추가되는 비용은 없습니다.</p>
																<p>
																	<br>
																</p>
																<p>보험료, 자동차세, 정비 비용 등 모든 부대 비용은 월 렌트비에 포함됩니다.</p>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="el-collapse-item">
												<div role="tab" aria-controls="el-collapse-content-4010"
													aria-describedby="el-collapse-content-4010">
													<div role="button" id="el-collapse-head-4010" tabindex="0"
														class="el-collapse-item__header">
														<i class="el-icon-Q"></i> <span>보증금 방식과 선납금 방식은 무엇이
															다른가요?</span><i
															class="el-collapse-item__arrow el-icon-arrow-right"></i>
													</div>
												</div>
												<div role="tabpanel" aria-hidden="true"
													aria-labelledby="el-collapse-head-4010"
													id="el-collapse-content-4010"
													class="el-collapse-item__wrap" style="display: none;">
													<div class="el-collapse-item__content">
														<div>
															<i class="el-icon-A"></i>
															<div class="faqA">
																<p>보증금과 선납금은 모두 차량을 구매할 때 초기에 부담하는 항목이라는 점에서 비슷하지만,
																	렌트 기간이 끝난 뒤 돈을 돌려받을 수 있는지 없는지가 다릅니다.</p>
																<p>
																	<br>
																</p>
																<p>보증금은 돌려받을 수 있고, 선납금은 돌려받을 수 없습니다.</p>
																<p>
																	<br>
																</p>
																<p>■ 보증금: 렌트기간이 끝나면 납부한 보증금은 전액 환급됩니다.</p>
																<p>■ 선납금: 렌트비 중 일부를 선납금으로 내며, 계약이 끝나도 환급되지 않습니다.</p>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="el-collapse-item">
												<div role="tab" aria-controls="el-collapse-content-6816"
													aria-describedby="el-collapse-content-6816">
													<div role="button" id="el-collapse-head-6816" tabindex="0"
														class="el-collapse-item__header">
														<i class="el-icon-Q"></i> <span>결제를 마친 뒤 차량은 어떻게 받을
															수 있나요?</span><i
															class="el-collapse-item__arrow el-icon-arrow-right"></i>
													</div>
												</div>
												<div role="tabpanel" aria-hidden="true"
													aria-labelledby="el-collapse-head-6816"
													id="el-collapse-content-6816"
													class="el-collapse-item__wrap" style="display: none;">
													<div class="el-collapse-item__content">
														<div>
															<i class="el-icon-A"></i>
															<div class="faqA">
																<p>결제를 마치면 고객님의 집 앞까지 차량을 무료로 배송해 드립니다.</p>
																<p>
																	<br>
																</p>
																<p>단, 섬 지역과 산간 지역은 배송비가 별도로 부과될 수 있습니다.</p>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="el-collapse-item">
												<div role="tab" aria-controls="el-collapse-content-756"
													aria-describedby="el-collapse-content-756">
													<div role="button" id="el-collapse-head-756" tabindex="0"
														class="el-collapse-item__header">
														<i class="el-icon-Q"></i> <span>운전자 요건이 어떻게 되나요?</span><i
															class="el-collapse-item__arrow el-icon-arrow-right"></i>
													</div>
												</div>
												<div role="tabpanel" aria-hidden="true"
													aria-labelledby="el-collapse-head-756"
													id="el-collapse-content-756" class="el-collapse-item__wrap"
													style="display: none;">
													<div class="el-collapse-item__content">
														<div>
															<i class="el-icon-A"></i>
															<div class="faqA">
																<p>기본적으로 만 26세 이상이고 운전 경력이 만 1년 이상인 운전면허 소지자라면 렌트가
																	가능합니다.</p>
																<p>
																	<br>
																</p>
																<p>만 26세 미만 운전자는 별도 심사를 거쳐 렌트가 가능한지 확인해 드리며, 이 경우 보험
																	연령에 따른 별도 견적을 산출하므로 렌트비는 달라질 수 있습니다.</p>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="el-collapse-item">
												<div role="tab" aria-controls="el-collapse-content-1189"
													aria-describedby="el-collapse-content-1189">
													<div role="button" id="el-collapse-head-1189" tabindex="0"
														class="el-collapse-item__header">
														<i class="el-icon-Q"></i> <span>렌트가 대출한도 및 신용점수에
															영향을 주나요?</span><i
															class="el-collapse-item__arrow el-icon-arrow-right"></i>
													</div>
												</div>
												<div role="tabpanel" aria-hidden="true"
													aria-labelledby="el-collapse-head-1189"
													id="el-collapse-content-1189"
													class="el-collapse-item__wrap" style="display: none;">
													<div class="el-collapse-item__content">
														<div>
															<i class="el-icon-A"></i>
															<div class="faqA">
																<p>아니요, K Car 렌트는 개인 및 사업자의 신용점수에 영향을 주지 않습니다. 렌트
																	차량은 회계상 자산이 아니기 때문에 개인 및 사업자의 대출한도에도 영향이 없습니다.</p>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="el-collapse-item">
												<div role="tab" aria-controls="el-collapse-content-1982"
													aria-describedby="el-collapse-content-1982">
													<div role="button" id="el-collapse-head-1982" tabindex="0"
														class="el-collapse-item__header">
														<i class="el-icon-Q"></i> <span>차량 보험의 적용 범위는 어떻게
															되나요?</span><i
															class="el-collapse-item__arrow el-icon-arrow-right"></i>
													</div>
												</div>
												<div role="tabpanel" aria-hidden="true"
													aria-labelledby="el-collapse-head-1982"
													id="el-collapse-content-1982"
													class="el-collapse-item__wrap" style="display: none;">
													<div class="el-collapse-item__content">
														<div>
															<i class="el-icon-A"></i>
															<div class="faqA">
																<p>보험 적용 범위는 아래와 같습니다.</p>
																<p>
																	<br>
																</p>
																<p>■ 개인/개인사업자</p>
																<p>- 계약자, 계약자의 배우자, 계약자의 직계가족 및 형제자매</p>
																<p>
																	<br>
																</p>
																<p>■ 법인사업자</p>
																<p>- (임직원 특약을 선택하는 경우) 소속 임직원 및 고용 기사</p>
																<p>- (임직원 특약을 선택하지 않는 경우) 소속 임직원 및 고용 기사, 임원의 직계가족</p>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div id="spcList" class="flexSB mB32 mT100" data-v-ec1dd4fa="">
										<h2 class="infoHead2 mB0" data-v-ec1dd4fa="">
											렌트<span data-v-ec1dd4fa="">특가차량</span>
										</h2>
										<button type="button"
											class="el-button rightDesc viewAll el-button--text"
											data-v-ec1dd4fa="">
											<!---->
											<!---->
											<span> 더보기 </span>
										</button>
									</div>


								</div>
								<div class="carInfoRight" data-v-ec1dd4fa="">
									<div class="stikyWrap" data-v-ec1dd4fa="">
										<div class="sumSummaryWrap" data-v-ec1dd4fa="">
											<h3 class="carName" data-v-ec1dd4fa="">
												${rentUsedInfo.crBrand } ${rentUsedInfo.crName } <br
													data-v-ec1dd4fa="">${rentUsedInfo.crGrade }
											</h3>
											<ul class="dotLists" data-v-ec1dd4fa="">
												<li data-v-ec1dd4fa="">${rentUsedInfo.crYear }</li>
												<li data-v-ec1dd4fa="">${rentUsedInfo.crDistance }km</li>
												<li data-v-ec1dd4fa="">${rentUsedInfo.crFuel }</li>
												<li data-v-ec1dd4fa="">${rentUsedInfo.crColor }</li>
												<li data-v-ec1dd4fa="">${rentUsedInfo.crMission }</li>
												<li data-v-ec1dd4fa="">약정거리 연2만 Km</li>
											</ul>
											<div class="expectedRentPrice" data-v-ec1dd4fa="">
												<!---->
												<div class="rentPrice" data-v-ec1dd4fa="">
													<ul data-v-ec1dd4fa="">
														<li data-v-ec1dd4fa=""><strong data-v-ec1dd4fa="">선수금방식
																렌트비 <span class="pointC" data-v-ec1dd4fa="">
																	월${rentUsedInfo.crPrice }만원 / ${rentUsedInfo.crMonth }개월</span>
														</strong></li>

													</ul>
													<p data-v-ec1dd4fa="">초기납입금 ${rentUsedInfo.crFirstPrice }만원</p>
												</div>
											</div>
											<div class="searchTrigger box btnSpace8 pT0 el-row"
												data-v-ec1dd4fa="">
												<button class="button chosenApply favorite"
													data-v-ec1dd4fa="">
													
												</button>
												<!--<button class="button apply" data-v-ec1dd4fa="">  -->
													<a href="http://localhost/sms">상담예약</a><!-- </button>  -->
											</div>
											<div data-v-ec1dd4fa="" class="searchSth">
												<button data-v-ec1dd4fa="" type="button"
													class="el-button el-button--text">
													<!---->
													<!---->
													<span> 월렌트비가 비슷한 다른 차량 </span>
												</button>
											</div>
										</div>
										<div class="callContactBox" data-v-ec1dd4fa="">
											<strong class="pointC" data-v-ec1dd4fa="">렌터카 고객센터
												1588-5455</strong>
											<p data-v-ec1dd4fa="">상담시간: 월~금요일 09:00~18:00</p>
										</div>
										<div class="bannerArea mT20" data-v-ec1dd4fa="">
											<a href="#" data-v-ec1dd4fa=""><img
												src="/images/carInfo/bg-banner-half.png" alt=""
												data-v-ec1dd4fa="">
												<div data-v-ec1dd4fa="">
													<p class="tit" data-v-ec1dd4fa="">국카대표 KCar 3일 책임 환불제!</p>
													<p class="desc" data-v-ec1dd4fa="">위약금? Zero!! 단순변심도
														OK!!! 3일안에 전액 환불! 직영 중고차, 이젠 타보고 결정하세요!</p>
												</div></a>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!-- 모달 시작 -->
					<div data-v-ec1dd4fa="" class="carRentWrap">
						<div>
						<span id="reviewModalBack"></span>
							<div
								class="el-dialog__wrapper popup popCenter popFullBody rentResPopup active"
								style="z-index: 3000;display:none;" id="reviewModal">
								<div role="dialog" aria-modal="true" aria-label="상담예약신청"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">상담예약신청</span>
										<button type="button" aria-label="Close" onclick="reviewModalClose()"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<div class="el-dialog__body">
										<div class="popContent el-scrollbar">
											<div class="el-scrollbar__wrap"
												style="margin-bottom: -19px; margin-right: -19px;">
												<div class="el-scrollbar__view">
													<div class="popBodyInr">
														<h2 class="detailTitle">
															견적을 신청해 주시면 렌트 담당자가<br>확인한 후 빠른 시간 내에 연락을 드립니다.
														</h2>
														<p class="etcInfo">
															렌트 계약은 렌트 담당자 전화상담 후에 확정됩니다.<br> 견적문의 및 신청만으로는 계약이
															확정되지 않으니 참고해 주세요.
														</p>
														<p class="textBox">
															<span>${rentUsedInfo.crBrand } ${rentUsedInfo.crName } ${rentUsedInfo.crGrade }</span>
														</p>
														<div class="formWrapRen">
															<form class="el-form">
																<div class="col">
																	<div class="el-form-item">
																		<!---->
																		<div class="el-form-item__content">
																			<div class="titLabel">신청자명</div>
																			<div class="el-input el-input--suffix">
																				<!---->
																				<input type="text" autocomplete="off"
																					placeholder="${member.m_name }" class="el-input__inner">
																					
																				<!---->
																				<!---->
																				<!---->
																				<!---->
																			</div>
																			<!---->
																		</div>
																	</div>
																	<div class="el-form-item">
																		<!---->
																		<div class="el-form-item__content">
																			<div class="titLabel">휴대폰번호</div>
																			<div class="el-input el-input--suffix">
																				<!---->
																				<input type="text" autocomplete="off"
																					placeholder="${member.m_tel }" maxlength="13"
																					id="to" name="to" class="el-input__inner">
																				<button type="button" id="send">전송</button>
																				<!---->
																				<!---->
																				<!---->
																				<!---->
																			</div>
																			<!---->
																		</div>
																	</div>
																</div>
																<!-- 임시보관소 시작 -->
																
																<!-- 임시보관소 종료 -->
													</div>
												</div>
											</div>
											<div class="el-scrollbar__bar is-horizontal">
												<div class="el-scrollbar__thumb"
													style="transform: translateX(0%);"></div>
											</div>
											<div class="el-scrollbar__bar is-vertical">
												<div class="el-scrollbar__thumb"
													style="height: 49.2166%; transform: translateY(0%);"></div>
											</div>
										</div>
									</div>
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box Large popFixBtnM el-row">
													<button class="button apply">신청</button>
													<br>
												</div>
											</div></span>
									</div>
								</div>
							</div>
						</div>
						<div>
							<div class="el-dialog__wrapper popup fullPopup hauto active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="개인정보 취급동의"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">개인정보 취급동의</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box Large popFixBtnM el-row">
													<button class="button apply">확인</button>
												</div>
											</div></span>
									</div>
								</div>
							</div>
						</div>
						<div>
							<div class="el-dialog__wrapper popup fullPopup hauto active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="마케팅 활용"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">마케팅 활용</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box Large popFixBtnM el-row">
													<button class="button apply">확인</button>
												</div>
											</div></span>
									</div>
								</div>
							</div>
						</div>
						<div class="el-dialog__wrapper popup confirm noTitle"
							style="display: none;">
							<div role="dialog" aria-modal="true" aria-label="noTitle"
								class="el-dialog" style="margin-top: 15vh;">
								<div class="el-dialog__header">
									<span class="el-dialog__title">noTitle</span>
									<!---->
								</div>
								<!---->
								<!---->
							</div>
						</div>
					</div>
					<!-- 모달 종료 -->
					<!---->
					<div data-v-ec1dd4fa="">
						<div>
							<div class="el-dialog__wrapper popup popCenter wid480 heigAuto"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="공유하기"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">공유하기</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<!---->
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
												<span class="dialog-footer"><div
														class="footerBtnWrap">
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
					</div>
					<div data-v-ec1dd4fa="">
						<div>
							<div class="el-dialog__wrapper popup confirm noTitle"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="관심 차량 등록 알림"
									class="el-dialog" style="margin-top: 15vh;">
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
					<div data-v-ec1dd4fa="">
						<div>
							<div class="el-dialog__wrapper popup popCenter  active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="관심 차량 등록 알림"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">관심 차량 등록 알림</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
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
					<div data-v-ec1dd4fa="">
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
					<div class="el-dialog__wrapper popup popCenter"
						style="display: none;" data-v-ec1dd4fa="">
						<div role="dialog" aria-modal="true" aria-label="이 차의 주행거리는?"
							class="el-dialog" style="margin-top: 15vh;">
							<div class="el-dialog__header">
								<span class="el-dialog__title">이 차의 주행거리는?</span>
								<button type="button" aria-label="Close"
									class="el-dialog__headerbtn">
									<i class="el-dialog__close el-icon el-icon-close"></i>
								</button>
							</div>
							<!---->
							<!---->
						</div>
					</div>
					<div data-v-ec1dd4fa="">
						<div>
							<div class="el-dialog__wrapper popup popCenter hauto"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="보험이력 요약"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">보험이력 요약</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<!---->
								</div>
							</div>
							<div>
								<div class="el-dialog__wrapper popup fullPopup active"
									style="display: none;">
									<div role="dialog" aria-modal="true"
										aria-label="중고차 사고이력정보 보고서" class="el-dialog"
										style="margin-top: 15vh;">
										<div class="el-dialog__header">
											<span class="el-dialog__title">중고차 사고이력정보 보고서</span>
											<button type="button" aria-label="Close"
												class="el-dialog__headerbtn">
												<i class="el-dialog__close el-icon el-icon-close"></i>
											</button>
										</div>
										<!---->
										<div class="el-dialog__footer">
											<span class="dialog-footer"><div class="footerBtnWrap">
													<div class="searchTrigger box maxW400 el-row">
														<button class="button apply">닫기</button>
													</div>
												</div></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div data-v-ec1dd4fa="">
						<div>
							<div class="el-dialog__wrapper popup popCenter hauto"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="진단 사항 요약"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">진단 사항 요약</span>
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
					<div car-info="[object Object]" master="[object Object]"
						data-v-b113bdaa="" data-v-ec1dd4fa="">
						<div class="el-dialog__wrapper popup fullPopup"
							style="display: none;" data-v-b113bdaa="">
							<div role="dialog" aria-modal="true" aria-label="K Car 상세 진단 결과"
								class="el-dialog" style="margin-top: 15vh;">
								<div class="el-dialog__header">
									<span class="el-dialog__title">K Car 상세 진단 결과</span>
									<button type="button" aria-label="Close"
										class="el-dialog__headerbtn">
										<i class="el-dialog__close el-icon el-icon-close"></i>
									</button>
								</div>
								<!---->
								<!---->
							</div>
						</div>
						<div class="el-dialog__wrapper popup fullPopup active"
							style="display: none;" data-v-b113bdaa="">
							<div role="dialog" aria-modal="true" aria-label="고지사항"
								class="el-dialog" style="margin-top: 15vh;">
								<div class="el-dialog__header">
									<span class="el-dialog__title">고지사항</span>
									<button type="button" aria-label="Close"
										class="el-dialog__headerbtn">
										<i class="el-dialog__close el-icon el-icon-close"></i>
									</button>
								</div>
								<!---->
								<div class="el-dialog__footer">
									<span class="dialog-footer"><div class="footerBtnWrap">
											<div class="searchTrigger box maxW320 el-row">
												<button type="button" class="button apply">닫기</button>
											</div>
										</div></span>
								</div>
							</div>
						</div>
						<div class="el-dialog__wrapper popup fullPopup"
							style="display: none;" data-v-b113bdaa="">
							<div role="dialog" aria-modal="true" aria-label="기본 진단 결과"
								class="el-dialog" style="margin-top: 15vh;">
								<div class="el-dialog__header">
									<span class="el-dialog__title">기본 진단 결과</span>
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
					<div class="el-dialog__wrapper popup fullPopup"
						style="display: none;" data-v-ec1dd4fa="">
						<div role="dialog" aria-modal="true"
							aria-label="중고자동차 성능∙상태 점검기록부" class="el-dialog"
							style="margin-top: 15vh;">
							<div class="el-dialog__header">
								<span class="el-dialog__title">중고자동차 성능∙상태 점검기록부</span>
								<button type="button" aria-label="Close"
									class="el-dialog__headerbtn">
									<i class="el-dialog__close el-icon el-icon-close"></i>
								</button>
							</div>
							<!---->
							<!---->
						</div>
					</div>
					<!---->
					<div class="el-dialog__wrapper popup popCenter"
						style="display: none;" data-v-adb17354="" data-v-ec1dd4fa="">
						<div role="dialog" aria-modal="true" aria-label="옵션 상세"
							class="el-dialog" style="margin-top: 15vh;">
							<div class="el-dialog__header">
								<span class="el-dialog__title">옵션 상세</span>
								<button type="button" aria-label="Close"
									class="el-dialog__headerbtn">
									<i class="el-dialog__close el-icon el-icon-close"></i>
								</button>
							</div>
							<!---->
							<!---->
						</div>
					</div>
					<div class="el-dialog__wrapper popup popCenter"
						style="display: none;" data-v-ec1dd4fa="">
						<div role="dialog" aria-modal="true"
							aria-label="중고자동차 성능 · 상태 점검기록부" class="el-dialog"
							style="margin-top: 15vh; width: 900px;">
							<div class="el-dialog__header">
								<span class="el-dialog__title">중고자동차 성능 · 상태 점검기록부</span>
								<button type="button" aria-label="Close"
									class="el-dialog__headerbtn">
									<i class="el-dialog__close el-icon el-icon-close"></i>
								</button>
							</div>
							<!---->
							<!---->
						</div>
					</div>
					<div class="el-dialog__wrapper popup fullPopup"
						style="display: none;" data-v-ec1dd4fa="">
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
											<button type="button" class="button apply">닫기</button>
										</div>
									</div></span>
							</div>
						</div>
					</div>
					<div class="el-dialog__wrapper popup popCenter wid480 hauto active"
						style="display: none;" data-v-ec1dd4fa="">
						<div role="dialog" aria-modal="true" aria-label="보험 보상 범위"
							class="el-dialog" style="margin-top: 15vh;">
							<div class="el-dialog__header">
								<span class="el-dialog__title">보험 보상 범위</span>
								<button type="button" aria-label="Close"
									class="el-dialog__headerbtn">
									<i class="el-dialog__close el-icon el-icon-close"></i>
								</button>
							</div>
							<!---->
							<div class="el-dialog__footer">
								<span class="dialog-footer"><div class="footerBtnWrap">
										<div class="searchTrigger box Large popFixBtnM el-row">
											<button type="button" class="button apply">확인</button>
										</div>
									</div></span>
							</div>
						</div>
					</div>
					<div class="el-dialog__wrapper popup confirm noTitle"
						style="display: none;" data-v-ec1dd4fa="">
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
							<!---->
						</div>
					</div>
					<div class="el-dialog__wrapper popup confirm noTitle"
						style="display: none;" data-v-ec1dd4fa="">
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
					<div class="el-dialog__wrapper popup confirm noTitle"
						style="display: none;" data-v-ec1dd4fa="">
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

				<%@include file="/WEB-INF/default/footer.jsp"%>

			</div>
		</div>
	</div>

	<script>window.__NUXT__=(function(a,b,c,d){return {layout:"LayoutDetail",data:[{metaData:{META_KEYWORD:"중고차, 중고차 시세, K Car 직영차, 중고차팔기, 보험, 보증, 진단, 대출, 중고차 매매, 국산차, 수입차",TITLE:"차량상세 중고차렌트",META_DESC:"대한민국 No.1 직영중고차. 중고차 매입, 중고차 판매, 3일 책임 환불제, 온라인 구매 홈서비스, 중고차 매매 사이트, 중고차 보증"}}],fetch:{},error:c,state:{guest:{guest:{id:a,name:a,phone:a}},page:{name:b},session:{member:{membId:a,membNm:a,mbpno:a,email:a,regDttm:a},token:d},sample:{id:b,name:b},cmnCd:{cmnCd:{},other:{}},cmmCd:{cmnCd:{},other:{}},sc:{homeSvc:{formData:{}}}},serverRendered:d,routePath:"\u002Fur\u002FRentDtl",config:{_app:{basePath:"\u002F",assetsPath:"\u002F_nuxt\u002F",cdnURL:c}}}}(void 0,"",null,true));</script>
	<script src="/_nuxt/037d689.js" defer=""></script>
	<script src="/_nuxt/cbc42cf.js" defer=""></script>
	<script src="/_nuxt/59d2b38.js" defer=""></script>
	<script src="/_nuxt/75ed485.js" defer=""></script>
	<script src="/_nuxt/a9a61d7.js" defer=""></script>
	<script src="/_nuxt/1e3afca.js" defer=""></script>
	<script src="/_nuxt/89fbbcc.js" defer=""></script>
	<script src="/_nuxt/cb4d74d.js" defer=""></script>
	<script src="/_nuxt/5bab1e0.js" defer=""></script>


	<iframe id="groobeeBox" name="groobeeBox" style="display: none;"></iframe>
	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","771045850193577");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="">console.log("\ud50c\ub7ab\ud3fc: PC");</script>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/kas/static/kp.js"></script>
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>
	<div id="criteo-tags-div" style="display: none;"></div>
	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
<script>
//review 모달창
var reviewModalBack = document.getElementById('reviewModalBack');
var reviewModal = document.getElementById('reviewModal');

function reviewModalOpen() {
	document.body.classList.add('el-popup-parent--hidden');
	reviewModal.style.display="flex";
	reviewModalBack.style.display="flex";
}
//modal창 close
function reviewModalClose() {
	reviewModal.style.display="none";
	reviewModalBack.style.display="none";
	document.body.classList.remove('el-popup-parent--hidden');
}
</script>

</body>
</html>