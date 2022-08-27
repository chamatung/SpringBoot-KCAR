<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="ko" class="chrome">
<head>
<title>K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카</title>
<%@ include file="register_style.jsp" %>

<style>
.form-select {
	width: 393px;
	height: 56px;
}

.selectoption {
	display: inline-block;
	width: 25px;
	height: 25px;
	background: url('/images/icon/icon-radio-default.svg') no-repeat 0 0px/contain;
}

input[type=radio]:checked+span {
	background: url('/images/icon/icon-radio-checked.svg') no-repeat 0 0px/contain;
}
</style>

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
				<%@ include file="/WEB-INF/default/header.jsp" %>
				<div class="contentsWrap" style="">
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
						<div class="mypagCont quitView">
							<h3 class="subTitle">회원탈퇴</h3>
							<div class="contentsBox section01 el-row">
								<div class="boardList mT64">
									<div class="tabsWrapsm el-row">
										<h4 class="subHead">이성표 고객님, K Car를 떠나신다니 많이 아쉽습니다.</h4>
										<p class="subHeadDesc">
											K Car 서비스 이용 중 어떤 부분이 불편했던 점이 있으셨나요? <br> K Car를 떠나는 이유를
											남겨주시면 귀 기울여 듣고 부족한 점은 개선하겠습니다.
										</p>
										<div class="loginWrap tBType">
											<form class="el-form loginForm" action="delete" method="post">
												<div class="el-form-item">
													<!---->
													<div class="el-form-item__content">
														<div class="titLabel">아이디</div>
														<div class="el-input is-disabled">
															<!---->
															<input type="text" disabled="disabled" autocomplete="off"
															id="m_email" name="m_email"
																placeholder="${sessionScope.id }" class="el-input__inner">
															<!---->
															<!---->
															<!---->
															<!---->
														</div>
														<!---->
													</div>
												</div>
												<div class="el-form-item passArea">
													<!---->
													<div class="el-form-item__content">
														<div class="titLabel">비밀번호</div>
														<div class="el-input el-input--suffix">
															<!---->
															<input type="password" autocomplete="off" id="m_pw" name="m_pw"
																placeholder="비밀번호 입력" class="el-input__inner">
															<!---->
															<span class="el-input__suffix"><span
																class="el-input__suffix-inner">
																	<!---->
																	<!---->
																	<!---->
																	<!---->
															</span>
															<!----></span>
															<!---->
															<!---->
														</div>
														<!---->
													</div>
												</div>
												<div class="el-form-item quitReason">
													<!---->
													<div class="el-form-item__content">
														<div class="titLabel">탈퇴사유</div>
<!-- 														<div class="el-row"> -->
<!-- 															<div role="radiogroup" class="el-radio-group snsRadio"> -->
<!-- 																<label role="radio" tabindex="-1" class="el-radio"> -->
																
																
<!-- 																<span class="el-radio__inner"><input type="radio" ></span> -->
																		
																		
																		
