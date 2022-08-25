<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="ko" class="chrome">
<head>
<title>K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카</title>
	<style>
			.footerWrap {
	margin-top: 50%
}
		</style>
<%@ include file="mypage_style.jsp" %>
</head>
<body>
	
	
				<!-- header -->
				<%@ include file="/WEB-INF/default/header.jsp" %>
				<!-- header -->
				<div class="contentsWrap" style="height: 100%">
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
							<%@ include file="/WEB-INF/mypage/mypage_nav.jsp" %>
								
						</div>
						<div class="mypagCont mypageMain">
							<div class="contentsBox section01 el-row">
								<div class="myInfoBox">
									<div>
										<p class="myName">${sessionScope.name }님</p>
										<a href="/mp/myinfo/auth" class="txtButton"> 정보 수정 </a>
									</div>
									<div class="totalList">
										<ul>
											<li><span>구매준비차량</span> <a href="/BuyOrderManage" class=""><strong>${buy_check }</strong></a></li>
											<li><span>판매준비차량</span> <a href="/mp/MyCarSellAplMgtList"
												class=""><strong>${check}</strong></a></li>
											<li><span>렌트차량</span> <a href="/RentAplList"
												class=""><strong>${rent_check }</strong></a></li>
											<li><span>최근본차량</span> <a
												href="/bc/LatelyViewedCar/list" class=""><strong>18</strong></a></li>
										</ul>
									</div>
								</div>
								<div class="board">
									<div class="el-row">
										<div class="infoTitleWrap">
											<h4 class="infoTitle">내차사기 주문관리</h4>
											<a class="moreBtn el-link el-link--default is-underline" href="/BuyOrderManage">
												<!---->
												<span class="el-link--inner"> 더보기<i
													class="el-icon-arrow-right"></i></span>
											<!---->
											</a>
										</div>
										<div class="el-row">
											<div class="boardListTable mT20">
												<div class="TblDefault mypageList">
													<div
														class="el-table el-table--fit el-table--enable-row-hover"
														style="width: 100%; height: 30%">
														<div class="hidden-columns">
															<div></div>
															<div></div>
														</div>
														<div class="el-table__header-wrapper">
															<table cellspacing="0" cellpadding="0" border="0"
																class="el-table__header" style="width: 905px;">
																<colgroup>
																	<col name="el-table_1_column_1" width="585">
																	<col name="el-table_1_column_2" width="320">
																	<col name="gutter" width="0">
																</colgroup>
																<thead class="has-gutter">
																	<tr class="">
																		<th colspan="1" rowspan="1"
																			class="el-table_1_column_1     is-leaf el-table__cell"><div
																				class="cell">차량정보</div></th>
																		<th colspan="1" rowspan="1"
																			class="el-table_5_column_13     is-leaf el-table__cell"><div
																				class="cell">가격</div></th>
																		<th class="el-table__cell gutter"
																			style="width: 0px; display: none;"></th>
																	</tr>
																</thead>
															</table>
														</div>
														<div class="el-table__body-wrapper is-scrolling-none">
															<table cellspacing="0" cellpadding="0" border="0"
																						class="el-table__body" style="width: 905px;">
																						<colgroup>
																							<col name="el-table_1_column_1" width="50">
																							<col name="el-table_1_column_2" width="685">
																							<col name="el-table_1_column_3" width="170">
																						</colgroup>
																						<tbody>
																							<c:choose>
																								<c:when test="${list != null }">
																									<c:forEach var="car" items="${list }"
																										varStatus="status">
																										<tr class="el-table__row">
																											<td rowspan="1" colspan="1"
																												class="el-table_1_column_1  el-table-column--selection el-table__cell"><div
																													class="cell">
																													<div class="roundCheck">
																														
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
															<div class="el-table__empty-block"
																style="height: 100%; width: 905px;">
																<span class="el-table__empty-text"><div
																		class="nolist2">
																		
																		
																	</div></span>
															</div>
															<!---->
														</div>
														<!---->
														<!---->
														<!---->
														<!---->
														<div class="el-table__column-resize-proxy"
															style="display: none;"></div>
													</div>
												</div>
											</div>
										</div>
										<div>
											<div>
												<div
													class="el-dialog__wrapper popup popCenter wid480 hauto active"
													style="display: none;">
													<div role="dialog" aria-modal="true"
														aria-label="취소 사유를 선택해주세요" class="el-dialog"
														style="margin-top: 15vh;">
														<div class="el-dialog__header">
															<span class="el-dialog__title">취소 사유를 선택해주세요</span>
															<button type="button" aria-label="Close"
																class="el-dialog__headerbtn">
																<i class="el-dialog__close el-icon el-icon-close"></i>
															</button>
														</div>
														<!---->
														<div class="el-dialog__footer">
															<span class="dialog-footer"><div
																	class="footerBtnWrap">
																	<div class="searchTrigger box maxW400 el-row">
																		<button class="button apply">주문취소</button>
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
										<div class="carSellPop">
											<div class="el-dialog__wrapper popup confirm noTitle"
												style="display: none;">
												<div role="dialog" aria-modal="true" aria-label="noTitle"
													class="el-dialog" style="margin-top: 15vh;">
													<div class="el-dialog__header">
														<span class="el-dialog__title">noTitle</span>
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
												<div class="el-dialog__wrapper popup fullPopup hauto"
													style="display: none;">
													<div role="dialog" aria-modal="true" aria-label="필요서류 안내"
														class="el-dialog" style="margin-top: 15vh;">
														<div class="el-dialog__header">
															<span class="el-dialog__title">필요서류 안내</span>
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
										<div>
											<div>
												<div class="el-dialog__wrapper popup popCenter"
													style="display: none;">
													<div role="dialog" aria-modal="true" aria-label="dialog"
														class="el-dialog" style="margin-top: 15vh;">
														<div class="el-dialog__header">
															<span class="el-dialog__title">결제내역</span>
															<button type="button"
																class="el-button popHeadBtn el-button--default"
																id="printBtn">
																<!---->
																<!---->
																<span> 인쇄하기 </span>
															</button>
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
											<div class="el-dialog__wrapper popup popCenter active"
												style="display: none;">
												<div role="dialog" aria-modal="true" aria-label="계약서 서명하기"
													class="el-dialog" style="margin-top: 15vh;">
													<div class="el-dialog__header">
														<span class="el-dialog__title">계약서 서명하기</span>
														<button type="button" aria-label="Close"
															class="el-dialog__headerbtn">
															<i class="el-dialog__close el-icon el-icon-close"></i>
														</button>
													</div>
													<!---->
													<div class="el-dialog__footer">
														<span class="dialog-footer"><div
																class="footerBtnWrap">
																<!---->
															</div></span>
													</div>
												</div>
											</div>
											<div>
												<div class="el-dialog__wrapper popup fullPopup buyFullPopup"
													style="display: none;">
													<div role="dialog" aria-modal="true" aria-label="자동차 매매계약서"
														class="el-dialog" style="margin-top: 15vh;">
														<div class="el-dialog__header">
															<span class="el-dialog__title">자동차 매매계약서</span>
															<button type="button" aria-label="Close"
																class="el-dialog__headerbtn">
																<i class="el-dialog__close el-icon el-icon-close"></i>
															</button>
														</div>
														<!---->
														<div class="el-dialog__footer">
															<span class="dialog-footer"><div
																	class="footerBtnWrap">
																	<div class="searchTrigger box maxW400 notPrint el-row">
																		<button class="button apply">확인</button>
																	</div>
																</div></span>
														</div>
													</div>
												</div>
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
												<div class="el-dialog__wrapper popup fullPopup"
													style="display: none;">
													<div role="dialog" aria-modal="true"
														aria-label="중고자동차 성능·상태점검기록부" class="el-dialog"
														style="margin-top: 15vh;">
														<div class="el-dialog__header">
															<span class="el-dialog__title">중고자동차 성능·상태점검기록부</span>
															<button type="button" aria-label="Close"
																class="el-dialog__headerbtn">
																<i class="el-dialog__close el-icon el-icon-close"></i>
															</button>
														</div>
														<!---->
														<!---->
													</div>
												</div>
												<div class="carInfoWrap">
													<div class="el-dialog__wrapper popup fullPopup active"
														style="display: none;">
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
																<span class="dialog-footer"><div
																		class="footerBtnWrap">
																		<div class="searchTrigger box maxW320 el-row">
																			<button type="button" class="button apply">
																				닫기</button>
																		</div>
																	</div></span>
															</div>
														</div>
													</div>
												</div>
												<div class="el-dialog__wrapper popup fullPopup"
													style="display: none;">
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
											<div>
												<div class="el-dialog__wrapper popup popCenter wid480 hfix"
													style="display: none;">
													<div role="dialog" aria-modal="true" aria-label="dialog"
														class="el-dialog" style="margin-top: 15vh;">
														<div class="el-dialog__header">
															<span class="el-dialog__title">카카오페이 전자 서명</span>
															<button type="button" aria-label="Close"
																class="el-dialog__headerbtn">
																<i class="el-dialog__close el-icon el-icon-close"></i>
															</button>
														</div>
														<!---->
														<div class="el-dialog__footer">
															<span class="dialog-footer"><div
																	class="footerBtnWrap">
																	<div class="searchTrigger box el-row">
																		<button class="button apply">전자서명 요청하기</button>
																	</div>
																</div></span>
														</div>
													</div>
												</div>
												<div>
													<div class="el-row">
														<div
															class="el-dialog__wrapper popup popCenter wid640 hauto"
															style="display: none;">
															<div role="dialog" aria-modal="true" aria-label="dialog"
																class="el-dialog" style="margin-top: 15vh;">
																<div class="el-dialog__header">
																	<span class="el-dialog__title">개인 정보 제3자 제공동의</span>
																	<button type="button" aria-label="Close"
																		class="el-dialog__headerbtn">
																		<i class="el-dialog__close el-icon el-icon-close"></i>
																	</button>
																</div>
																<!---->
																<div class="el-dialog__footer">
																	<span class="dialog-footer"><div
																			class="footerBtnWrap">
																			<div class="searchTrigger box el-row">
																				<button class="button apply">확인</button>
																			</div>
																		</div></span>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div>
													<div
														class="el-dialog__wrapper popup popCenter wid480 hauto"
														style="display: none;">
														<div role="dialog" aria-modal="true" aria-label="dialog"
															class="el-dialog" style="margin-top: 15vh; padding: 0px;">
															<div class="el-dialog__header">
																<span class="el-dialog__title">카카오페이 전자 서명</span>
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
														<div
															class="el-dialog__wrapper popup popCenter wid480 hauto"
															style="display: none;">
															<div role="dialog" aria-modal="true" aria-label="dialog"
																class="el-dialog"
																style="margin-top: 15vh; padding: 0px;">
																<div class="el-dialog__header">
																	<span class="el-dialog__title pdB40">내차사기 홈서비스
																		계약서<br> 전자서명 완료 확인
																	</span>
																	<button type="button" aria-label="Close"
																		class="el-dialog__headerbtn">
																		<i class="el-dialog__close el-icon el-icon-close"></i>
																	</button>
																</div>
																<!---->
																<!---->
															</div>
														</div>
														<div
															class="el-dialog__wrapper popup popCenter wid480 hauto"
															style="display: none;">
															<div role="dialog" aria-modal="true" aria-label="dialog"
																class="el-dialog"
																style="margin-top: 15vh; padding: 0px;">
																<div class="el-dialog__header">
																	<span class="el-dialog__title pdB40">내차사기 홈서비스
																		계약서<br> 전자서명 완료 확인
																	</span>
																	<button type="button" aria-label="Close"
																		class="el-dialog__headerbtn">
																		<i class="el-dialog__close el-icon el-icon-close"></i>
																	</button>
																</div>
																<!---->
																<!---->
															</div>
														</div>
														<div
															class="el-dialog__wrapper popup popCenter wid480 hauto"
															style="display: none;">
															<div role="dialog" aria-modal="true" aria-label="dialog"
																class="el-dialog"
																style="margin-top: 15vh; padding: 0px;">
																<div class="el-dialog__header">
																	<span class="el-dialog__title pdB40">내차사기 홈서비스
																		계약서<br> 전자서명 완료 확인
																	</span>
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
											<div class="el-dialog__wrapper popup popCenter wid480 hauto"
												style="display: none;">
												<div role="dialog" aria-modal="true" aria-label="보험증서 업로드"
													class="el-dialog" style="margin-top: 15vh;">
													<div class="el-dialog__header">
														<span class="el-dialog__title">보험증서 업로드</span>
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
													<div
														class="el-dialog__wrapper popup popCenter wid480 hauto"
														style="display: none;">
														<div role="dialog" aria-modal="true"
															aria-label="보험가입 시 유의사항" class="el-dialog"
															style="margin-top: 15vh;">
															<div class="el-dialog__header">
																<span class="el-dialog__title">보험가입 시 유의사항</span>
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
											<div
												class="el-dialog__wrapper popup popCenter wid480 higAuto"
												style="display: none;">
												<div role="dialog" aria-modal="true" aria-label="계약서 보기"
													class="el-dialog" style="margin-top: 15vh;">
													<div class="el-dialog__header">
														<span class="el-dialog__title">계약서 보기</span>
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
												<div class="el-dialog__wrapper popup fullPopup buyFullPopup"
													style="display: none;">
													<div role="dialog" aria-modal="true" aria-label="자동차 매매계약서"
														class="el-dialog" style="margin-top: 15vh;">
														<div class="el-dialog__header">
															<span class="el-dialog__title">자동차 매매계약서</span>
															<button type="button" aria-label="Close"
																class="el-dialog__headerbtn">
																<i class="el-dialog__close el-icon el-icon-close"></i>
															</button>
														</div>
														<!---->
														<div class="el-dialog__footer">
															<span class="dialog-footer"><div
																	class="footerBtnWrap">
																	<div class="searchTrigger box maxW400 notPrint el-row">
																		<button class="button apply">확인</button>
																	</div>
																</div></span>
														</div>
													</div>
												</div>
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
												<div class="el-dialog__wrapper popup fullPopup"
													style="display: none;">
													<div role="dialog" aria-modal="true"
														aria-label="중고자동차 성능·상태점검기록부" class="el-dialog"
														style="margin-top: 15vh;">
														<div class="el-dialog__header">
															<span class="el-dialog__title">중고자동차 성능·상태점검기록부</span>
															<button type="button" aria-label="Close"
																class="el-dialog__headerbtn">
																<i class="el-dialog__close el-icon el-icon-close"></i>
															</button>
														</div>
														<!---->
														<!---->
													</div>
												</div>
												<div class="carInfoWrap">
													<div class="el-dialog__wrapper popup fullPopup active"
														style="display: none;">
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
																<span class="dialog-footer"><div
																		class="footerBtnWrap">
																		<div class="searchTrigger box maxW320 el-row">
																			<button type="button" class="button apply">
																				닫기</button>
																		</div>
																	</div></span>
															</div>
														</div>
													</div>
												</div>
												<div class="el-dialog__wrapper popup fullPopup"
													style="display: none;">
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
												<!---->
											</div>
										</div>
									</div>
									<div class="mT64 el-row">
										<div class="infoTitleWrap">
											<h4 class="infoTitle">내차팔기 신청관리</h4>
											<a class="moreBtn el-link el-link--default is-underline" href="/mp/MyCarSellAplMgtList">
												<!---->
												<span class="el-link--inner"> 더보기<i
													class="el-icon-arrow-right"></i></span>
											<!---->
											</a>
										</div>
										<div class="el-row">
											<div class="el-row">
												<div class="boardListTable mT20">
													<div class="TblDefault mypageList">
														<div
															class="el-table el-table--fit el-table--enable-row-hover"
															style="width: 100%; height: 17%">
															<div class="hidden-columns">
																<div class="alignC"></div>
																<div class="alignC"></div>
																<div class="alignC"></div>
															</div>
															<div class="el-table__header-wrapper">
																	<table 
																class="el-table__header">

																	<tr class="">
																		<th 
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">주문일</div></th>
																		<th 
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">차량정보</div></th>
																		<th
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">진행도</div></th>

																		<th class="el-table__cell gutter"
																			style="width: 0px; display: none;"></th>
																	</tr>
																	<c:choose>
																		<c:when test="${sell != null }">
																	<c:forEach var="detail" items="${sell}">
																																	<tr class="">
																		<th 
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">${detail.s_r_date}</div></th>
																		<th 
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">${detail.s_r_model}</div></th>
																		<th
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">${detail.s_r_progress}</div></th>

																		<th class="el-table__cell gutter"
																			style="width: 0px; display: none;"></th>
																	</tr>
																	</c:forEach>
																		</c:when>
																		<c:otherwise>
															</div>
															<div class="el-table__body-wrapper is-scrolling-none">
																
																<div class="el-table__empty-block"
																	style="height: 100%; width: 905px;">
																	<span class="el-table__empty-text"><div
																			class="nolist2">
																			<p>
																				<strong>현재 진행중인 건이 없습니다.</strong> <span>수수료
																					없이 비싸게 내 차를 판매하세요.</span>
																			</p>
																			<div class="searchTrigger box Inner01 maxW120 el-row">
																				<button class="button lineApply">1분안에 신청하기
																				</button>
																			</div>
																		</div></span>
																</div>
																<!---->
															</div>
																		</c:otherwise>
																	</c:choose>
															</table>
															<!---->
															<!---->
															<!---->
															<!---->
															<div class="el-table__column-resize-proxy"
																style="display: none;"></div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div>
											<div
												class="el-dialog__wrapper popup popCenter popFullBody sellPopup"
												style="display: none;">
												<div role="dialog" aria-modal="true" aria-label="상세내역"
													class="el-dialog" style="margin-top: 15vh;">
													<div class="el-dialog__header">
														<span class="el-dialog__title">상세내역</span>
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
												style="display: none;">
												<div role="dialog" aria-modal="true" aria-label="noTitle"
													class="el-dialog" style="margin-top: 15vh;">
													<div class="el-dialog__header">
														<span class="el-dialog__title">noTitle</span>
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
									<div class="mT64 el-row">
										<div class="infoTitleWrap">
											<h4 class="infoTitle">렌트 견적 보관함</h4><a class="moreBtn el-link el-link--default is-underline"
											 href="/RentAplList">
												<!---->
												<span class="el-link--inner"> 더보기<i
													class="el-icon-arrow-right"></i></span>
											<!---->
											</a>
											<!---->
										</div>
										<div class="el-row">
											<div class="boardListTable mT20">
												<div class="TblDefault mypageList">
													<div
														class="el-table el-table--fit el-table--enable-row-hover"
														style="width: 100%; height: 30%">
														<div class="hidden-columns">
															<div class="alignC"></div>
															<div></div>
															<div class="alignC"></div>
														</div>
														<div class="el-table__header-wrapper">
															<table cellspacing="0" cellpadding="0" border="0"
																class="el-table__header" style="width: 905px;">
																<colgroup>
																	<col name="el-table_3_column_6" width="105">
																	<col name="el-table_3_column_7" width="525">
																	<col name="el-table_3_column_8" width="275">
																	<col name="gutter" width="0">
																</colgroup>
																<thead class="has-gutter">
																	<tr class="">
																		<th colspan="1" rowspan="1"
																			class="el-table_3_column_6     is-leaf el-table__cell"><div
																				class="cell">견적일</div></th>
																		<th colspan="1" rowspan="1"
																			class="el-table_3_column_7     is-leaf el-table__cell"><div
																				class="cell">차량정보</div></th>
																		<th colspan="1" rowspan="1"
																			class="el-table_3_column_8     is-leaf el-table__cell"><div
																				class="cell">렌트비</div></th>
																		<th class="el-table__cell gutter"
																			style="width: 0px; display: none;"></th>
																	</tr>
																</thead>
															</table>
														</div>
														<div class="el-table__body-wrapper is-scrolling-none">
															<table cellspacing="0" cellpadding="0" border="0"
																						class="el-table__body" style="width: 905px;">
																						<colgroup>
																							<col name="el-table_1_column_1" width="50">
																							<col name="el-table_1_column_2" width="685">
																							<col name="el-table_1_column_3" width="170">
																						</colgroup>
																						<tbody>
																							<c:choose>
																								<c:when test="${rent != null }">
																									<c:forEach var="rent" items="${rent }"
																										varStatus="status">
																										<tr class="el-table__row">
																											<td rowspan="1" colspan="1"
																												class="el-table_1_column_1  el-table-column--selection el-table__cell"><div
																													class="cell">
																													<div class="roundCheck">
																														
																													</div>
																												</div></td>
																											<td rowspan="1" colspan="1"
																												class="el-table_1_column_2   el-table__cell"><div
																													class="cell">
																													<div class="aboutOrder">
																														<p class="carVisualImg">
																															<img src="${rent.crpPhoto }"
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
																															<p class="carName">
																																${rent.crName } </p>
																															<ul class="options">
																																<li>${rent.crYear }<span
																																	class="lineH">｜</span> ${rent.crDistance }km <span
																																	class="lineH">｜</span> ${rent.crFuel}
																																	<span class="lineH">｜</span>
																																	
																																</li>
																															</ul>
																														</div>
																													</div>
																												</div></td>
																											<td rowspan="1" colspan="1"
																												class="el-table_1_column_3   el-table__cell"><div
																													class="cell">
																													<strong>${rent.crPrice }만원</strong>
																													
																												</div></td>
																										</tr>
																									</c:forEach>
																								</c:when>
																								<c:otherwise>
																									<div style="margin:110px;text-align: center; font-size: 20px; font-weight: bold;">
																										<span class="textRed">렌트신청이 없습니다.</span>
																									</div>
																								</c:otherwise>
																							</c:choose>
																							<c:if test="">
																							</c:if>

																							<!---->
																						</tbody>
																					</table>
															
															<!---->
														</div>
														<!---->
														<!---->
														<!---->
														<!---->
														<div class="el-table__column-resize-proxy"
															style="display: none;"></div>
													</div>
												</div>
											</div>
										</div>
										<div>
											<div class="el-dialog__wrapper popup popCenter"
												style="display: none;">
												<div role="dialog" aria-modal="true" aria-label="견적서"
													class="el-dialog" style="margin-top: 15vh;">
													<div class="el-dialog__header">
														<span class="el-dialog__title">견적서</span>
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
												<div class="el-dialog__wrapper popup confirm noTitle"
													style="display: none;">
													<div role="dialog" aria-modal="true" aria-label="메일 공유"
														class="el-dialog" style="margin-top: 15vh;">
														<div class="el-dialog__header">
															<span class="el-dialog__title">메일 공유</span>
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
				<!-- footer -->
				<!-- footer -->
	
				<%@ include file="/WEB-INF/default/footer.jsp" %>
	
</body>
</html>