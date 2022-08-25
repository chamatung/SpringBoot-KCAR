<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>내차팔기 신청관리</title>
</head>
<body>
<%@ include file="/WEB-INF/default/admin_header.jsp" %>
<div class="mypagCont mypageMain" style="margin-left: 25%">
							<h3 class="subTitle">내차팔기 신청관리</h3>
							<!---->
							<div class="contentsBox section01 mT64 el-row">
								<div class="board">
									<div class="el-row">
										<div class="el-row">
											<div class="boardListTable ">
												<div class="TblDefault mypageList">
													<div
														class="el-table el-table--fit el-table--enable-row-hover"
														style="width: 100%;">
														<div class="hidden-columns">
															<div></div>
															<div></div>
															<div></div>
														</div>
														<div class="el-table__header-wrapper">
															<table 
																class="el-table__header" border="1">

																	<tr class="">
																		<th 
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">주문일</div></th>
																		<th 
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">차량번호</div></th>
																		<th 
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">차량모델</div></th>
																		<th 
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">주행거리</div></th>
																		<th 
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">판매자 email</div></th>
																		<th
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">진행도</div></th>

																		<th class="el-table__cell gutter"
																			style="width: 0px; display: none;"></th>
																	</tr>
																	<c:forEach var="detail" items="${list}">
																																	<tr class="">
																		<th 
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">${detail.s_r_date}</div></th>
																		<th 
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell" onclick="location.href='car_update?s_r_num=${detail.s_r_num}'">${detail.s_r_num}</div></th>
																		<th 
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">${detail.s_r_model}</div></th>
																		<th 
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">${detail.s_r_distance}km</div></th>
																		<th 
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">${detail.m_email}</div></th>
																		<th
																			class="el-table_5_column_14     is-leaf el-table__cell"><div
																				class="cell">${detail.s_r_progress}</div></th>

																		<th class="el-table__cell gutter"
																			style="width: 0px; display: none;"></th>
																	</tr>
																	</c:forEach>
															</table>
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
									</div>
									
								</div>
							</div>
						</div>
						<%@include file="/WEB-INF/default/footer.jsp" %>
</body>
</html>