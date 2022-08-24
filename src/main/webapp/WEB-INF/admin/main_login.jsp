
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
<title>K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카</title>
<%@include file="loginstyle.jsp"%>

</head>
<body>


	<div id="__nuxt" style="margin-left: 33%;">
		<!---->
		<div id="__layout">
			<div id="app">
				<div class="contentsWrap">
					<div class="logListWrap">
						<h1 class="kcarLogo" style="cursor: pointer;">
							<a href="home">K car logo</a>
						</h1>
						<div class="userLogin">
							<div class="el-row">
								<div class="tabsCol02 el-tabs el-tabs--top">
									<div class="el-tabs__header is-top">
										<div class="el-tabs__nav-wrap is-top">
											<div class="el-tabs__nav-scroll">
												<div role="tablist" class="el-tabs__nav is-top"
													style="transform: translateX(0px);">
													<div class="el-tabs__active-bar is-top"
														style="width: 295px; transform: translateX(0px);"></div>
													
												</div>
											</div>
										</div>
									</div>
									
									<div class="el-tabs__content">
										<div role="tabpanel" id="pane-tab01"
											aria-labelledby="tab-tab01" class="el-tab-pane">
											<div class="loginWrap">
												<form class="el-form loginForm" action="main_login" onsubmit="return frm_check();"
													method="post">
													<div class="el-form-item idArea">
														<!---->
														<div class="el-form-item__content">
															<div class="titLabel">아이디</div>
															<div class="el-input el-input--suffix">
																<!---->
																<input type="text" id="m_email" name="admin_id"
																	placeholder="아이디 입력" class="el-input__inner">
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
																<input type="password" id="m_pw" name="admin_pw"
																	placeholder="비밀번호 입력" class="el-input__inner">
																<!---->
																<span class="el-input__suffix"><span
																	class="el-input__suffix-inner"> <!----> <!---->
																		<!----> <!---->
																</span> <!----></span>
																<!---->
																<!---->
															</div>
															<!---->
														</div>
													</div>
													
													<div class="btnLogIn">
														<div class="searchTrigger box el-row">
															<button class="button apply" id="loginbtn">로그인</button>
														</div>
													</div>
												</form>


												
												
															
															
															
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
		</div>
	</div>

</body>
</html>