<!-- 																		<span -->
<!-- 																	class="el-radio__label"> 아이디를 변경하려 함</span></label> <label -->
<!-- 																	role="radio" tabindex="-1" class="el-radio"><span -->
<!-- 																	class="el-radio__input"><span -->
<!-- 																		class="el-radio__inner"></span><input type="radio" -->
<!-- 																		aria-hidden="true" tabindex="-1" autocomplete="off" -->
<!-- 																		 value="2"></span><span -->
<!-- 																	class="el-radio__label"> 서비스 오류 및 장애가 많음</span></label> -->
<!-- 																<label role="radio" tabindex="-1" class="el-radio"><span -->
<!-- 																	class="el-radio__input"><span -->
<!-- 																		class="el-radio__inner"></span><input type="radio" -->
<!-- 																		aria-hidden="true" tabindex="-1" autocomplete="off" -->
<!-- 																		class="el-radio__original" value="3"></span><span -->
<!-- 																	class="el-radio__label"> 필요한 정보가 없음</span></label> <label -->
<!-- 																	role="radio" tabindex="-1" class="el-radio"><span -->
<!-- 																	class="el-radio__input"><span -->
<!-- 																		class="el-radio__inner"></span><input type="radio" -->
<!-- 																		aria-hidden="true" tabindex="-1" autocomplete="off" -->
<!-- 																		class="el-radio__original" value="4"></span><span -->
<!-- 																	class="el-radio__label"> 고객서비스가 마음에 들지 않음</span></label> -->
<!-- 																<label role="radio" tabindex="0" -->
<!-- 																	class="el-radio is-checked" aria-checked="true"><span -->
<!-- 																	class="el-radio__input is-checked"><span -->
<!-- 																		class="el-radio__inner"></span><input type="radio" -->
<!-- 																		aria-hidden="true" tabindex="-1" autocomplete="off" -->
<!-- 																		class="el-radio__original" value="5"></span><span -->
<!-- 																	class="el-radio__label"> 다른 회사의 비슷한 서비스를 이용함</span></label> -->
<!-- 																<label role="radio" tabindex="-1" class="el-radio"><span -->
<!-- 																	class="el-radio__input"><span -->
<!-- 																		class="el-radio__inner"></span><input type="radio" -->
<!-- 																		aria-hidden="true" tabindex="-1" autocomplete="off" -->
<!-- 																		class="el-radio__original" value="6"></span><span -->
<!-- 																	class="el-radio__label"> 직접 입력</span></label> -->
<!-- 															</div> -->
<!-- 															 -->
<!-- 														</div> -->
														<!---->
														<div>
										<div role="radiogroup" class="el-radio-group">
											<label role="radio" aria-checked="true" tabindex="0"
												class="el-radio is-checked"><span
												class="el-radio__input is-checked"></span><input
												type="radio" aria-hidden="true" tabindex="-1"
												autocomplete="off" value="0" 
												class="el-radio__original" name="select1"><span
												class="selectoption"></span><span class="el-radio__label">
													아이디를 변경하려 함 <!---->
											</span></label> 
											<label role="radio" tabindex="-1" class="el-radio"><span
												class="el-radio__input"></span><input type="radio"
												aria-hidden="true" tabindex="-1" autocomplete="off"
												value="0" class="el-radio__original" name="select1"><span
												class="selectoption"></span><span class="el-radio__label">
													서비스 오류 및 장애가 많음 <!---->
											</span></label>
											 <label role="radio" tabindex="-1" class="el-radio"><span
												class="el-radio__input"></span><input type="radio"
												aria-hidden="true" tabindex="-1" autocomplete="off"
												value="0" class="el-radio__original" name="select1"><span
												class="selectoption"></span><span class="el-radio__label">
													필요한 정보가 없음 <!---->
											</span></label>
											 <label role="radio" tabindex="-1" class="el-radio"><span
												class="el-radio__input"></span><input type="radio"
												aria-hidden="true" tabindex="-1" autocomplete="off"
												value="0" class="el-radio__original" name="select1"><span
												class="selectoption"></span><span class="el-radio__label">
													고객서비스가 마음에 들지 않음 <!---->
											</span></label>
											 <label role="radio" tabindex="-1" class="el-radio"><span
												class="el-radio__input"></span><input type="radio"
												aria-hidden="true" tabindex="-1" autocomplete="off"
												value="0" class="el-radio__original" name="select1"><span
												class="selectoption"></span><span class="el-radio__label">
													다른 회사의 비슷한 서비스를 이용함 <!---->
											</span></label>
											<label role="radio" tabindex="-1" class="el-radio"><span
												class="el-radio__input"></span><input type="radio"
												aria-hidden="true" tabindex="-1" autocomplete="off"
												value="1" class="el-radio__original" name="select1"><span
												class="selectoption"></span><span class="el-radio__label">
													직접 입력 <!---->
											</span></label>
										</div>
										<div class="el-textarea" id="textshow" style="display: none;">
                              <textarea autocomplete="off" placeholder="내용을 입력해주세요" class="el-textarea__inner" style="resize: none; min-height: 47px;"></textarea>
                              <!---->
                              </div>
									</div>
													</div>
												</div>
										<h4 class="infoTit mT40">꼭! 알아두세요</h4>
										<div class="guideWrap mT8">
											<ul class="guideTxt ft13">
												<li>탈퇴 후 7일간은 회원가입이 제한됩니다. 7일 이후에 다시 가입해 주세요.</li>
												<li>작성하신 게시물은 회원탈퇴 후에도 삭제되지 않습니다.</li>
											</ul>
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
										<div class="searchTrigger box maxW840 el-row">
											<button type="button" class="button chosenApply" onclick="l">취소
											</button>
											<button class="button apply">회원탈퇴</button>
										</div>
											</form>
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
				<%@ include file="/WEB-INF/default/footer.jsp" %>
			</div>
		</div>
	</div>
	
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 106px; left: 254px; z-index: 2004; display: none;"
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
		style="position: absolute; top: 106px; left: 350px; z-index: 2007; display: none;"
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
	
	<div class="el-menu--horizontal gnbSubMenu typeCenter1"
		style="position: absolute; top: 106px; left: 447px; z-index: 2010; display: none;"
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
			<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
				신차렌트</li>
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
	<!-- jQuery -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
   $('.el-radio__original').on('click', function() {
       var valueCheck = $('.el-radio__original:checked').val();
       
       if ( valueCheck == '1' ) {
          $("#textshow").show();
       }else {
          $("#textshow").hide();
       }
   });
   
</script>
</body>
</html>