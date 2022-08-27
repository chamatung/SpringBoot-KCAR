<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html lang="ko" class="chrome">
<head>
<%@include file="BuyCustReview_style.jsp"%>
<title>내차사기 고객후기</title>
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

<meta data-n-head="ssr" data-hid="title" name="title"
	content="내차사기 고객후기">
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
				<div class="carSellWrap">
					<div class="carSellContainer" id="ajaxBuyReview">



						<div class="carSellContent">
							<div class="subHeader">
								<h1 class="title">
									<span class="wtNormal">내차사기 홈서비스가</span> 신뢰받는 이유
								</h1>
							</div>

							<!-- foreach문 -->
							<c:forEach var="buyReview" items="${buyReviewList }">
								<div class="reviewList">
									<ul>
										<li class="reviewListCon" onclick="reviewModalOpen('${buyReview.cb_brand } ${buyReview.cb_m_model }', '${buyReview.m_r_title }', '${buyReview.m_r_review }', '${buyReview.m_r_registDate }', '${buyReview.m_r_photo}')">
										<label class="carLabel"></label>
											${buyReview.cb_brand }&nbsp;${buyReview.cb_m_model } <a
											class="el-link el-link--default is-underline"> <!----> <span
												class="el-link--inner"><h5
														style="word-break: break-all;">${buyReview.m_r_title }</h5>
													<p style="word-break: break-all;">${buyReview.m_r_review }</p>
													<span>${buyReview.m_r_registDate }</span></span> <!---->
										</a></li>
										<li class="reviewListImg reviewListImg1">
										<img src="${buyReview.m_r_photo}" alt="이미지"></li>
										<!---->
									</ul>
								</div>
							</c:forEach>
							<!-- foreach문 -->

							<!-- 페이징처리 시작 -->
							<div class="pagination -sm">
								<!-- <button type="button"
									class="el-button pagePrev el-button--default" onclick="reviewSend('prev','\${currentPage }')">
									
									
									<span><img src="/images/common/pagenation-btn-left.svg"
										alt="이전"></span>
								</button> -->
								<div class="pagingNum">
									<span class="textRed">${currentPage }</span> / ${totalPage }
								</div>
								<c:if test="${currentPage != totalPage }">
									<button type="button"
										class="el-button pageNext el-button--default"
										onclick="reviewSend('next','${currentPage }')">
										<!---->
										<!---->
										<span><img
											src="/images/common/pagenation-btn-right.svg" alt="다음"></span>
									</button>
								</c:if>
							</div>
							<!-- 페이징처리 종료-->

						</div>



					</div>
					<!-- 모달창 -->
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
				<!-- footer start -->
				<%@include file="/WEB-INF/default/footer.jsp"%>
				<!-- footer end -->
			</div>
		</div>
	</div>
	<iframe id="groobeeBox" name="groobeeBox" style="display: none;"></iframe>
	<div id="criteo-tags-div" style="display: none;"></div>
<script src="js/reviewModal.js"></script>
<script src="js/buyReview.js"></script>
</body>
</html>