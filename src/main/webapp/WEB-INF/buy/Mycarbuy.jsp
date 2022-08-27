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

<title>K-CAR 내차사기</title>
<c:if test="${not empty msg }">
	<script>
		alert("${msg}");
		window.history.back();
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
					<div class="containerWrap cSection el-row">
						<div class="kcarSnbWrap" style="float: left;">
							<div data-v-ea3525f6="" class="kcarSnb">
								<button data-v-ea3525f6="" type="button"
									class="el-button btnguide el-button--default">
									<!---->
									<!---->
									<span> 간편검색 </span>
								</button>
								<div data-v-ea3525f6=""
									class="el-dialog__wrapper popup popCenter searPop guidePop"
									style="display: none;">
									<div role="dialog" aria-modal="true" aria-label="간편검색"
										class="el-dialog" style="margin-top: 15vh; width: 92rem;">
										<div class="el-dialog__header">
											<span class="el-dialog__title">간편검색</span>
											<button type="button" aria-label="Close"
												class="el-dialog__headerbtn">
												<i class="el-dialog__close el-icon el-icon-close"></i>
											</button>
										</div>
										<!---->
										<div class="el-dialog__footer">
											<div class="dialog-footer center">
												<button type="button"
													class="el-button apply el-button--primary">
													<!---->
													<!---->
													<span> 확인 </span>
												</button>
											</div>
										</div>
									</div>
								</div>
								<div data-v-ea3525f6="" role="tablist"
									aria-multiselectable="true" class="el-collapse accordionMenu">
									<div data-v-ea3525f6="" class="el-collapse-item"
										aria-label="차종">
										<div role="tab" aria-expanded="true"
											aria-controls="el-collapse-content-8658"
											aria-describedby="el-collapse-content-8658">
											<div role="button" id="el-collapse-head-8658" tabindex="0"
												class="el-collapse-item__header" onclick="menuopen(this)">
												<strong data-v-ea3525f6="">차종</strong><span
													data-v-ea3525f6="">중복선택가능</span><i
													class="el-collapse-item__arrow el-icon-arrow-right is-active"></i>
											</div>
										</div>
										<div role="tabpanel" aria-labelledby="el-collapse-head-8658"
											id="el-collapse-content-8658" class="el-collapse-item__wrap"
											style="display: none;">
											<div class="el-collapse-item__content">
												<div data-v-ea3525f6="" class="menuItemList">
													<div data-v-ea3525f6="" role="group"
														aria-label="checkbox-group"
														class="el-checkbox-group chkGroup btnType">
														<c:forEach var="typename" items="${type}">
															<label data-v-ea3525f6="" class="el-checkbox"><span
																class="el-checkbox__input"><span
																	class="el-checkbox__inner"></span><input
																	type="checkbox" aria-hidden="false"
																	class="el-checkbox__original" value="차종:${typename}"></span><span
																class="el-checkbox__label"> ${typename}</span></label>
														</c:forEach>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div data-v-ea3525f6="" class="el-collapse-item is-active"
										aria-label="제조사/모델">
										<div role="tab" aria-controls="el-collapse-content-3517"
											aria-describedby="el-collapse-content-3517"
											aria-expanded="true">
											<div role="button" id="el-collapse-head-3517" tabindex="0"
												class="el-collapse-item__header" onclick="menuopen(this)">
												<strong data-v-ea3525f6="">국산·수입 제조사/모델</strong><span
													data-v-ea3525f6="">중복선택가능</span><i
													class="el-collapse-item__arrow el-icon-arrow-right is-active"></i>
											</div>
										</div>
										<div role="tabpanel" aria-labelledby="el-collapse-head-3517"
											id="el-collapse-content-3517" class="el-collapse-item__wrap"
											data-old-padding-top="" data-old-padding-bottom=""
											data-old-overflow="" style="display: none;">
											<div class="el-collapse-item__content">
												<div data-v-ea3525f6="" class="menuItemList">
													<div data-v-ea3525f6="" class="snbScorll el-scrollbar">
														<div class="el-scrollbar__wrap"
															style="margin-bottom: -17px; margin-right: -17px;">
															<div class="el-scrollbar__view">
																<div data-v-ea3525f6="" class="modelList">
																	<div data-v-ea3525f6="" class="depth1">
																		<strong data-v-ea3525f6="">국산</strong>
																		<ul data-v-ea3525f6="" class="depth2">

																			<c:forEach var="detail" items="${korbrand}"
																				varStatus="status">
																				<li id="head-id-${status.index}-kor"
																					onclick="menuselect(this),submenuopen(this)"><label
																					class="el-checkbox"><span
																						class="el-checkbox__input"
																						id="content-id-${status.index}-kor-check"><span
																							class="el-checkbox__inner"></span><input
																							id="content-id-${status.index}-kor-input"
																							type="checkbox" aria-hidden="false"
																							class="el-checkbox__original"
																							value="브랜드:${detail.key}"></span><span
																						class="el-checkbox__label"><img
																							data-v-ea3525f6="" src="${detail.value}"
																							alt="제조사 로고"> ${detail.key} <!----></span></label> <span
																					data-v-ea3525f6="" class="num"></span></li>
																				<ul id="content-id-${status.index}-kor"
																					class="depth3"
																					style="padding-left: 15px; display: none;">
																					<li><label id="_002,060" class="el-checkbox"><span
																							class="el-checkbox__input"><span
																								class="el-checkbox__inner"></span><input
																								type="checkbox" aria-hidden="false"
																								class="el-checkbox__original" value=""></span><span
																							class="el-checkbox__label"> K3 <!----></span></label> <span
																						class="num"></span> <!----></li>
																				</ul>

																			</c:forEach>
																		</ul>
																	</div>
																	<div data-v-ea3525f6="" class="depth1">
																		<strong data-v-ea3525f6="">수입</strong>
																		<ul data-v-ea3525f6="" class="depth2">
																			<c:forEach var="detail" items="${foreignbrand}"
																				varStatus="status">
																				<li id="head-id-${status.index}-for"
																					onclick="menuselect(this),submenuopen(this)"><label
																					data-v-ea3525f6="" id="_002" class="el-checkbox"><span
																						class="el-checkbox__input"
																						id="content-id-${status.index}-for-check"><span
																							class="el-checkbox__inner"></span><input
																							id="content-id-${status.index}-for-input"
																							type="checkbox" aria-hidden="false"
																							class="el-checkbox__original"
																							value="브랜드:${detail.key}"></span><span
																						class="el-checkbox__label"><img
																							data-v-ea3525f6="" src="${detail.value}"
																							alt="제조사 로고"> ${detail.key} <!----></span></label> <span
																					data-v-ea3525f6="" class="num"></span></li>
																				<ul id="content-id-${status.index}-for"
																					class="depth3"
																					style="padding-left: 15px; display: none;">
																				</ul>

																			</c:forEach>

																		</ul>
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
																style="transform: translateY(0%); height: 13.7687%;"></div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div data-v-ea3525f6="" class="el-collapse-item"
										aria-label="연식">
										<div role="tab" aria-controls="el-collapse-content-5089"
											aria-describedby="el-collapse-content-5089">
											<div role="button" id="el-collapse-head-5089" tabindex="0"
												class="el-collapse-item__header" onclick="menuopen(this)">
												<strong data-v-ea3525f6="">연식</strong><i
													class="el-collapse-item__arrow el-icon-arrow-right"></i>
											</div>
										</div>
										<div role="tabpanel" aria-labelledby="el-collapse-head-5089"
											id="el-collapse-content-5089" class="el-collapse-item__wrap"
											aria-hidden="true" data-old-padding-top=""
											data-old-padding-bottom="" data-old-overflow=""
											style="display: none;">
											<div class="el-collapse-item__content">
												<div data-v-ea3525f6="" class="menuItemList">
													<div data-v-ea3525f6="" class="selArea carSrchSel">
														<div data-v-ea3525f6="" class="el-select">
															<!---->
															<div class="el-input el-input--suffix">
																<!---->
																<select class="el-input__inner">
																	<option value="최소연식:0년">최소</option>
																	<option value="최소연식:22년">2022년</option>
																	<option value="최소연식:21년">2021년</option>
																	<option value="최소연식:20년">2020년</option>
																	<option value="최소연식:19년">2019년</option>
																	<option value="최소연식:18년">2018년</option>
																	<option value="최소연식:17년">2017년</option>
																	<option value="최소연식:16년">2016년</option>
																	<option value="최소연식:15년">2015년</option>
																	<option value="최소연식:14년">2014년</option>
																	<option value="최소연식:13년">2013년</option>
																	<option value="최소연식:12년">2012년</option>
																	<option value="최소연식:11년">2011년</option>
																	<option value="최소연식:10년">2010년</option>
																	<option value="최소연식:09년">2009년</option>
																	<option value="최소연식:08년">2008년</option>
																	<option value="최소연식:07년">2007년</option>
																	<option value="최소연식:06년">2006년</option>
																	<option value="최소연식:05년">2005년</option>
																</select>
															</div>
														</div>
														~
														<div data-v-ea3525f6="" class="el-select">
															<!---->
															<div class="el-input el-input--suffix">
																<!---->
																<select class="el-input__inner">
																	<option value="최대연식:26년" )>최대</option>
																	<option value="최대연식:23년">2022년</option>
																	<option value="최대연식:22년">2021년</option>
																	<option value="최대연식:21년">2020년</option>
																	<option value="최대연식:20년">2019년</option>
																	<option value="최대연식:19년">2018년</option>
																	<option value="최대연식:18년">2017년</option>
																	<option value="최대연식:17년">2016년</option>
																	<option value="최대연식:16년">2015년</option>
																	<option value="최대연식:15년">2014년</option>
																	<option value="최대연식:14년">2013년</option>
																	<option value="최대연식:13년">2012년</option>
																	<option value="최대연식:12년">2011년</option>
																	<option value="최대연식:11년">2010년</option>
																	<option value="최대연식:10년">2009년</option>
																	<option value="최대연식:09년">2008년</option>
																	<option value="최대연식:08년">2007년</option>
																	<option value="최대연식:07년">2006년</option>
																	<option value="최대연식:06년">2005년</option>
																</select>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div data-v-ea3525f6="" class="el-collapse-item is-active"
										aria-label="주행거리">
										<div role="tab" aria-expanded="true"
											aria-controls="el-collapse-content-2433"
											aria-describedby="el-collapse-content-2433">
											<div role="button" id="el-collapse-head-2433" tabindex="0"
												class="el-collapse-item__header is-active"
												onclick="menuopen(this)">
												<strong data-v-ea3525f6="">주행거리</strong><i
													class="el-collapse-item__arrow el-icon-arrow-right is-active"></i>
											</div>
										</div>
										<div role="tabpanel" aria-labelledby="el-collapse-head-2433"
											id="el-collapse-content-2433" class="el-collapse-item__wrap"
											style="display: none;">
											<div class="el-collapse-item__content">
												<div data-v-ea3525f6="" class="menuItemList">
													<div data-v-ea3525f6="" class="selArea carSrchSel">
														<div data-v-ea3525f6="" class="el-select">
															<!---->
															<div class="el-input el-input--suffix">
																<select class="el-input__inner">
																	<option value="최소거리:0">최소</option>
																	<option value="최소거리:10000">10.000km</option>
																	<option value="최소거리:20000">20.000km</option>
																	<option value="최소거리:30000">30.000km</option>
																	<option value="최소거리:40000">40.000km</option>
																	<option value="최소거리:50000">50.000km</option>
																	<option value="최소거리:60000">60.000km</option>
																	<option value="최소거리:70000">70.000km</option>
																	<option value="최소거리:80000">80.000km</option>
																	<option value="최소거리:90000">90.000km</option>
																	<option value="최소거리:100000">100.000km</option>
																	<option value="최소거리:10000">10.000km</option>
																	<option value="최소거리:110000">110.000km</option>
																	<option value="최소거리:120000">120.000km</option>
																	<option value="최소거리:130000">130.000km</option>
																	<option value="최소거리:140000">140.000km</option>
																	<option value="최소거리:150000">150.000km</option>
																	<option value="최소거리:160000">160.000km</option>
																	<option value="최소거리:170000">170.000km</option>
																	<option value="최소거리:180000">180.000km</option>
																</select>
															</div>
														</div>
														~
														<div data-v-ea3525f6="" class="el-select">
															<!---->
															<div class="el-input el-input--suffix">
																<select class="el-input__inner">
																	<option value="최대거리:222220">최대</option>
																	<option value="최대거리:10000">10.000km</option>
																	<option value="최대거리:20000">20.000km</option>
																	<option value="최대거리:30000">30.000km</option>
																	<option value="최대거리:40000">40.000km</option>
																	<option value="최대거리:50000">50.000km</option>
																	<option value="최대거리:60000">60.000km</option>
																	<option value="최대거리:70000">70.000km</option>
																	<option value="최대거리:80000">80.000km</option>
																	<option value="최대거리:90000">90.000km</option>
																	<option value="최대거리:100000">100.000km</option>
																	<option value="최대거리:10000">10.000km</option>
																	<option value="최대거리:110000">110.000km</option>
																	<option value="최대거리:120000">120.000km</option>
																	<option value="최대거리:130000">130.000km</option>
																	<option value="최대거리:140000">140.000km</option>
																	<option value="최대거리:150000">150.000km</option>
																	<option value="최대거리:160000">160.000km</option>
																	<option value="최대거리:170000">170.000km</option>
																	<option value="최대거리:180000">180.000km</option>
																</select>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div data-v-ea3525f6="" class="el-collapse-item is-active"
										aria-label="가격">
										<div role="tab" aria-controls="el-collapse-content-6606"
											aria-describedby="el-collapse-content-6606"
											aria-expanded="true">
											<div role="button" id="el-collapse-head-6606" tabindex="0"
												class="el-collapse-item__header" onclick="menuopen(this)">
												<strong data-v-ea3525f6="">가격</strong><i
													class="el-collapse-item__arrow el-icon-arrow-right is-active"></i>
											</div>
										</div>
										<div role="tabpanel" aria-labelledby="el-collapse-head-6606"
											id="el-collapse-content-6606" class="el-collapse-item__wrap"
											data-old-padding-top="" data-old-padding-bottom=""
											data-old-overflow="" style="display: none;">
											<div class="el-collapse-item__content">
												<div data-v-ea3525f6="" class="menuItemList">
													<!-- <div data-v-ea3525f6="" role="group"
														aria-label="checkbox-group"
														class="el-checkbox-group chkGroup btnType col4">
														<label data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 1백</span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 2백</span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 3백</span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 4백</span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 5백</span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 6백</span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 7백</span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 8백</span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 9백</span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 1천</span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 2천</span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 3천</span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 4천</span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 5천</span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 6천</span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 7천</span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="[object Object]"></span><span
															class="el-checkbox__label"> 8천~</span></label>
													</div> -->
													<div data-v-ea3525f6="" class="inputArea mt16">
														<div data-v-ea3525f6="" class="inputManWon el-input">
															<!---->
															<input type="number" min="0" max="50000"
																class="el-input__inner" placeholder="만원">
														</div>
														~
														<div data-v-ea3525f6="" class="inputManWon el-input">
															<input type="number" min="0" max="50000"
																class="el-input__inner" placeholder="만원">
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div data-v-ea3525f6="" class="el-collapse-item is-active"
										aria-label="색상">
										<div role="tab" aria-controls="el-collapse-content-175"
											aria-describedby="el-collapse-content-175"
											aria-expanded="true">
											<div role="button" id="el-collapse-head-175" tabindex="0"
												class="el-collapse-item__header" onclick="menuopen(this)">
												<strong data-v-ea3525f6="">색상</strong><span
													data-v-ea3525f6="">중복선택가능</span><i
													class="el-collapse-item__arrow el-icon-arrow-right is-active"></i>
											</div>
										</div>
										<div role="tabpanel" aria-labelledby="el-collapse-head-175"
											id="el-collapse-content-175" class="el-collapse-item__wrap"
											style="display: none;" data-old-padding-top=""
											data-old-padding-bottom="" data-old-overflow="">
											<div class="el-collapse-item__content">
												<div data-v-ea3525f6="" class="menuItemList">

													<div data-v-ea3525f6="" role="group"
														aria-label="checkbox-group"
														class="el-checkbox-group chkGroup ibtnType color">
														<label data-v-ea3525f6="" class="el-checkbox color2"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="색상:흰색"></span><span class="el-checkbox__label">
																흰색 <!---->
														</span></label><label data-v-ea3525f6="" class="el-checkbox color25"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="색상:파란색"></span><span class="el-checkbox__label">
																파란색 <!---->
														</span></label><label data-v-ea3525f6="" class="el-checkbox color1"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="색상:검정색"></span><span class="el-checkbox__label">
																검정색 <!---->
														</span></label><label data-v-ea3525f6="" class="el-checkbox color5"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="색상:쥐색"></span><span class="el-checkbox__label">
																쥐색 <!---->
														</span></label><label data-v-ea3525f6="" class="el-checkbox color3"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="색상:은색"></span><span class="el-checkbox__label">
																은색 <!---->
														</span></label><label data-v-ea3525f6="" class="el-checkbox color13"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="색상:빨간색"></span><span class="el-checkbox__label">
																빨간색 <!---->
														</span></label><label data-v-ea3525f6="" class="el-checkbox color14"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="색상:주황색"></span><span class="el-checkbox__label">
																주황색 <!---->
														</span></label> <label data-v-ea3525f6="" class="el-checkbox color18"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="색상:노란색"></span><span class="el-checkbox__label">
																노란색 <!---->
														</span></label>

													</div>

												</div>
											</div>
										</div>
									</div>
									<div data-v-ea3525f6="" class="el-collapse-item is-active"
										aria-label="옵션">
										<div role="tab" aria-controls="el-collapse-content-1031"
											aria-describedby="el-collapse-content-1031"
											aria-expanded="true">
											<div role="button" id="el-collapse-head-1031" tabindex="0"
												class="el-collapse-item__header" onclick="menuopen(this)">
												<strong data-v-ea3525f6="">옵션</strong><span
													data-v-ea3525f6="">중복선택가능</span><i
													class="el-collapse-item__arrow el-icon-arrow-right is-active"></i>
											</div>
										</div>
										<div role="tabpanel" aria-labelledby="el-collapse-head-1031"
											id="el-collapse-content-1031" class="el-collapse-item__wrap"
											style="display: none;" data-old-padding-top=""
											data-old-padding-bottom="" data-old-overflow="">
											<div class="el-collapse-item__content">
												<div data-v-ea3525f6="" class="menuItemList">

													<div data-v-ea3525f6="" role="group"
														aria-label="checkbox-group"
														class="el-checkbox-group chkGroup ibtnType option">
														<label data-v-ea3525f6="" class="el-checkbox icon-opt1"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="옵션:선루프"></span><span class="el-checkbox__label">
																선루프 <!---->
														</span></label><label data-v-ea3525f6="" class="el-checkbox icon-opt2"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="옵션:하이패스"></span><span class="el-checkbox__label">
																하이패스 <!---->
														</span></label><label data-v-ea3525f6="" class="el-checkbox icon-opt6"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="옵션:후방센서"></span><span class="el-checkbox__label">
																후방센서 <!---->
														</span></label><label data-v-ea3525f6="" class="el-checkbox icon-opt4"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="옵션:후방카메라"></span><span
															class="el-checkbox__label"> 후방카메라 <!----></span></label><label
															data-v-ea3525f6="" class="el-checkbox icon-opt3"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="옵션:네비게이션"></span><span
															class="el-checkbox__label"> 네비게이션 <!----></span></label><label
															data-v-ea3525f6="" class="el-checkbox icon-opt5"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="옵션:핸들열선"></span><span class="el-checkbox__label">
																핸들 열선 <!---->
														</span></label> <label data-v-ea3525f6="" class="el-checkbox icon-opt5"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="옵션:에어백"></span><span class="el-checkbox__label">
																에어백 <!---->
														</span></label> <label data-v-ea3525f6="" class="el-checkbox icon-opt5"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="옵션:스마트키"></span><span class="el-checkbox__label">
																스마트키 <!---->
														</span></label> <label data-v-ea3525f6="" class="el-checkbox icon-opt5"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="옵션:블랙박스"></span><span class="el-checkbox__label">
																블랙박스 <!---->
														</span></label>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div data-v-ea3525f6="" class="el-collapse-item is-active"
										aria-label="직영점">
										<div role="tab" aria-controls="el-collapse-content-4257"
											aria-describedby="el-collapse-content-4257"
											aria-expanded="true">
											<div role="button" id="el-collapse-head-4257" tabindex="0"
												class="el-collapse-item__header" onclick="menuopen(this)">
												<strong data-v-ea3525f6="">지역/직영점</strong><span
													data-v-ea3525f6="">중복선택가능</span><i
													class="el-collapse-item__arrow el-icon-arrow-right is-active"></i>
											</div>
										</div>
										<div role="tabpanel" aria-labelledby="el-collapse-head-4257"
											id="el-collapse-content-4257" class="el-collapse-item__wrap"
											style="display: none;" data-old-padding-top=""
											data-old-padding-bottom="" data-old-overflow="">
											<div class="el-collapse-item__content">
												<div data-v-ea3525f6="" class="menuItemList">
													<div data-v-ea3525f6="" class="snbScorll el-scrollbar">
														<div class="el-scrollbar__wrap"
															style="margin-bottom: -17px; margin-right: -17px;">
															<div class="el-scrollbar__view">
																<div data-v-ea3525f6="" class="areaList">
																	<ul data-v-ea3525f6="" class="depth1">
																		<c:forEach items="${store}" var="detail">
																			<li data-v-ea3525f6=""><label data-v-ea3525f6=""
																				class="el-checkbox"><span
																					class="el-checkbox__input"><span
																						class="el-checkbox__inner"></span><input
																						type="checkbox" aria-hidden="false" true-value="1"
																						false-value="0" class="el-checkbox__original"
																						value="직영점:${detail}"></span><span
																					class="el-checkbox__label"> ${detail}<!----></span></label></li>
																		</c:forEach>
																	</ul>
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
											</div>
										</div>
									</div>
									<div data-v-ea3525f6="" class="el-collapse-item is-active"
										aria-label="연료">
										<div role="tab" aria-controls="el-collapse-content-2596"
											aria-describedby="el-collapse-content-2596"
											aria-expanded="true">
											<div role="button" id="el-collapse-head-2596" tabindex="0"
												class="el-collapse-item__header" onclick="menuopen(this)">
												<strong data-v-ea3525f6="">연료</strong>
												<button data-v-ea3525f6="" type="button"
													class="el-button el-tooltip  item tooltip-btn el-button--default"
													aria-describedby="el-tooltip-4555" tabindex="0">
													<!---->
													<!---->
													<span><i data-v-ea3525f6="" class="el-icon-info2"></i></span>
												</button>
												<span data-v-ea3525f6="">중복선택가능</span><i
													class="el-collapse-item__arrow el-icon-arrow-right is-active"></i>
											</div>
										</div>
										<div role="tabpanel" aria-labelledby="el-collapse-head-2596"
											id="el-collapse-content-2596" class="el-collapse-item__wrap"
											style="display: none;" data-old-padding-top=""
											data-old-padding-bottom="" data-old-overflow="">
											<div class="el-collapse-item__content">
												<div data-v-ea3525f6="" class="menuItemList">

													<div data-v-ea3525f6="" role="group"
														aria-label="checkbox-group"
														class="el-checkbox-group chkGroup btnType">
														<label data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="연료:가솔린"></span><span class="el-checkbox__label">
																가솔린 <!---->
														</span></label><label data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="연료:디젤"></span><span class="el-checkbox__label">
																디젤 <!---->
														</span></label><label data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="연료:LPG"></span><span class="el-checkbox__label">
																LPG <!---->
														</span></label><label data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="연료:하이브리드"></span><span
															class="el-checkbox__label"> 하이브리드 <!----></span></label><label
															data-v-ea3525f6="" class="el-checkbox"><span
															class="el-checkbox__input"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="false" class="el-checkbox__original"
																value="연료:전기"></span><span class="el-checkbox__label">
																전기 <!---->
														</span></label>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div data-v-ea3525f6="" class="el-collapse-item is-active"
										aria-label="변속기">
										<div role="tab" aria-controls="el-collapse-content-1857"
											aria-describedby="el-collapse-content-1857"
											aria-expanded="true">
											<div role="button" id="el-collapse-head-1857" tabindex="0"
												class="el-collapse-item__header" onclick="menuopen(this)">
												<strong data-v-ea3525f6="">변속기</strong><span
													data-v-ea3525f6="">중복선택가능</span><i
													class="el-collapse-item__arrow el-icon-arrow-right is-active"></i>
											</div>
										</div>
										<div role="tabpanel" aria-labelledby="el-collapse-head-1857"
											id="el-collapse-content-1857" class="el-collapse-item__wrap"
											style="display: none;" data-old-padding-top=""
											data-old-padding-bottom="" data-old-overflow="">
											<div class="el-collapse-item__content">

												<div data-v-ea3525f6="" role="group"
													aria-label="checkbox-group"
													class="el-checkbox-group chkGroup btnType">
													<label data-v-ea3525f6="" class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" class="el-checkbox__original"
															value="변속기:오토"></span><span class="el-checkbox__label">
															오토 <!---->
													</span></label><label data-v-ea3525f6="" class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" class="el-checkbox__original"
															value="변속기:수동"></span><span class="el-checkbox__label">
															수동 <!---->
													</span></label>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div data-v-ea3525f6="" class="el-collapse-item is-active"
									aria-label="사고유무">
									<div role="tab" aria-controls="el-collapse-content-5879"
										aria-describedby="el-collapse-content-5879"
										aria-expanded="true">
										<div role="button" id="el-collapse-head-5879" tabindex="0"
											class="el-collapse-item__header" onclick="menuopen(this)">
											<strong data-v-ea3525f6="">사고유무</strong><span
												data-v-ea3525f6="">중복선택가능</span><i
												class="el-collapse-item__arrow el-icon-arrow-right is-active"></i>
										</div>
									</div>
									<div role="tabpanel" aria-labelledby="el-collapse-head-5879"
										id="el-collapse-content-5879" class="el-collapse-item__wrap"
										style="display: none; overflow: hidden; padding-top: 0px; padding-bottom: 0px;"
										data-old-padding-top="0px" data-old-padding-bottom="0px"
										data-old-overflow="hidden">
										<div class="el-collapse-item__content">
											<div data-v-ea3525f6="" class="menuItemList">

												<div data-v-ea3525f6="" role="group"
													aria-label="checkbox-group"
													class="el-checkbox-group chkGroup btnType">
													<label data-v-ea3525f6="" class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" class="el-checkbox__original"
															value="사고유무:무사고"></span><span class="el-checkbox__label">
															무사고 <!---->
													</span></label><label data-v-ea3525f6="" class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" class="el-checkbox__original"
															value="사고유무:단순수리"></span><span
														class="el-checkbox__label"> 단순수리 <!----></span></label><label
														data-v-ea3525f6="" class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" class="el-checkbox__original"
															value="사고유무:사고"></span><span class="el-checkbox__label">
															사고 <!---->
													</span></label>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div data-v-ea3525f6="" class="el-collapse-item" aria-label="인승">
									<div role="tab" aria-controls="el-collapse-content-9490"
										aria-describedby="el-collapse-content-9490"
										aria-expanded="true">
										<div role="button" id="el-collapse-head-9490" tabindex="0"
											class="el-collapse-item__header" onclick="menuopen(this)">
											<strong data-v-ea3525f6="">인승</strong><span
												data-v-ea3525f6="">중복선택가능</span><i
												class="el-collapse-item__arrow el-icon-arrow-right is-active"></i>
										</div>
									</div>
									<div role="tabpanel" aria-labelledby="el-collapse-head-9490"
										id="el-collapse-content-9490" class="el-collapse-item__wrap"
										style="display: none;" data-old-padding-top=""
										data-old-padding-bottom="" data-old-overflow="">
										<div class="el-collapse-item__content">
											<div data-v-ea3525f6="" class="menuItemList">

												<div data-v-ea3525f6="" role="group"
													aria-label="checkbox-group"
													class="el-checkbox-group chkGroup btnType col3">
													<label data-v-ea3525f6="" class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" class="el-checkbox__original"
															value="인승:4"></span><span class="el-checkbox__label">
															4인승 <!---->
													</span></label><label data-v-ea3525f6="" class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" class="el-checkbox__original"
															value="인승:5"></span><span class="el-checkbox__label">
															5인승 <!---->
													</span></label><label data-v-ea3525f6="" class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" class="el-checkbox__original"
															value="인승:7"></span><span class="el-checkbox__label">
															7인승 <!---->
													</span></label><label data-v-ea3525f6="" class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" class="el-checkbox__original"
															value="인승:9"></span><span class="el-checkbox__label">
															9인승 <!---->
													</span></label><label data-v-ea3525f6="" class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" class="el-checkbox__original"
															value="인승:11"></span><span class="el-checkbox__label">
															11인승 <!---->
													</span></label><label data-v-ea3525f6="" class="el-checkbox"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" class="el-checkbox__original"
															value="인승:15"></span><span class="el-checkbox__label">
															15인승 <!---->
													</span></label>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div data-v-ea3525f6=""
								class="el-dialog__wrapper popup confirm noTitle"
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

						<div class="kcarSearchCnt">
							<div class="detailTag">
								<div class="tagBox" id = "tagBox">
