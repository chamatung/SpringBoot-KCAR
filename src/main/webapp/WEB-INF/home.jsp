<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ko" class="chrome">
<head>
<title>K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카</title>
<%@ include file="member/home_style.jsp" %>
<c:if test="${not empty msg }">
	<script>
		alert("${msg}");
	</script>
</c:if>
</head>
<body>
<c:if test="${not empty msg }">
<script>
		alert('${msg}');
	</script>
</c:if>
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
				<!-- header -->
				<%@ include file="/WEB-INF/default/header.jsp" %>
				<!-- header -->
				<div class="mainContents">
					<div></div>
					<div aria-label="새로워진 K Car" class="section mainVisual">
						<div class="visualWrapImg">
							<div class="image_slide fade_slider">
								<ul>
									<li class="slide-item" style="transition-duration: 2000ms;"><div
											class="imgbox">
											<a><img
												src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/SLOT/PC_3일2B30x0YGtCaQXNNv9WZl.png"
												alt="메인배너2"
												onerror="this.src='/images/search/bg_no_Img_lg.png'"></a>
										</div>
										<div class="textbox"></div></li>
									<li class="slide-item active"
										style="transition-duration: 2000ms;"><div class="imgbox">
											<a><img
												src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/SLOT/PC_Main_img_02YOyILIf64eT0zJhJ3XwN.png"
												alt="메인배너3"
												onerror="this.src='/images/search/bg_no_Img_lg.png'"></a>
										</div>
										<div class="textbox"></div></li>
									<li class="slide-item" style="transition-duration: 2000ms;"><div
											class="imgbox">
											<a><img
												src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/SLOT/PC_Main_img_05qMMO6EpbKzzl1jJf6nt8.png"
												alt="메인배너4"
												onerror="this.src='/images/search/bg_no_Img_lg.png'"></a>
										</div>
										<div class="textbox"></div></li>
									<li class="slide-item" style="transition-duration: 2000ms;"><div
											class="imgbox">
											<a><img
												src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/SLOT/PC_렌트V1s3A0UOqtzQAJsHJrFe.png"
												alt="메인배너6"
												onerror="this.src='/images/search/bg_no_Img_lg.png'"></a>
										</div>
										<div class="textbox"></div></li>
									<li class="slide-item" style="transition-duration: 2000ms;"><div
											class="imgbox">
											<a><img
												src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/SLOT/PC_할부nmwIned7mNYRMdu9LQv6.png"
												alt="메인배너5"
												onerror="this.src='/images/search/bg_no_Img_lg.png'"></a>
										</div>
										<div class="textbox"></div></li>
								</ul>
							</div>
							<div class="thumb_slide">
								<ul>
									<li class="slide-item"><a href="#">K Car 직영차</a></li>
									<li class="slide-item active"><a href="#">내차사기 홈서비스</a></li>
									<li class="slide-item"><a href="#">내차팔기 홈서비스</a></li>
									<li class="slide-item"><a href="#">렌트</a></li>
									<li class="slide-item"><a href="#">금융서비스</a></li>
								</ul>
								<div class="custom_scrollbar">
									<div class="bar" style="height: 100%;"></div>
								</div>
							</div>
							<div class="controll">
								<span class="number"><strong class="current">2</strong><span
									class="total">5</span></span>
								<button type="button"
									class="el-button btn_prev el-button--default">
									<!---->
									<!---->
									<span><i class="_hidden">이전</i></span>
								</button>
								<button type="button"
									class="el-button btn_next el-button--default">
									<!---->
									<!---->
									<span><i class="_hidden">다음</i></span>
								</button>
								<button type="button"
									class="el-button btn_stop el-button--default">
									<!---->
									<!---->
									<span><i class="_hidden">정지</i></span>
								</button>
								<button type="button"
									class="el-button btn_play el-button--default">
									<!---->
									<!---->
									<span><i class="_hidden">재생</i></span>
								</button>
							</div>
						</div>
					</div>
					<div aria-label="왜 K Car 일까요?" class="section section2">
						<a><div class="htitGroup">
								<h2 class="htit">왜 K Car를 선택할까요?</h2>
								<div class="flagList">
									<span class="flag">#직영</span> <span class="flag">#온라인</span> <span
										class="flag">#품질점검</span>
								</div>
							</div></a>
						<ul class="linkList">
							<li class="item1"><a href="/" aria-current="page"
								class="nuxt-link-exact-active nuxt-link-active"> 내차팔기 홈서비스 </a></li>
							<li class="item2"><a href="/" aria-current="page"
								class="nuxt-link-exact-active nuxt-link-active"> 내차사기 홈서비스 </a></li>
							<li class="item3"><a href="/" aria-current="page"
								class="nuxt-link-exact-active nuxt-link-active"> K Car 보증 </a></li>
							<li class="item4"><a href="/" aria-current="page"
								class="nuxt-link-exact-active nuxt-link-active"> 3D 라이브 뷰 </a></li>
							<li class="item5"><a href="/" aria-current="page"
								class="nuxt-link-exact-active nuxt-link-active"> 테마기획전 </a></li>
						</ul>
					</div>
					<div aria-label="어떤 차를 찾으세요?" class="section section3">
						<div class="secWrap">
							<h2 class="htit">어떤 차를 찾으세요?</h2>
							<div class="centerSearchForm">
								<div class="searchBox">
									<div class="areaSearch">
										<div class="el-input el-input--suffix">
											<!---->
											<input type="text" autocomplete="off"
												placeholder="모델명을 입력해주세요. 예) 아이오닉5" class="el-input__inner">
											<!---->
											<!---->
											<!---->
											<!---->
										</div>
										<button type="button"
											class="el-button icon-search el-button--default">
											<!---->
											<!---->
											<span><span class="_hidden">검색</span></span>
										</button>
									</div>
								</div>
								<div class="flagitem">
									<span class="flag"><a>#그랜저 IG</a></span><span class="flag"><a>#아반떼
											AD</a></span><span class="flag"><a>#5시리즈 (G30)</a></span><span
										class="flag"><a>#G80</a></span><span class="flag"><a>#SM6</a></span>
								</div>
								<div class="rtabBox">
									<div class="tabTextList el-tabs el-tabs--card el-tabs--top">
										<div class="el-tabs__header is-top">
											<div class="el-tabs__nav-wrap is-top">
												<div class="el-tabs__nav-scroll">
													<div role="tablist" class="el-tabs__nav is-top"
														style="transform: translateX(0px);">
														<div id="tab-0" aria-controls="pane-0" role="tab"
															aria-selected="true" tabindex="0"
															class="el-tabs__item is-top is-active">원하는 차가 있어요</div>
														<div id="tab-1" aria-controls="pane-1" role="tab"
															tabindex="-1" class="el-tabs__item is-top">예산이 정해져
															있어요</div>
														<div id="tab-2" aria-controls="pane-2" role="tab"
															tabindex="-1" class="el-tabs__item is-top">차종별로 찾고
															있어요</div>
													</div>
												</div>
											</div>
										</div>
										<div class="el-tabs__content">
											<div role="tabpanel" id="pane-0" aria-labelledby="tab-0"
												class="el-tab-pane txtTab1" style="">
												<div class="selectBox brand">
													<div class="el-select">
														<!---->
														<div class="el-input el-input--suffix">
															<!---->
															<input type="text" readonly="readonly" autocomplete="off"
																placeholder="국산" class="el-input__inner">
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
															style="display: none; min-width: 100px;">
															<div class="el-scrollbar" style="">
																<div class="el-select-dropdown__wrap el-scrollbar__wrap"
																	style="margin-bottom: -17px; margin-right: -17px;">
																	<ul class="el-scrollbar__view el-select-dropdown__list">
																		<!---->
																		<li class="el-select-dropdown__item selected"><span>국산</span></li>
																		<li class="el-select-dropdown__item"><span>수입</span></li>
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
													<div class="el-select">
														<!---->
														<div class="el-input el-input--suffix">
															<!---->
															<input type="text" readonly="readonly" autocomplete="off"
																placeholder="제조사" class="el-input__inner">
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
															style="display: none; min-width: 160px;">
															<div class="el-scrollbar" style="">
																<div class="el-select-dropdown__wrap el-scrollbar__wrap"
																	style="margin-bottom: -17px; margin-right: -17px;">
																	<ul class="el-scrollbar__view el-select-dropdown__list">
																		<!---->
																		<li class="el-select-dropdown__item"
																			id="clickSearchModel"><span>현대</span></li>
																		<li class="el-select-dropdown__item"
																			id="clickSearchModel"><span>제네시스</span></li>
																		<li class="el-select-dropdown__item"
																			id="clickSearchModel"><span>기아</span></li>
																		<li class="el-select-dropdown__item"
																			id="clickSearchModel"><span>쉐보레(GM대우)</span></li>
																		<li class="el-select-dropdown__item"
																			id="clickSearchModel"><span>르노코리아(삼성)</span></li>
																		<li class="el-select-dropdown__item"
																			id="clickSearchModel"><span>쌍용</span></li>
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
													<div class="el-select">
														<!---->
														<div class="el-input el-input--suffix">
															<!---->
															<input type="text" readonly="readonly" autocomplete="off"
																placeholder="모델" class="el-input__inner">
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
															style="display: none; min-width: 160px;">
															<div class="el-scrollbar" style="display: none;">
																<div class="el-select-dropdown__wrap el-scrollbar__wrap"
																	style="margin-bottom: -17px; margin-right: -17px;">
																	<ul class="el-scrollbar__view el-select-dropdown__list"></ul>
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
															<p class="el-select-dropdown__empty">제조사를 선택해 주세요</p>
														</div>
													</div>
													<div class="el-select">
														<!---->
														<div class="el-input el-input--suffix">
															<!---->
															<input type="text" readonly="readonly" autocomplete="off"
																placeholder="세부모델" class="el-input__inner">
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
															style="display: none; min-width: 240px;">
															<div class="el-scrollbar" style="display: none;">
																<div class="el-select-dropdown__wrap el-scrollbar__wrap"
																	style="margin-bottom: -17px; margin-right: -17px;">
																	<ul class="el-scrollbar__view el-select-dropdown__list"></ul>
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
															<p class="el-select-dropdown__empty">모델을 선택해 주세요</p>
														</div>
													</div>
													<button type="button"
														class="el-button btnSearch apply el-button--default"
														id="mkt_clickSearchCar">
														<!---->
														<!---->
														<span> 검색하기 </span>
													</button>
												</div>
											</div>
											<div role="tabpanel" aria-hidden="true" id="pane-1"
												aria-labelledby="tab-1" class="el-tab-pane txtTab2"
												style="display: none;">
												<div class="selectBox price">
													<div class="el-select">
														<!---->
														<div class="el-input el-input--suffix">
															<!---->
															<input type="text" readonly="readonly" autocomplete="off"
																placeholder="국산" class="el-input__inner">
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
															style="display: none;">
															<div class="el-scrollbar" style="">
																<div class="el-select-dropdown__wrap el-scrollbar__wrap"
																	style="margin-bottom: -17px; margin-right: -17px;">
																	<ul class="el-scrollbar__view el-select-dropdown__list">
																		<!---->
																		<li class="el-select-dropdown__item selected"><span>국산</span></li>
																		<li class="el-select-dropdown__item"><span>수입</span></li>
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
													<div class="el-select">
														<!---->
														<div class="el-input el-input--suffix">
															<!---->
															<input type="text" readonly="readonly" autocomplete="off"
																placeholder="제조사" class="el-input__inner">
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
															style="display: none;">
															<div class="el-scrollbar" style="">
																<div class="el-select-dropdown__wrap el-scrollbar__wrap"
																	style="margin-bottom: -17px; margin-right: -17px;">
																	<ul class="el-scrollbar__view el-select-dropdown__list">
																		<!---->
																		<li class="el-select-dropdown__item"><span>현대</span></li>
																		<li class="el-select-dropdown__item"><span>제네시스</span></li>
																		<li class="el-select-dropdown__item"><span>기아</span></li>
																		<li class="el-select-dropdown__item"><span>쉐보레(GM대우)</span></li>
																		<li class="el-select-dropdown__item"><span>르노코리아(삼성)</span></li>
																		<li class="el-select-dropdown__item"><span>쌍용</span></li>
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
													<div class="el-select">
														<!---->
														<div class="el-input el-input--suffix">
															<!---->
															<input type="text" readonly="readonly" autocomplete="off"
																placeholder="최저가격" class="el-input__inner">
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
															style="display: none;">
															<div class="el-scrollbar" style="">
																<div class="el-select-dropdown__wrap el-scrollbar__wrap"
																	style="margin-bottom: -17px; margin-right: -17px;">
																	<ul class="el-scrollbar__view el-select-dropdown__list">
																		<!---->
																		<li class="el-select-dropdown__item"><span>100만원</span></li>
																		<li class="el-select-dropdown__item"><span>200만원</span></li>
																		<li class="el-select-dropdown__item"><span>300만원</span></li>
																		<li class="el-select-dropdown__item"><span>400만원</span></li>
																		<li class="el-select-dropdown__item"><span>500만원</span></li>
																		<li class="el-select-dropdown__item"><span>600만원</span></li>
																		<li class="el-select-dropdown__item"><span>700만원</span></li>
																		<li class="el-select-dropdown__item"><span>800만원</span></li>
																		<li class="el-select-dropdown__item"><span>900만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>10,000만원</span></li>
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
													<div class="el-select">
														<!---->
														<div class="el-input el-input--suffix">
															<!---->
															<input type="text" readonly="readonly" autocomplete="off"
																placeholder="최고가격" class="el-input__inner">
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
															style="display: none;">
															<div class="el-scrollbar" style="">
																<div class="el-select-dropdown__wrap el-scrollbar__wrap"
																	style="margin-bottom: -17px; margin-right: -17px;">
																	<ul class="el-scrollbar__view el-select-dropdown__list">
																		<!---->
																		<li class="el-select-dropdown__item"><span>100만원</span></li>
																		<li class="el-select-dropdown__item"><span>200만원</span></li>
																		<li class="el-select-dropdown__item"><span>300만원</span></li>
																		<li class="el-select-dropdown__item"><span>400만원</span></li>
																		<li class="el-select-dropdown__item"><span>500만원</span></li>
																		<li class="el-select-dropdown__item"><span>600만원</span></li>
																		<li class="el-select-dropdown__item"><span>700만원</span></li>
																		<li class="el-select-dropdown__item"><span>800만원</span></li>
																		<li class="el-select-dropdown__item"><span>900만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>1,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>2,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>3,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>4,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>5,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>6,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>7,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>8,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,000만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,100만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,200만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,300만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,400만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,500만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,600만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,700만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,800만원</span></li>
																		<li class="el-select-dropdown__item"><span>9,900만원</span></li>
																		<li class="el-select-dropdown__item"><span>10,000만원</span></li>
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
													<button type="button"
														class="el-button btnSearch apply el-button--default">
														<!---->
														<!---->
														<span> 검색하기 </span>
													</button>
												</div>
											</div>
											<div role="tabpanel" aria-hidden="true" id="pane-2"
												aria-labelledby="tab-2" class="el-tab-pane txtTab3"
												style="display: none;">
												<div role="group" aria-label="checkbox-group"
													class="el-checkbox-group chkGroup btnType">
													<label class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" true-value="001" false-value=""
															class="el-checkbox__original"></span><span
														class="el-checkbox__label">경차</span></label><label
														class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" true-value="002" false-value=""
															class="el-checkbox__original"></span><span
														class="el-checkbox__label">소형차</span></label><label
														class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" true-value="003" false-value=""
															class="el-checkbox__original"></span><span
														class="el-checkbox__label">준중형차</span></label><label
														class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" true-value="004" false-value=""
															class="el-checkbox__original"></span><span
														class="el-checkbox__label">중형차</span></label><label
														class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" true-value="005" false-value=""
															class="el-checkbox__original"></span><span
														class="el-checkbox__label">대형차</span></label><label
														class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" true-value="006" false-value=""
															class="el-checkbox__original"></span><span
														class="el-checkbox__label">스포츠카</span></label><label
														class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" true-value="007" false-value=""
															class="el-checkbox__original"></span><span
														class="el-checkbox__label">SUV</span></label><label
														class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" true-value="008" false-value=""
															class="el-checkbox__original"></span><span
														class="el-checkbox__label">RV</span></label><label
														class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" true-value="009" false-value=""
															class="el-checkbox__original"></span><span
														class="el-checkbox__label">경승합차</span></label><label
														class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" true-value="010" false-value=""
															class="el-checkbox__original"></span><span
														class="el-checkbox__label">승합차</span></label><label
														class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" true-value="011" false-value=""
															class="el-checkbox__original"></span><span
														class="el-checkbox__label">화물차</span></label><label
														class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" true-value="012" false-value=""
															class="el-checkbox__original"></span><span
														class="el-checkbox__label">버스</span></label>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div aria-label="직접 가지 않아도 간단하게 자동차를 팔고 살 수 있어요."
						class="section section5">
						<div class="sectInnr">
							<p class="sectTitle">직접 가지 않아도 간단하게 자동차를 팔고 살 수 있어요.</p>
							<div class="partition">
								<div class="part">
									<div class="servBnnr ty1">
										<p class="bnnrTitle1">
											K Car가 함께하는<strong>내차팔기 홈서비스</strong>
										</p>
										<p>
											차 번호만 입력하면 끝!<br>알아서 다 해주는 내차팔기
										</p>
										<button class="button styleInput">차량번호를 입력해주세요</button>
									</div>
									<div class="board">
										<ul class="iconList">
											<li class="icon1"><p>차량번호 입력으로도 OK</p></li>
											<li class="icon2"><p>무료 방문견적</p></li>
											<li class="icon3"><p>당일 계약, 당일 입금</p></li>
										</ul>
										<div class="bnnrbtnWrap center">
											<button class="bnnrbtn type1">서비스 안내</button>
										</div>
									</div>
								</div>
								<div class="part">
									<div class="servBnnr ty2">
										<p class="bnnrTitle1">
											K Car가 추천하는<strong>내차사기 홈서비스</strong>
										</p>
										<p>
											중고차 쇼핑도 온라인으로 구입하고,<br>집까지 직접배송!
										</p>
									</div>
									<div class="board">
										<ul class="iconList process">
											<li class="icon4"><p>주문</p></li>
											<li class="icon5"><p>정보 입력</p></li>
											<li class="icon6"><p>결제</p></li>
											<li class="icon7"><p>배송</p></li>
										</ul>
										<div class="bnnrbtnWrap center">
											<button class="bnnrbtn type1">서비스 안내</button>
											<button class="bnnrbtn type2">차량 검색하기</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div aria-label="렌트/금융" class="section section6">
						<div class="sectInnr">
							<div class="partition">
								<div class="part">
									<p class="sectTitle">렌트</p>
									<div class="servBnnr ty3">
										<p class="bnnrSubTitle">
											차량전문가 K Car가<br>관리하니까 믿고타는
										</p>
										<p class="bnnrTitle2">K Car 렌트</p>
										<div class="bnnrbtnWrap">
											<button class="bnnrbtn type3">서비스 안내</button>
										</div>
									</div>
								</div>
								<div class="part">
									<p class="sectTitle">금융</p>
									<div class="servBnnr ty4">
										<p class="bnnrSubTitle">
											내 상황에 딱 맞춘<br>나만의 금융 설계
										</p>
										<p class="bnnrTitle2">K Car 금융서비스</p>
										<div class="bnnrbtnWrap">
											<button class="bnnrbtn type3">서비스 안내</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					
					
					<div aria-label="전국직영점" class="section section10">
						<h2 class="htit">전국직영점</h2>
						<div class="areaSearchForm">
							<div class="areaBox">
								<div class="el-select">
									<!---->
									<div class="el-input el-input--suffix">
										<!---->
										<input type="text" readonly="readonly" autocomplete="off"
											placeholder="선택" class="el-input__inner">
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
										style="display: none; min-width: 200px;">
										<div class="el-scrollbar" style="">
											<div class="el-select-dropdown__wrap el-scrollbar__wrap"
												style="margin-bottom: -17px; margin-right: -17px;">
												<ul class="el-scrollbar__view el-select-dropdown__list">
													<!---->
													<li class="el-select-dropdown__item selected"><span>서울(8)</span></li>
													<li class="el-select-dropdown__item"><span>경기/인천(18)</span></li>
													<li class="el-select-dropdown__item"><span>경남(6)</span></li>
													<li class="el-select-dropdown__item"><span>경북(5)</span></li>
													<li class="el-select-dropdown__item"><span>전남(2)</span></li>
													<li class="el-select-dropdown__item"><span>전북(1)</span></li>
													<li class="el-select-dropdown__item"><span>충남(4)</span></li>
													<li class="el-select-dropdown__item"><span>충북(1)</span></li>
													<li class="el-select-dropdown__item"><span>제주(1)</span></li>
													<li class="el-select-dropdown__item"><span>강원(1)</span></li>
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
								<div class="el-select">
									<!---->
									<div class="el-input el-input--suffix">
										<!---->
										<input type="text" readonly="readonly" autocomplete="off"
											placeholder="전체" class="el-input__inner">
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
										style="display: none; min-width: 200px;">
										<div class="el-scrollbar" style="">
											<div class="el-select-dropdown__wrap el-scrollbar__wrap"
												style="margin-bottom: -17px; margin-right: -17px;">
												<ul class="el-scrollbar__view el-select-dropdown__list">
													<!---->
													<li class="el-select-dropdown__item selected"><span>전체</span></li>
													<li class="el-select-dropdown__item"><span>강남직영점</span></li>
													<li class="el-select-dropdown__item"><span>구로직영점</span></li>
													<li class="el-select-dropdown__item"><span>서서울직영점</span></li>
													<li class="el-select-dropdown__item"><span>서초직영점</span></li>
													<li class="el-select-dropdown__item"><span>성동직영점</span></li>
													<li class="el-select-dropdown__item"><span>영등포직영점</span></li>
													<li class="el-select-dropdown__item"><span>장한평직영점</span></li>
													<li class="el-select-dropdown__item"><span>화곡직영점</span></li>
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
						<div
							class="areaWrap swiper-container swiper-container-fade swiper-container-initialized swiper-container-horizontal">
							<div class="swiper-wrapper">
								<div class="swiper-slide areaitem swiper-slide-active"
									style="width: 1220px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
									<div class="imgBox">
										<img
											src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/CENTER/147/147_main.jpg"
											alt="" onerror="this.src='/images/main/img-store.jpg'">
									</div>
									<div class="detailView">
										<p class="tit">강남직영점</p>
										<dl class="info">
											<dt>보유차량</dt>
											<dd>179대</dd>
										</dl>
										<dl class="info">
											<dt>지점위치</dt>
											<dd>서울특별시 강남구 헌릉로745길 25 (율현동, 강남자동차매매장에이동) A동 124호,
												125호</dd>
										</dl>
										<dl class="info">
											<dt>영업시간</dt>
											<dd>월~토요일 09:00~18:00 공휴일/일요일 휴점</dd>
										</dl>
										<dl class="info">
											<dt>대표전화</dt>
											<dd>02-6203-4226</dd>
										</dl>
										<div class="btngp">
											<button type="button"
												class="el-button btnMap el-button--default">
												<!---->
												<!---->
												<span> 오시는길 </span>
											</button>
											<button type="button"
												class="el-button btnSms el-button--default">
												<!---->
												<!---->
												<span> 주소문자받기 </span>
											</button>
										</div>
									</div>
								</div>
								<div class="swiper-slide areaitem swiper-slide-next"
									style="width: 1220px; opacity: 0; transform: translate3d(-1220px, 0px, 0px);">
									<div class="imgBox">
										<img
											src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/CENTER/150/150_main.jpg"
											alt="" onerror="this.src='/images/main/img-store.jpg'">
									</div>
									<div class="detailView">
										<p class="tit">구로직영점</p>
										<dl class="info">
											<dt>보유차량</dt>
											<dd>123대</dd>
										</dl>
										<dl class="info">
											<dt>지점위치</dt>
											<dd>서울특별시 구로구 안양천로537길 16 (고척동, 백광산업주식회사) 아오토포레
												(AUTOFORET ) 2층</dd>
										</dl>
										<dl class="info">
											<dt>영업시간</dt>
											<dd>월~토요일 09:00~18:00 공휴일/일요일 휴점</dd>
										</dl>
										<dl class="info">
											<dt>대표전화</dt>
											<dd>02-6092-0540</dd>
										</dl>
										<div class="btngp">
											<button type="button"
												class="el-button btnMap el-button--default">
												<!---->
												<!---->
												<span> 오시는길 </span>
											</button>
											<button type="button"
												class="el-button btnSms el-button--default">
												<!---->
												<!---->
												<span> 주소문자받기 </span>
											</button>
										</div>
									</div>
								</div>
								<div class="swiper-slide areaitem"
									style="width: 1220px; opacity: 0; transform: translate3d(-2440px, 0px, 0px);">
									<div class="imgBox">
										<img
											src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/CENTER/136/136_main.jpg"
											alt="" onerror="this.src='/images/main/img-store.jpg'">
									</div>
									<div class="detailView">
										<p class="tit">서서울직영점</p>
										<dl class="info">
											<dt>보유차량</dt>
											<dd>198대</dd>
										</dl>
										<dl class="info">
											<dt>지점위치</dt>
											<dd>서울강서구양천로53길30 서서울 모터리움 1001호</dd>
										</dl>
										<dl class="info">
											<dt>영업시간</dt>
											<dd>월~토요일 09:00~18:00 공휴일/일요일 휴점</dd>
										</dl>
										<dl class="info">
											<dt>대표전화</dt>
											<dd>02-6331-5990</dd>
										</dl>
										<div class="btngp">
											<button type="button"
												class="el-button btnMap el-button--default">
												<!---->
												<!---->
												<span> 오시는길 </span>
											</button>
											<button type="button"
												class="el-button btnSms el-button--default">
												<!---->
												<!---->
												<span> 주소문자받기 </span>
											</button>
										</div>
									</div>
								</div>
								<div class="swiper-slide areaitem"
									style="width: 1220px; opacity: 0; transform: translate3d(-3660px, 0px, 0px);">
									<div class="imgBox">
										<img
											src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/CENTER/033/033_main.jpg"
											alt="" onerror="this.src='/images/main/img-store.jpg'">
									</div>
									<div class="detailView">
										<p class="tit">서초직영점</p>
										<dl class="info">
											<dt>보유차량</dt>
											<dd>201대</dd>
										</dl>
										<dl class="info">
											<dt>지점위치</dt>
											<dd>서울서초구양재2동 217번지 서울오토갤러리 은관 210호</dd>
										</dl>
										<dl class="info">
											<dt>영업시간</dt>
											<dd>월~토요일 09:00~18:00 공휴일/일요일 휴점</dd>
										</dl>
										<dl class="info">
											<dt>대표전화</dt>
											<dd>02-2059-8902</dd>
										</dl>
										<div class="btngp">
											<button type="button"
												class="el-button btnMap el-button--default">
												<!---->
												<!---->
												<span> 오시는길 </span>
											</button>
											<button type="button"
												class="el-button btnSms el-button--default">
												<!---->
												<!---->
												<span> 주소문자받기 </span>
											</button>
										</div>
									</div>
								</div>
								<div class="swiper-slide areaitem"
									style="width: 1220px; opacity: 0; transform: translate3d(-4880px, 0px, 0px);">
									<div class="imgBox">
										<img
											src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/CENTER/128/128_main.jpg"
											alt="" onerror="this.src='/images/main/img-store.jpg'">
									</div>
									<div class="detailView">
										<p class="tit">성동직영점</p>
										<dl class="info">
											<dt>보유차량</dt>
											<dd>186대</dd>
										</dl>
										<dl class="info">
											<dt>지점위치</dt>
											<dd>서울성동구성수동2가 280-4번지 모터시티 403호</dd>
										</dl>
										<dl class="info">
											<dt>영업시간</dt>
											<dd>월~토요일 09:00~18:00 공휴일/일요일 휴점</dd>
										</dl>
										<dl class="info">
											<dt>대표전화</dt>
											<dd>02-3409-7420</dd>
										</dl>
										<div class="btngp">
											<button type="button"
												class="el-button btnMap el-button--default">
												<!---->
												<!---->
												<span> 오시는길 </span>
											</button>
											<button type="button"
												class="el-button btnSms el-button--default">
												<!---->
												<!---->
												<span> 주소문자받기 </span>
											</button>
										</div>
									</div>
								</div>
								<div class="swiper-slide areaitem"
									style="width: 1220px; opacity: 0; transform: translate3d(-6100px, 0px, 0px);">
									<div class="imgBox">
										<img
											src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/CENTER/010/010_main.jpg"
											alt="" onerror="this.src='/images/main/img-store.jpg'">
									</div>
									<div class="detailView">
										<p class="tit">영등포직영점</p>
										<dl class="info">
											<dt>보유차량</dt>
											<dd>591대</dd>
										</dl>
										<dl class="info">
											<dt>지점위치</dt>
											<dd>서울영등포구양평동3가 96-1 청우오토프라자 2층</dd>
										</dl>
										<dl class="info">
											<dt>영업시간</dt>
											<dd>월~토요일 09:00~18:00 공휴일/일요일 휴점</dd>
										</dl>
										<dl class="info">
											<dt>대표전화</dt>
											<dd>02-2068-0655</dd>
										</dl>
										<div class="btngp">
											<button type="button"
												class="el-button btnMap el-button--default">
												<!---->
												<!---->
												<span> 오시는길 </span>
											</button>
											<button type="button"
												class="el-button btnSms el-button--default">
												<!---->
												<!---->
												<span> 주소문자받기 </span>
											</button>
										</div>
									</div>
								</div>
								<div class="swiper-slide areaitem"
									style="width: 1220px; opacity: 0; transform: translate3d(-7320px, 0px, 0px);">
									<div class="imgBox">
										<img
											src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/CENTER/095/095_main.jpg"
											alt="" onerror="this.src='/images/main/img-store.jpg'">
									</div>
									<div class="detailView">
										<p class="tit">장한평직영점</p>
										<dl class="info">
											<dt>보유차량</dt>
											<dd>232대</dd>
										</dl>
										<dl class="info">
											<dt>지점위치</dt>
											<dd>서울특별시 성동구 자동차시장1길 96 (용답동, CarSeoul.com) CARSEOUL닷컴
												5층</dd>
										</dl>
										<dl class="info">
											<dt>영업시간</dt>
											<dd>월~토요일 09:00~18:00 공휴일/일요일 휴점</dd>
										</dl>
										<dl class="info">
											<dt>대표전화</dt>
											<dd>02-2210-8330</dd>
										</dl>
										<div class="btngp">
											<button type="button"
												class="el-button btnMap el-button--default">
												<!---->
												<!---->
												<span> 오시는길 </span>
											</button>
											<button type="button"
												class="el-button btnSms el-button--default">
												<!---->
												<!---->
												<span> 주소문자받기 </span>
											</button>
										</div>
									</div>
								</div>
								<div class="swiper-slide areaitem"
									style="width: 1220px; opacity: 0; transform: translate3d(-8540px, 0px, 0px);">
									<div class="imgBox">
										<img
											src="https://img.kcar.com/FILE_UPLOAD2/IMAGE_UPLOAD/CENTER/104/104_main.jpg"
											alt="" onerror="this.src='/images/main/img-store.jpg'">
									</div>
									<div class="detailView">
										<p class="tit">화곡직영점</p>
										<dl class="info">
											<dt>보유차량</dt>
											<dd>548대</dd>
										</dl>
										<dl class="info">
											<dt>지점위치</dt>
											<dd>경기도 부천시 봉오대로556번길 21 (고강동, 서울서부오토팰리스) B103호</dd>
										</dl>
										<dl class="info">
											<dt>영업시간</dt>
											<dd>월~토요일 09:00~18:00 공휴일/일요일 휴점</dd>
										</dl>
										<dl class="info">
											<dt>대표전화</dt>
											<dd>032-678-0551</dd>
										</dl>
										<div class="btngp">
											<button type="button"
												class="el-button btnMap el-button--default">
												<!---->
												<!---->
												<span> 오시는길 </span>
											</button>
											<button type="button"
												class="el-button btnSms el-button--default">
												<!---->
												<!---->
												<span> 주소문자받기 </span>
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="navigation">
								<button type="button"
									class="el-button swiper-button-prev el-button--default swiper-button-disabled"
									tabindex="0" role="button" aria-label="Previous slide"
									aria-disabled="true">
									<!---->
									<!---->
									<!---->
								</button>
								<button type="button"
									class="el-button swiper-button-next el-button--default"
									tabindex="0" role="button" aria-label="Next slide"
									aria-disabled="false">
									<!---->
									<!---->
									<!---->
								</button>
							</div>
							<div>
								<div class="el-dialog__wrapper popup popCenter rentSmsPopup"
									style="display: none;">
									<div role="dialog" aria-modal="true" aria-label="직영점 정보 문자받기"
										class="el-dialog" style="margin-top: 15vh;">
										<div class="el-dialog__header">
											<span class="el-dialog__title">직영점 정보 문자받기</span>
											<button type="button" aria-label="Close"
												class="el-dialog__headerbtn">
												<i class="el-dialog__close el-icon el-icon-close"></i>
											</button>
										</div>
										<!---->
										<div class="el-dialog__footer">
											<span class="dialog-footer"><div class="footerBtnWrap">
													<div class="searchTrigger box Large popFixBtnM el-row">
														<button class="button apply">닫기</button>
													</div>
												</div></span>
										</div>
									</div>
								</div>
							</div>
							<span class="swiper-notification" aria-live="assertive"
								aria-atomic="true"></span>
						</div>
					</div>
					<div aria-label="공지사항/이벤트" class="section section11">
						<div class="sectInnr">
							<div class="partition">
								<div class="part">
									<div class="servBnnr ty5">
										<p class="bnnrSubTitle">K Car만의 품질보증연장 서비스, K Car
											Warranty!</p>
										<p class="bnnrTitle2">
											구매하신 차량의 품질 보증기간을<br>최대 365일까지 연장해 드려요
										</p>
										<div class="bnnrbtnWrap">
											<button class="bnnrbtn type1">보증기간</button>
											<button class="bnnrbtn type2">보증범위</button>
										</div>
									</div>
								</div>
								<div class="part">
									<div class="notiBoard">
										<div class="el-tabs el-tabs--top">
											<div class="el-tabs__header is-top">
												<div class="el-tabs__nav-wrap is-top">
													<div class="el-tabs__nav-scroll">
														<div role="tablist" class="el-tabs__nav is-top"
															style="transform: translateX(0px);">
															<div class="el-tabs__active-bar is-top"
																style="width: 94px; transform: translateX(0px);"></div>
															<div id="tab-notice" aria-controls="pane-notice"
																role="tab" aria-selected="true" tabindex="0"
																class="el-tabs__item is-top is-active">공지사항</div>
															<div id="tab-event" aria-controls="pane-event" role="tab"
																tabindex="-1" class="el-tabs__item is-top">이벤트</div>
														</div>
													</div>
												</div>
											</div>
											<div class="el-tabs__content">
											<form action="" method="post" id="notice_form">
											<input type="hidden" name="no" value="notice">
												<div role="tabpanel" id="pane-notice"
													aria-labelledby="tab-notice" class="el-tab-pane">
													<!-- <p class="notiTxt">
														<a>[공지] K Car 시스템 점검에 따른 서비스 일시 중단 안내</a><i
															class="icnNew2">NEW</i>
													</p>
													<p class="notiTxt">
														<a>[공지] K Car 사이트 개편에 따른 이용 가이드 안내</a>
														
													</p>
													<p class="notiTxt">
														<a>[공지] 침수차 안심 보상 서비스 </a>
														
													</p>
													<p class="notiTxt">
														<a>[공지] K Car 시스템 점검에 따른 서비스 일시 중단 안내</a>
														
													</p> -->
												</div>
											</form>
											<form action="" method="post" id="event_form">
											<input type="hidden" name="no" value="event">
												<div role="tabpanel" aria-hidden="true" id="pane-event"
													aria-labelledby="tab-event" class="el-tab-pane"
													style="display: none;">
													<!-- <p class="notiTxt">
														<a>[EVENT] 리뉴얼 기념! 케이카 APP 리뷰 이벤트 - 총 210명에게 백화점
															상품권/스타벅스 아메리카노 지급</a><i class="icnNew2">NEW</i>
													</p>
													<p class="notiTxt">
														<a>[EVENT] 22년 8월 고객후기 이벤트 - 후기만 작성해도 100% 당첨!</a><i
															class="icnNew2">NEW</i>
													</p>
													<p class="notiTxt">
														<a>[EVENT] 22년 7월 고객후기 이벤트 - 후기만 작성해도 100% 당첨!</a>
														
													</p>
													<p class="notiTxt">
														<a>[당첨자 발표] 22년 6월 고객후기 이벤트 우수작</a>
														
													</p> -->
												</div>
											</form>
											</div>
										</div>
										<form action="NotcMatrList" method="post" id="form"> 
										<input type="hidden" name="listViewno" id="listViewno" value="">
										<a class="notiMore el-link el-link--default is-underline" id="noticeEvent">
											<!---->
											<span class="el-link--inner"> 더보기 </span>
										<!---->
										</a>
										</form>
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
				<!-- footer -->
				<%@ include file="/WEB-INF/default/footer.jsp" %>
				<!-- footer -->
			</div>
		</div>
	</div>
	<script src="/_nuxt/f7a91b8.js"></script>
	<script src="/_nuxt/bbe05a3.js" ></script>
	<script src="/_nuxt/89fbbcc.js" ></script>
	<script src="/_nuxt/38f7038.js" ></script>
	<script src="/_nuxt/32ff197.js" ></script>


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

	<script type="text/javascript" id="">kakaoPixel("8101473052006960319").pageView();</script>
	<div id="criteo-tags-div" style="display: none;"></div>
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
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 106px; left: 190px; z-index: 2002; display: none;"
		x-placement="bottom-start">
		<ul role="menu"
			class="el-menu el-menu--popup el-menu--popup-bottom-start">
			<div class="menuTitArea">
				<strong class="menuTit">내차팔기</strong>
			</div>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				내차팔기 홈서비스</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				법인차매각신청</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				폐차신청</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				내차팔기 고객후기</li>
		</ul>
	</div>
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 106px; left: 286px; z-index: 2009; display: none;"
		x-placement="bottom-start">
		<ul role="menu"
			class="el-menu el-menu--popup el-menu--popup-bottom-start">
			<div class="menuTitArea">
				<strong class="menuTit">내차사기</strong>
			</div>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				차량검색</li>
				
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				내차사기 홈서비스</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				판매준비차량</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				3D 라이브 뷰</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				최근 본 차량</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				내차사기 고객후기</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				리스차량</li>
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				브랜드 인증관</li>
		</ul>
	</div>
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="js/homeNotice.js" type="text/javascript"></script>
	
</body>
</html>