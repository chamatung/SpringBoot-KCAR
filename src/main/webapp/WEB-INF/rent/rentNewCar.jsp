<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="rentNewCar_style.jsp" %>
<%-- <%@ include file="rent_style.jsp" %> 신차렌트부분은 rent_style이 적용안됨 --%>
<html lang="ko" class="chrome">
<head>
<title>신차렌트</title>
<meta data-n-head="ssr" charset="utf-8">
<meta data-n-head="ssr" name="viewport"
	content="width=device-width, initial-scale=1">
<meta data-n-head="ssr" data-hid="description" name="description"
	content="대한민국 No.1 직영 중고차. 중고차 매입, 중고차 판매, 중고차 최초 환불 서비스, 중고차 온라인 구매 홈서비스, 중고차 매매, 중고차 사이트 ">
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
<link data-n-head="ssr" rel="icon" type="image/x-icon"
	href="/favicon.ico">
<script
	src="https://connect.facebook.net/signals/config/771045850193577?v=2.9.69&amp;r=stable"
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
<link rel="preload" href="/_nuxt/f7a91b8.js" as="script">
<link rel="preload" href="/_nuxt/89fbbcc.js" as="script">
<link rel="preload" href="/_nuxt/38f7038.js" as="script">
<link rel="preload" href="/_nuxt/32ff197.js" as="script">
<link rel="preload" href="/_nuxt/5a675ee.js" as="script">

<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/938190343/?random=1659345092410&amp;cv=9&amp;fst=1659345092410&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635471&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=15&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fur%2FNwcaRentList&amp;ref=https%3A%2F%2Fkauth.kakao.com%2F&amp;tiba=%EB%A0%8C%ED%8A%B8%20%ED%8A%B9%EA%B0%80&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/938190343/?random=1659345092413&amp;cv=9&amp;fst=1659345092413&amp;num=1&amp;value=0&amp;label=07NXCJrT4bcDEIfMrr8D&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;eid=376635471&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=15&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2wg7r0&amp;sendb=1&amp;ig=1&amp;frm=0&amp;url=https%3A%2F%2Fwww.kcar.com%2Fur%2FNwcaRentList&amp;ref=https%3A%2F%2Fkauth.kakao.com%2F&amp;tiba=%EB%A0%8C%ED%8A%B8%20%ED%8A%B9%EA%B0%80&amp;auid=481675456.1659003999&amp;hn=www.googleadservices.com&amp;bttype=purchase&amp;async=1&amp;rfmt=3&amp;fmt=4"></script>
<meta data-n-head="ssr" data-hid="title" name="title" content="신차렌트">
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
				<%@include file="/WEB-INF/default/header.jsp" %>
				<div class="rentWrap contWrap">
					<div class="hsBanner newBanner">
						<p class="title">신차렌트</p>
						<p class="desc">
							신차 구매보다 합리적인 신차렌트!<br> 믿을 수 있는 K Car에서 이용해 보세요.
						</p>
					</div>
					<div class="tabsWrap el-row">
						<div class="tabsCol02 el-tabs el-tabs--top">
						
						
							<div class="el-tabs__header is-top">
								<div class="el-tabs__nav-wrap is-top">
									<div class="el-tabs__nav-scroll">
										<div role="tablist" class="el-tabs__nav is-top"
											style="transform: translateX(0px);">
											<div class="el-tabs__active-bar is-top" id="navBar"
												style="width: 610px; transform: translateX(0px);"></div>
											
											
												
											<div id="tab-innertab01" aria-controls="pane-innertab01" onclick="noticeClick()"
												role="tab" aria-selected="true" tabindex="0"
												class="el-tabs__item is-top is-active">
<!-- 												<button class="tab-button" data-tab-section="tab-section-1"> -->
												<span id="navNotice">신차렌트</span>
<!-- 												</button> -->
												</div>
												
											<div id="tab-innertab02" aria-controls="pane-innertab02" onclick="eventClick()"
												role="tab" tabindex="-1" class="el-tabs__item is-top">
