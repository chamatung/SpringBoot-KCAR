<%@ page contentType="text/html; charset=UTF-8"%>
<html lang="ko" class="chrome">
<head>
<title>K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카</title>
</head>
<%@ include file="register_style.jsp" %>
<body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">

function daumPost(){
	
    new daum.Postcode({
        oncomplete: function(data) {
   			var addr = "";
   			// R == 도로명 주소, J == 지번 주소
   			if(data.userSelectedType == "R")
   				addr = data.roadAddress;
   			else{
   				addr = data.jibunAddress;
   			}
   			document.getElementById('m_zipcode').value= data.zonecode; // 우편번호
   			document.getElementById('m_addr1').value = addr;
   			document.getElementById('m_addr2').focus();
        }
    }).open();
    
}
</script>
	
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
				<div class="contentsWrap">
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
						<div class="mypagCont userInfoView" style="">
							<h3 class="subTitle">내 정보</h3>
							<div class="contentsBox section01 el-row">
								<div class="boardList mt80">
									<div class="tabsWrapsm el-row">
										<div class="tabsCol02sm el-tabs el-tabs--top">
											<div class="el-tabs__header is-top">
												<div class="el-tabs__nav-wrap is-top">
													<div class="el-tabs__nav-scroll">
														<div role="tablist" class="el-tabs__nav is-top"
															style="transform: translateX(0px);">
															<div class="el-tabs__active-bar is-top"
																style="width: 57px; transform: translateX(0px);"></div>
															<div id="tab-innertab01" aria-controls="pane-innertab01"
																role="tab" aria-selected="true" tabindex="0"
																class="el-tabs__item is-top is-active">회원정보</div>
														
														</div>
													</div>
												</div>
											</div>
											<div class="el-tabs__content">
												<div role="tabpanel" id="pane-innertab01"
													aria-labelledby="tab-innertab01" class="el-tab-pane">
													<div class="tabCont LoginArea userInfoForm">
														<h4 class="infoTit">꼭 알아두세요!</h4>
														<ul class="guideTxt">
															<li>K Car는 고객님의 동의 없이 제3자에게 정보를 제공하지 않습니다.</li>
														</ul>
														<div class="loginWrap tBType">
															<form class="el-form loginForm" action="update" method="post">
																<div class="el-form-item">
																	<!---->
																	<div class="el-form-item__content">
																		<div class="titLabel">고객명</div>
																		<div class="el-input is-disabled">
																			<!---->
																			<input type="text" readonly="readonly" id="m_name" name="m_name"
																				 placeholder="${sessionScope.name }"
																				class="el-input__inner">
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
																		<div class="titLabel">이메일</div>
																		<div class="el-row">
																			<div class="el-input el-input--suffix">
																				<!---->
																				<div class="el-input is-disabled">
																				<input type="text"  readonly="readonly"
																					id="m_email" name="m_email"
																					placeholder="${sessionScope.id }" class="el-input__inner">
																				<!---->
																				<span class="el-input__suffix"><span
																					class="el-input__suffix-inner">
																						<!---->
																						<!---->
																						<!---->
																						<!---->
																				</span>
																				<!----></span>
																						</div>
																				<!---->
																				<!---->
																			</div>
																			<div class="annotation"></div>
																		</div>
																		<!---->
																	</div>
																</div>
																
																<div class="el-form-item passArea">
																	<!---->
																	<div class="el-form-item__content">
																		<div class="titLabel">새 비밀번호</div>
																		<div class="el-row">
																			<div class="el-input el-input--suffix">
																				<!---->
																				<input type="password" 
																					name="m_pw" id="m_pw"
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
																			<div class="annotation">※ 영문 대/소문자, 숫자,
																				특수문자(`~!@#$%^*+=-_만 허용)를 조합해서 입력해 주세요.(8~20자)</div>
																		</div>
																		<!---->
																	</div>
																</div>
																<div class="el-form-item passArea">
																	<!---->
																	<div class="el-form-item__content">
																		<div class="titLabel">새로운 비밀번호 확인</div>
																		<div class="el-row">
																			<div class="passCheck el-input el-input--suffix">
																				<!---->
																				<input type="password" 
																				id="pwOk" name="pwOk"
																					placeholder="비밀번호 재입력" class="el-input__inner">
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
																			<div class="annotation"></div>
																		</div>
																		<!---->
																	</div>
																</div>
																<div class="el-form-item passArea">
																	<!---->
																	<div class="el-form-item__content">
																		<div class="titLabel">휴대폰번호 입력</div>
																		<div class="el-row">
																			<div class="el-input el-input--suffix">
																				<!---->
																				<input type="text" 
																				id="m_tel" name ="m_tel"
																					placeholder="휴대폰번호 입력" class="el-input__inner">
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
																		
																		</div>
																		<!---->
																	</div>
																</div>
																<div class="el-form-item">
									<!---->
									<div class="el-form-item__content">
										<div class="titLabel">우편 번호</div>
										<div class="flexbox">
											<div class="el-input el-input--suffix">
												<!---->
												<input type="text" name='m_zipcode' id="m_zipcode" readonly="readonly"
													class="el-input__inner">
												<!---->
												<!---->
												<!---->
												<!---->
											</div>
											<button type="button" onclick="daumPost()"
												class="el-button checkBtn el-button--default">
												<!---->
												<!---->
												<span> 우편번호 검색 </span>
											</button>
										</div>
										
										<!---->
									</div>
								</div>
								<div class="el-form-item passArea">
									<!---->
									<div class="el-form-item__content">
										<div class="titLabel">주소</div>
										<div class="el-input el-input--suffix">
											<!---->
											<input type="text"  name='m_addr1' id="m_addr1" readonly="readonly" 
												class="el-input__inner">
											<!---->
											
											<!---->
											<!---->
										</div>
										<!---->
									</div>
								</div>
								<div class="annotation"></div>
								<div class="el-form-item passArea">
									<!---->
									<div class="el-form-item__content">
										<div class="titLabel">상세주소</div>
										<div class="el-input el-input--suffix">
											<!---->
											<input type="text"  name='m_addr2' id="m_addr2"  
												class="el-input__inner">
											<!---->
											
											<!---->
											<!---->
										</div>
										<!---->
									</div>
								</div>
																
																<div class="el-form-item quitArea">
																	<!---->
																	<div class="el-form-item__content">
																		<div class="titLabel">회원탈퇴</div>
																		<button type="button" onclick="location.href='delete';"
																			class="el-button el-button--default">
																			<!---->
																			<!---->
																			<span> 회원탈퇴 </span>
																		</button>
																		<!---->
																	</div>
																</div>
														<div class="searchTrigger box maxW840 el-row">
															<button  class="button chosenApply">
																취소</button>
															<button class="button apply" >정보수정
															</button>
														</div>
															</form>
														</div>
													</div>
												</div>
												<div role="tabpanel" aria-hidden="true" id="pane-innertab02"
													aria-labelledby="tab-innertab02" class="el-tab-pane"
													style="display: none;">
													<div class="tabCont LoginArea">
														<h4 class="infoTit">
															SNS 계정과 K Car 계정을 연동하고 <br> 더 간편하게 로그인해 보세요.
														</h4>
														<p class="captionDesc">· SNS 로그인을 사용하지 않으려면 SNS 연동을
															해제해 주세요</p>
														<div class="snsLoginBox">
															<button type="button"
																class="el-button naver undo el-button--default"
																style="display: none;">
																<!---->
																<!---->
																<span><i class="icon-naver"></i>네이버 연동 해제 </span>
															</button>
															<button type="button"
																class="el-button naver el-button--default">
																<!---->
																<!---->
																<span><i class="icon-naver"></i>네이버로 로그인 </span>
															</button>
															<button type="button"
																class="el-button kakao undo el-button--default"
																style="display: none;">
																<!---->
																<!---->
																<span><i class="icon-kakao"></i>카카오 연동 해제 </span>
															</button>
															<button type="button"
																class="el-button kakao el-button--default">
																<!---->
																<!---->
																<span><i class="icon-kakao"></i>카카오로 로그인 </span>
															</button>
															<button type="button"
																class="el-button apple undo el-button--default"
																style="display: none;">
																<!---->
																<!---->
																<span><i class="icon-apple"></i>Apple 연동 해제 </span>
															</button>
															<button type="button"
																class="el-button apple el-button--default">
																<!---->
																<!---->
																<span><i class="icon-apple"></i>Apple로 로그인 </span>
															</button>
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
	
</body>
</html>