<!-- 									<span class="tagNew el-tag el-tag--light"> 경차 <i
										class="el-tag__close el-icon-close"></i></span><span
										class="tagNew el-tag el-tag--light"> 소형차 <i
										class="el-tag__close el-icon-close"></i></span><span
										class="tagNew el-tag el-tag--light"> 중형차 <i
										class="el-tag__close el-icon-close"></i></span><span
										class="tagNew el-tag el-tag--light"> 준중형차 <i
										class="el-tag__close el-icon-close"></i></span><span
										class="tagNew el-tag el-tag--light"> 스포츠카 <i
										class="el-tag__close el-icon-close"></i></span><span
										class="tagNew el-tag el-tag--light"> 대형차 <i
										class="el-tag__close el-icon-close"></i></span><span
										class="tagNew el-tag el-tag--light"> 기아 <i
										class="el-tag__close el-icon-close"></i></span> -->
								</div>
							</div>
							<div class="section">
								<div class="resultCnt">
									<div class="listLine">
										<ul>
											<li class="carTotal">총 <span class="textRed" id="total">${totalCount }</span>대
											</li>
											<li><select class="form-select"
												aria-label="Default select example"
												style="width: 160px; height: 56px; border-radius: 10px; padding: 6px;"
												id="alignment" name="alignment">
													<option selected value='기본정렬'>기본 정렬</option>
													<option value="낮은가격순">낮은 가격순</option>
													<option value="높은가격순">높은 가격순</option>
													<option value="적은주행거리순">적은 주행거리순</option>
													<option value="많은주행거리순">많은 주행거리순</option>
													<option value="최근연식순">최근 연식순</option>
													<option value="낮은연식순">낮은 연식순</option>
											</select></li>
										</ul>
									</div>
									<div
										class="el-dialog__wrapper popup popCenter searPop shortenPop"
										style="z-index: 2053; display: none;">
										<div role="dialog" aria-modal="true" aria-label="고객님의 최근저장 목록"
											class="el-dialog" style="margin-top: 15vh; width: 92rem;">
											<div class="el-dialog__header">
												<span class="el-dialog__title">고객님의 최근저장 목록</span>
												<button type="button" aria-label="Close"
													class="el-dialog__headerbtn">
													<i class="el-dialog__close el-icon el-icon-close"></i>
												</button>
											</div>
											<div class="el-dialog__body">
												<div class="popsection">
													<p class="subtxt">단축검색 저장은 최대 5개까지 등록 가능합니다.</p>
													<div class="saveSet">
														<span class="saveLabel">최근 조건 저장</span>
														<div role="switch" class="el-switch">
															<input type="checkbox" name="" true-value="true"
																class="el-switch__input">
															<!---->
															<span class="el-switch__core"
																style="width: 40px; border-color: rgb(241, 241, 244); background-color: rgb(241, 241, 244);"></span>
															<!---->
														</div>
													</div>
													<div class="popContent el-scrollbar">
														<div class="el-scrollbar__wrap"
															style="margin-bottom: -17px; margin-right: -17px;">
															<div class="el-scrollbar__view">
																<div class="shortGroup">
																	<button type="button"
																		class="el-button btnPlus el-button--default">
																		<!---->
																		<!---->
																		<span><i class="icon"></i>차량검색 </span>
																	</button>
																	<div class="rowItem">
																		<form class="el-form frmText">
																			<div class="el-textarea">
																				<textarea autocomplete="off" rows="2"
																					placeholder="한글/영문/숫자 최대 15자입력" maxlength="15"
																					class="el-textarea__inner"
																					style="min-height: 42px;"></textarea>
																				<!---->
																			</div>
																			<button type="button"
																				class="el-button clearable el-button--default">
																				<!---->
																				<!---->
																				<!---->
																			</button>
																		</form>
																		<ul>
																			<li>경차</li>
																			<li>소형차</li>
																			<li>중형차</li>
																			<li>준중형차</li>
																			<li>스포츠카</li>
																			<li>대형차</li>
																			<li>기아</li>
																		</ul>
																		<button type="button"
																			class="el-button el-button--default btnOptType1">
																			<!---->
																			<!---->
																			<span> 등록 </span>
																		</button>
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
																style="transform: translateY(0%);"></div>
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
											<div class="el-dialog__footer">
												<div class="dialog-footer center">
													<button type="button"
														class="el-button lineApply el-button--default">
														<!---->
														<!---->
														<span> 전체 초기화 </span>
													</button>
													<button type="button"
														class="el-button apply el-button--primary">
														<!---->
														<!---->
														<span> 닫기 </span>
													</button>
												</div>
											</div>
										</div>
									</div>
									<div class="el-dialog__wrapper popup popCenter msgAlert"
										style="display: none;">
										<div role="dialog" aria-modal="true" aria-label="dialog"
											class="el-dialog" style="margin-top: 15vh; width: 40rem;">
											<div class="el-dialog__header">
												<span class="el-dialog__title"></span>
												<button type="button" aria-label="Close"
													class="el-dialog__headerbtn">
													<i class="el-dialog__close el-icon el-icon-close"></i>
												</button>
											</div>
											<!---->
											<div class="el-dialog__footer">
												<div class="dialog-footer center">
													<button type="button"
														class="el-button lineApply el-button--default">
														<!---->
														<!---->
														<span> 아니요 </span>
													</button>
													<button type="button"
														class="el-button apply el-button--primary">
														<!---->
														<!---->
														<span> 불러오기 </span>
													</button>
												</div>
											</div>
										</div>
									</div>
									<div class="carListWrap" id="mainrequest">
										<c:forEach items="${list}" var="detail">
								<div class="carListBox">
												<div class="carListImg">
													<span class="car360Img"><img
														src="/images/common/ico-360.svg" alt="360"></span> <a
														href="/detail/carInfo?c_num=${detail.c_num}" aria-current="page"
														class="nuxt-link-exact-active nuxt-link-active"
														id="mkt_clickCar"><img src="${detail.c_photo }"
														alt="챠량이미지"
														onerror="this.src='/images/search/bg_no_Img_lg.png'"
														loading="lazy"></a>

												</div>
												<ul class="listViewLabel"></ul>
												<div class="detailInfo">
													<div class="carName">
														<p class="carTit">
															<a href="/detail/carInfo?c_num=${detail.c_num}" aria-current="page"
																class="nuxt-link-exact-active nuxt-link-active"
																id="mkt_clickCarNm"> ${detail.cb_brand}
																${detail.cb_m_model } </a>
														</p>
													</div>
													<div class="carListFlex">
														<div class="carExpIn">
															<p class="carExp">${detail.c_price}만원</p>

														</div>
														<p class="detailCarCon">
															<span class="block">${detail.c_year }</span> <span>${detail.c_distance}km</span>
															<span>${detail.c_fuel}</span> <span>${detail.st_name }</span>
														</p>
													</div>

												</div>
											</div>
										</c:forEach>
									</div>
									<div class="pagination -sm" id="navi">
										<button type="button"
											class="el-button pagePrev el-button--default">
											<!---->
											<!---->
											<span><img
												src="/images/common/pagenation-btn-left.svg" alt="이전"
												onclick="prev()"></span>
										</button>
										<a href="#" class="pagingNum" onclick="pagesel(this)"> <span
											class="textRed"> 1 </span></a> ${totalPage }
										<button type="button"
											class="el-button pageNext el-button--default">
											<span><img
												src="/images/common/pagenation-btn-right.svg" alt="다음"
												onclick="next()"></span>
										</button>

									</div>
									<div class="resultCnt">
										<div class="subTitbox">
											<h2 class="subTitle">브랜드 인증 차량</h2>
										</div>
										<div class="carListWrap" id="sublist">
											<c:forEach items="${listFore}" var="detail">
												<div class="carListBox">
													<div class="carListImg">
														<span class="car360Img"><img
															src="/images/common/ico-360.svg" alt="360"></span> <a
															href="/detail/carInfo?c_num=${detail.c_num}" aria-current="page"
															class="nuxt-link-exact-active nuxt-link-active"
															id="mkt_clickCar"><img src="${detail.c_photo }"
															alt="챠량이미지"
															onerror="this.src='/images/search/bg_no_Img_lg.png'"
															loading="lazy"></a>

													</div>
													<ul class="listViewLabel"></ul>
													<div class="detailInfo">
														<div class="carName">
															<p class="carTit">
																<a href="/detail/carInfo?c_num=${detail.c_num}" aria-current="page"
																	class="nuxt-link-exact-active nuxt-link-active"
																	id="mkt_clickCarNm"> ${detail.cb_brand}
																	${detail.cb_m_model } </a>
															</p>
														</div>
														<div class="carListFlex">
															<div class="carExpIn">
																<p class="carExp">${detail.c_price}만원</p>

															</div>
															<p class="detailCarCon">
																<span class="block">${detail.c_year }</span> <span>${detail.c_distance}km</span>
																<span>${detail.c_fuel}</span> <span>${detail.st_name }</span>
															</p>
														</div>

													</div>
												</div></a>
											</c:forEach>
										</div>
										<div class="pagination -sm" id="naviFore">
											<button type="button"
												class="el-button pagePrev el-button--default">
												<!---->
												<!---->
												<span><img
													src="/images/common/pagenation-btn-left.svg" alt="이전"
													onclick="prevFore()"></span>
											</button>
											<a href="#" class="pagingNum" onclick="pageselFore(this)">
												<span class="textRed"> 1 </span>
											</a> ${totalPageFore}
											<button type="button"
												class="el-button pageNext el-button--default">
												<!---->
												<!---->
												<span><img
													src="/images/common/pagenation-btn-right.svg" alt="다음"
													onclick="nextFore()"></span>
											</button>

										</div>
									</div>
									<div class="resultCnt">

										<div class="swiperProduct">

											<div
												class="productWrap swiper-container swiper-container-initialized swiper-container-horizontal">
												<div class="swiper-wrapper"
													style="transform: translate3d(-2207.33px, 0px, 0px); transition-duration: 0ms;">
													<div class="swiper-slide"
														style="width: 275.333px; margin-right: 40px;">
														<div class="prdImg">
															<!---->
															<!---->
															<a href="/bc/search" aria-current="page"
																class="nuxt-link-exact-active nuxt-link-active"><img
																src="https://img.kcar.com/carpicture/carpicture01/pic6061/kcarM_60614634_045.jpg"
																alt="챠량이미지"
																onerror="this.src='/images/search/bg_no_Img_lg.png'"
																loading="lazy"></a>
															<!---->
														</div>

													</div>
													<div class="swiper-slide"
														style="width: 275.333px; margin-right: 40px;"></div>
													<div class="swiper-slide"
														style="width: 275.333px; margin-right: 40px;"></div>
													<div class="swiper-slide"
														style="width: 275.333px; margin-right: 40px;"></div>
													<div class="swiper-slide"
														style="width: 275.333px; margin-right: 40px;"></div>
													<div class="swiper-slide"
														style="width: 275.333px; margin-right: 40px;"></div>
													<div class="swiper-slide swiper-slide-prev"
														style="width: 275.333px; margin-right: 40px;"></div>
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

											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="bannerArea small">
								<a href="/bc/search" aria-current="page"
									class="linkMore nuxt-link-exact-active nuxt-link-active"><div
										class="bnText">
										<p class="txt-sm">최대 365일까지 고장∙수리 걱정 없이!</p>
										<p class="txt-lg">내 차 보증 혜택을 더 길게 누려 보세요</p>
										<p class="txt-xsm">K Car Warranty</p>
									</div> <img src="/images/carBrand/brand-service-bg.jpg" alt=""></a>
							</div>
							<div class="bannerArea large">
								<div class="bnText">
									<p class="txt-sm">
										최대 365일까지 고장∙수리 걱정 없이!<br>K Car에 맡겨 주세요
									</p>
									<p class="txt-lg">K Car Warranty</p>
									<p class="txt-xsm">워런티 가입하면 얼마나 절약할 수 있을까?!</p>
									<a href="/bc/search" aria-current="page"
										class="btnLinkMore nuxt-link-exact-active nuxt-link-active"><span>직접
											확인 하러 가기</span></a>
								</div>
								<img src="/images/carBrand/brand-warranty-bg.jpg" alt="">
							</div>
							<div class="bnLinkArea">
								<div class="item-lg">
									<a href="/bc/search" aria-current="page"
										class="nuxt-link-exact-active nuxt-link-active"><p
											class="txt-xlg">
											K Car 차량평가사가<br>직접 방문하니까 더 안심!
										</p>
										<p class="txt-bg">내차팔기 홈서비스</p>
										<p class="txt-md">
											<span>차량 평가사 방문 첫날 내차팔기 완료한 고객님께</span> <span class="lg">백화점
												상품권 ₩100,000원 제공</span>
										</p></a>
								</div>
								<div class="item-md">
									<a href="/bc/search" aria-current="page"
										class="nuxt-link-exact-active nuxt-link-active"><p
											class="txt-lg">
											내차팔기 <strong>원데이 보장제</strong>
										</p>
										<p class="txt-sm">
											방문 견적부터 소유권 이전까지 단 하루!<br>K Car 논스톱 서비스 이용하세요.
										</p></a> <a href="/bc/search" aria-current="page"
										class="nuxt-link-exact-active nuxt-link-active"><p
											class="txt-lg">“K Car 믿고 판매 했어요!”</p>
										<p class="txt-sm">
											<strong>리얼고객</strong>들의 <strong>리얼후기</strong> 보러가기
										</p></a> <a href="/bc/search" aria-current="page"
										class="nuxt-link-exact-active nuxt-link-active"><p
											class="txt-lg">
											<strong>법인 차량</strong> 매각도<br>간편하고 합리적인 K Car에서 진행!
										</p></a>
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
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
<script src="js/mycarbuy.js"></script>