<!-- 												<button class="tab-button" data-tab-section="tab-section-2"> -->
												<span id="navEvent">신차렌트
<!-- 												</button> -->
												이용안내</span></div>
												
											
												
										</div>
									</div>
								</div>
							</div>
							<div class="el-tabs__content">
								<div role="tabpanel" id="pane-innertab02"
									aria-labelledby="tab-innertab01" class="el-tab-pane">
									
									<section id="tab-section-1" class="tab-section">
									<div class="newRent" id="newRent">
									
										<h4 class="tit02">케이카 인기차종</h4>
										<p class="txt02 mT8">놓치면 아쉬울 신차 TOP 14!</p>
										<div class="newRentWrap">
											<ul class="newRentLft">
												<li><span class="newRentImg"><img alt=""
														src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/newcaRent/2022/07/k82ZfKYnlNUJbpjbbegk3zI.jpg"></span>
													<p class="newRentT">
														<img src="/images/common/brandlogo/logos-brand-kia.png"
															alt="기아">K8 <span class="subNameTitle"> </span>
													</p> <a class="newRentOp el-link el-link--default is-underline">
														<!---->
														<span class="el-link--inner"> 옵션/조건 보기 </span>
													<!---->
												</a>
													<ul class="newRentCost">
														<li><p class="NRT">차량가격</p>
															<p class="NRC">3,380만원</p></li>
														<li><p class="NRT">계약조건</p>
															<p class="NRC">36개월/ 선납율 30%</p></li>
													</ul>
													<p class="newRentMC">
														월 37 만원 부터~ <span>(세금/보험료포함)</span>
													</p>
													<div class="searchTrigger box Large el-row">
														<button class="button apply">상담예약</button>
													</div></li>
											</ul>
											<div
												class="slideProdNew swiperProgress swiper-container swiper-container-initialized swiper-container-horizontal">
												<div class="swiper-wrapper"
													style="transform: translate3d(0px, 0px, 0px);">
													<div class="swiper-slide swiper-slide-active"
														style="width: 806px;">
														<ul class="prodNewList">
															<li><a href="javascript:void(0)" class="item"><span
																	class="img"><img
																		src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/newcaRent/2022/07/k82ZfKYnlNUJbpjbbegk3zI.jpg"
																		alt="K8"></span> <strong class="nameTitle">K8
																		<span class="subNameTitle"> (가솔린)</span>
																</strong></a></li>
															<li><a href="javascript:void(0)" class="item"><span
																	class="img"><img
																		src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/newcaRent/2022/07/쏘나타DN82xdQKnwknPaSE1ZETq6k4.jpg"
																		alt="쏘나타"></span> <strong class="nameTitle">쏘나타
																		<span class="subNameTitle"> (가솔린)</span>
																</strong></a></li>
															<li><a href="javascript:void(0)" class="item"><span
																	class="img"><img
																		src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/newcaRent/2022/07/팰리신형2y6wZvSbidtPIGPram2gQ.jpg"
																		alt="팰리세이드"></span> <strong class="nameTitle">팰리세이드
																		<span class="subNameTitle"> (가솔린)</span>
																</strong></a></li>
															<li><a href="javascript:void(0)" class="item"><span
																	class="img"><img
																		src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/newcaRent/2022/07/그랜저IG25pnK22RbbmE2AAG7fqHh.jpg"
																		alt="그랜저"></span> <strong class="nameTitle">그랜저
																		<span class="subNameTitle"> (가솔린)</span>
																</strong></a></li>
															<li><a href="javascript:void(0)" class="item"><span
																	class="img"><img
																		src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/newcaRent/2022/07/아반떼_CN72xN9i9tmxb1LSxfm1illG.jpg"
																		alt="아반떼"></span> <strong class="nameTitle">아반떼
																		<span class="subNameTitle"> (가솔린)</span>
																</strong></a></li>
															<li><a href="javascript:void(0)" class="item"><span
																	class="img"><img
																		src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/newcaRent/2022/07/k32UNZLjivV5V4GWGNvhZAQ.jpg"
																		alt=" K3"></span> <strong class="nameTitle">
																		K3 <span class="subNameTitle"> (가솔린)</span>
																</strong></a></li>
														</ul>
													</div>
													<div class="swiper-slide swiper-slide-next"
														style="width: 806px;">
														<ul class="prodNewList">
															<li><a href="javascript:void(0)" class="item"><span
																	class="img"><img
																		src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/newcaRent/2022/07/카니발2jxo0zKLH2mJ1x91KKQhl.jpg"
																		alt="카니발"></span> <strong class="nameTitle">카니발
																		<span class="subNameTitle"> (디젤)</span>
																</strong></a></li>
															<li><a href="javascript:void(0)" class="item"><span
																	class="img"><img
																		src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/newcaRent/2022/07/스포티지24YGlpsGtBU7IarS8qesy.jpg"
																		alt="스포티지"></span> <strong class="nameTitle">스포티지
																		<span class="subNameTitle"> (LPG)</span>
																</strong></a></li>
															<li><a href="javascript:void(0)" class="item"><span
																	class="img"><img
																		src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/newcaRent/2022/07/k92LAIfJpuItJAOHHVTN2Oe.jpg"
																		alt="K9"></span> <strong class="nameTitle">K9
																		<span class="subNameTitle"> (가솔린)</span>
																</strong></a></li>
															<li><a href="javascript:void(0)" class="item"><span
																	class="img"><img
																		src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/newcaRent/2022/07/캐스퍼2GPXpU0eFsrFFJZsQ7NKF.jpg"
																		alt="캐스퍼"></span> <strong class="nameTitle">캐스퍼
																		<span class="subNameTitle"> (가솔린)</span>
																</strong></a></li>
															<li><a href="javascript:void(0)" class="item"><span
																	class="img"><img
																		src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/newcaRent/2022/07/k52mcsqddnW2P3aFrpS00ww.jpg"
																		alt="K5"></span> <strong class="nameTitle">K5
																		<span class="subNameTitle"> (가솔린)</span>
																</strong></a></li>
															<li><a href="javascript:void(0)" class="item"><span
																	class="img"><img
																		src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/newcaRent/2022/07/레이29tDLHB5qkTpTluHFKaNg.jpg"
																		alt="레이"></span> <strong class="nameTitle">레이
																		<span class="subNameTitle"> (가솔린)</span>
																</strong></a></li>
														</ul>
													</div>
													<div class="swiper-slide" style="width: 806px;">
														<ul class="prodNewList">
															<li><a href="javascript:void(0)" class="item"><span
																	class="img"><img
																		src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/newcaRent/2022/07/G802EqNDFokwwQNNTHDVDgBA.jpg"
																		alt="G80"></span> <strong class="nameTitle">G80
																		<span class="subNameTitle"> (가솔린)</span>
																</strong></a></li>
															<li><a href="javascript:void(0)" class="item"><span
																	class="img"><img
																		src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/newcaRent/2022/07/쏘렌토2IchkO23LLn54bnkSWiuw.jpg"
																		alt="쏘렌토"></span> <strong class="nameTitle">쏘렌토
																		<span class="subNameTitle"> (가솔린)</span>
																</strong></a></li>
														</ul>
													</div>
												</div>
												<div class="navigation">
													<div class="swiper-button-prev swiper-button-disabled"
														tabindex="0" role="button" aria-label="Previous slide"
														aria-disabled="true"></div>
													<div class="swiper-button-next" tabindex="0" role="button"
														aria-label="Next slide" aria-disabled="false"></div>
												</div>
												<div class="progressbar">
													<div
														class="swiper-pagination swiper-pagination-progressbar">
														<span class="swiper-pagination-progressbar-fill"
															style="transform: translate3d(0px, 0px, 0px) scaleX(0.333333) scaleY(1); transition-duration: 300ms;"></span>
													</div>
												</div>
												<span class="swiper-notification" aria-live="assertive"
													aria-atomic="true"></span>
											</div>
										</div>
										<div class="telCust">
											<p>
												<span>전화문의</span>1855-0052
											</p>
											<div class="searchTrigger box Inner01 el-row">
												<button class="button apply">상담예약</button>
											</div>
										</div>
									</div>
									</section>
									
									
								</div>
								<div role="tabpanel" aria-hidden="true" id="pane-innertab01"
									aria-labelledby="tab-innertab02" class="el-tab-pane"
									style="display: none;">
									
									<section id="tab-section-2" class="tab-section" hidden>
									<div class="newRentInfo" id="newRentInfo">
									
										<h4 class="tit02">신차렌트, 무엇이 좋나요?</h4>
										<p class="txt02 mT8">신차 구매보다 합리적인 신차렌트의 장점을 확인해 보세요.</p>
										<div class="table_ty01 mT40">
											<table>
												<caption>신차렌트 이용안내</caption>
												<colgroup>
													<col style="width: 8.2rem;">
													<col style="width: 56.8rem;">
													<col style="width: auto;">
												</colgroup>
												<thead>
													<tr>
														<th scope="col">구분</th>
														<th scope="col" class="useNwcaTit">신차렌트 이용시</th>
														<th scope="col">신차 구매시</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<th scope="row">재무회계</th>
														<td class="useNwca"><p>
																- 취등록세, 공채매입, 할부이자, 수수료, 보험료, 세금 등 초기 부대비용 없음<br> -
																세금계산서 하나로 간편한 회계처리<br> - 자금운용계획수립 용이<br> -
																렌트비용 지불(전액 손비 처리)
															</p></td>
														<td><p>
																- 초기구입 비용 자금 부감<br> - 감가상각비, 관리비용 회계 처리<br> -
																구입·매각·관리 업무 등 복잡한 회계 처리
															</p></td>
													</tr>
													<tr>
														<th scope="row">차량유지</th>
														<td class="useNwca"><p>
																- 차량 관리 대행으로 인건비 및 시간 절감<br> - 전문적 순회정비로 최적의 차량상태
																유지
															</p></td>
														<td><p>
																- 보험, 검사, 세금 등 차량 유지 비용 발생<br> - 정기검사, 정비, 수리 등 차량
																관리 필요<br> - 차량 유지 및 관리에 따른 인건비 발생
															</p></td>
													</tr>
													<tr>
														<th scope="row">치량관리</th>
														<td class="useNwca"><p>- 전국 정비 협력사, 애니카랜드 지점에서 제휴
																사고 처리 및 정비서비스 이용 가능</p></td>
														<td><p>
																- 정비, 수리, 차량 고장 등 시간 및 경비 발생<br> - 차량 보증수리 및 정비
																공장과의 비용 협의
															</p></td>
													</tr>
													<tr>
														<th scope="row">사고처리</th>
														<td class="useNwca"><p>
																- 사고 처리 업무 대행으로 인건비 및 시간 절감<br> - 임시 차량 무상 대여로 업무
																공백 최소화<br> - 차량 가격 손실 및 보험료 상승 없음
															</p></td>
														<td><p>
																- 사고 발생 시 시간 및 경비 추가 발생<br> - 보험사 비용 정산, 보험금 청구 수속
																필요
															</p></td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="newRentInfo2">
											<h4 class="tit02">차량 관리 업무 원스톱 서비스</h4>
											<p class="txt02 mT8">차량 구매부터 보험료, 각종 세금 납부, 법정 검사, 차량 유지
												보수, 사고 처리까지 모든 차량 관리를 책임져드려요.</p>
											<ul class="newRentService">
												<li><img src="/images/rent/rent-new-car-01.svg"
													alt="아이콘">
													<h5>비용 절감 UP</h5>
													<p>
														부담되는 초기 비용은 물론<br> 정비·보험·검사 등 차량 유지<br> 비용까지 아낄
														수 있어요.
													</p></li>
												<li><img src="/images/rent/rent-new-car-02.svg"
													alt="아이콘">
													<h5>차량 효율 UP</h5>
													<p>
														교통사고가 나도 처리가 간편하고<br> 정기적으로 차량 관리까지<br> 받을 수
														있으니까 차량 효율이<br> 좋아져요.
													</p></li>
												<li><img src="/images/rent/rent-new-car-03.svg"
													alt="아이콘">
													<h5>관리 효과 UP</h5>
													<p>
														월 렌트비에 모든 관리비용이<br> 포함되니까 사고 및 수리 비용<br> 부담이
														없어요.
													</p></li>
												<li><img src="/images/rent/rent-new-car-04.svg"
													alt="아이콘">
													<h5>업무 효율 UP</h5>
													<p>
														신차 출고 전, 또는 차량을<br> 수리해야 할 때 임시 차량을<br> 무료로 대여받을
														수 있어<br> 업무에 지장이 없어요.
													</p></li>
											</ul>
										</div>
										<div class="newRentInfo2">
											<h4 class="tit02">신차렌트 이용 안내</h4>
											<ul class="newRentUse">
												<li><span><img
														src="/images/rent/rent-use-01.svg" alt=""></span>
													<p>
														<label>STEP1</label> 상담예약 신청
													</p></li>
												<li><span><img
														src="/images/rent/rent-use-02.svg" alt=""></span>
													<p>
														<label>STEP2</label> 이용 상담
													</p></li>
												<li><span><img
														src="/images/rent/rent-use-03.svg" alt=""></span>
													<p>
														<label>STEP3</label> 견적신청서 작성
													</p></li>
												<li><span><img
														src="/images/rent/rent-use-04.svg" alt=""></span>
													<p>
														<label>STEP4</label> 담당자 접수 및 견적서 발송
													</p></li>
												<li><span><img
														src="/images/rent/rent-use-05.svg" alt=""></span>
													<p>
														<label>STEP5</label> 계약 진행
													</p></li>
											</ul>
										</div>
									</div>
									</section>
									<script>
    const $nav = document.querySelector('#tab-button-nav')
    const $sections = document.querySelectorAll('.tab-section');

    $nav.addEventListener('click', (e) => {
      if (!e.target.classList.contains('tab-button')) {
        return;
      }
      
      const focusedTabId = e.target.dataset.tabSection;

      $sections.forEach(($section) => {
        if ($section.id === focusedTabId) {
          $section.removeAttribute('hidden');
        } else {
          $section.setAttribute('hidden', true);
        }
      });
    });
  </script>
									
									
									
									
								</div>
							</div>
						</div>
						<div>
							<div
								class="el-dialog__wrapper popup confirm noTitle rentOptPopup"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="옵션조건보기"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">옵션조건보기</span>
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
					<div class="carRentWrap">
						<div>
							<div
								class="el-dialog__wrapper popup popCenter popFullBody rentResPopup active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="상담예약신청"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">상담예약신청</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box Large popFixBtnM el-row">
													<button class="button apply">신청</button>
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
				</div>
				<%@include file="/WEB-INF/default/footer.jsp" %>
			</div>
		</div>
	</div>
	<script>window.__NUXT__=(function(a,b,c,d){return {layout:"default",data:[{}],fetch:{},error:c,state:{guest:{guest:{id:a,name:a,phone:a}},page:{name:b},session:{member:{membId:a,membNm:a,mbpno:a,email:a,regDttm:a},token:d},sample:{id:b,name:b},cmnCd:{cmnCd:{},other:{}},cmmCd:{cmnCd:{},other:{}},sc:{homeSvc:{formData:{}}}},serverRendered:d,routePath:"\u002Faccount\u002Fsocial-complete",config:{_app:{basePath:"\u002F",assetsPath:"\u002F_nuxt\u002F",cdnURL:c}}}}(void 0,"",null,true));</script>
	<script src="/_nuxt/f7a91b8.js" defer=""></script>
	<script src="/_nuxt/5a675ee.js" defer=""></script>
	<script src="/_nuxt/89fbbcc.js" defer=""></script>
	<script src="/_nuxt/38f7038.js" defer=""></script>
	<script src="/_nuxt/32ff197.js" defer=""></script>


	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","771045850193577");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/kas/static/kp.js"></script>
	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","771045850193577");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/kas/static/kp.js"></script>
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
	<div id="criteo-tags-div" style="display: none;">
		<script async="true" type="text/javascript"
			src="https://sslwidget.criteo.com/event?a=73896&amp;v=5.12.0&amp;p0=e%3Dexd%26site_type%3Dd%26ref%3Dhttps%253A%252F%252Fkauth.kakao.com&amp;p1=e%3Dvh&amp;p2=e%3Ddis&amp;adce=1&amp;bundle=0gZl3V9TV0ZqSFBUYkJFVzhqU2lmaU9uTVMlMkZEb29SaUpFcnhZUHElMkZaJTJCTENDajJJT0NwdXdrNG1Ub2lSM0xrWmVQOUVtVDhET0w2UXVpb2FXQ3EwcDhNWlpHMnpNM0c0Zng1eWM0TjNqUHhRUE52SWVmSlhTMzMxMzZzZlRlekFnUkVNWg&amp;tld=kcar.com&amp;fu=https%253A%252F%252Fwww.kcar.com%252Fur%252FNwcaRentList&amp;pu=https%253A%252F%252Fkauth.kakao.com%252F&amp;dtycbr=43589"></script>
	</div>
	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<iframe src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE"
		style="display: none;"></iframe>
	<iframe src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE"
		style="display: none;"></iframe>
	<iframe src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE"
		style="display: none;"></iframe>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<iframe src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE"
		style="display: none;"></iframe>
	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","771045850193577");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/kas/static/kp.js"></script>
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<iframe src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE"
		style="display: none;"></iframe>
	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","771045850193577");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/kas/static/kp.js"></script>
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<iframe src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE"
		style="display: none;"></iframe>
	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","771045850193577");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/kas/static/kp.js"></script>
	<iframe id="groobeeBox" name="groobeeBox" style="display: none;"></iframe>
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 104px; left: 383px; z-index: 2006; display: none;"
		x-placement="bottom-start">
		<ul role="menu"
			class="el-menu el-menu--popup el-menu--popup-bottom-start">
			<div class="menuTitArea">
				<strong class="menuTit">렌트</strong>
			</div>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				중고차렌트</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				렌트특가</li>
			<li role="menuitem" tabindex="-1"
				class="el-menu-item menuItem is-active">신차렌트</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				기사포함렌트</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				렌트지점</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				렌트일반정비소</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				렌트사고정비소</li>
		</ul>
	</div>
	<iframe src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE"
		style="display: none;"></iframe>
	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","771045850193577");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/kas/static/kp.js"></script>
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<iframe src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE"
		style="display: none;"></iframe>
	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","771045850193577");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/kas/static/kp.js"></script>
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<iframe src="https://bid.g.doubleclick.net/xbbe/pixel?d=KAE"
		style="display: none;"></iframe>
	<script type="text/javascript" id=""
		src="//static.criteo.net/js/ld/ld.js"></script>
	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","771045850193577");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<script type="text/javascript" id="" charset="UTF-8"
		src="//t1.daumcdn.net/kas/static/kp.js"></script>
	<script type="text/javascript" id="">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:73896},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<script>
	var navBar = document.getElementById("navBar");
	   var navNotice = document.getElementById("navNotice");
	   var navEvent = document.getElementById("navEvent");
	   
	      function noticeClick() {
	         if(document.getElementById("pane-innertab01").style.display = "block"){
	            document.getElementById("pane-innertab01").style.display = "none";
	         }
	         document.getElementById("pane-innertab02").style.display = "block";
	         
	         navBar.style.transform = "translateX(0px)";
	         
	         navNotice.style.color = "#b70f28";
	         navEvent.style.color = "black";
	         
	      }
	      
	      function eventClick() {
	         if(document.getElementById("pane-innertab02").style.display = "block"){
	            document.getElementById("pane-innertab02").style.display = "none";
	         }
	         document.getElementById("pane-innertab01").style.display = "block";
	         
	         navBar.style.transform = "translateX(610px)";
	         navEvent.style.color = "#b70f28";
	         navNotice.style.color = "black";
	      }
	</script>
</body>
</html>