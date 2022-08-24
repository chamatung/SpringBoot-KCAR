<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="footer_style.jsp"%>
<header id="header" class="kcarHeader">

	<div class="gnbArea">
		<div class="topNavi">
			<h1 class="kcarHeaderLogo">
				<a href="home">대한민국 No.1 직영중고차 KCar</a>
			</h1>
			<button class="menuAll">
				<span class="_hidden">전체메뉴</span>
			</button>
			<ul role="menubar"
				"
								class="el-menu-demo gnb el-menu--horizontal el-menu"
				style="background-color:;">
				<li role="menuitem" aria-haspopup="true" class="el-submenu"
					onmouseover="dropdown1()" onmouseout="dropup1()" id="mytest"><div
						class="el-submenu__title"
						style="border-bottom-color: transparent;">
						내차팔기 <i class="el-submenu__icon-arrow el-icon-arrow-down"></i>
					</div></li>

				<div class="el-menu--horizontal gnbSubMenu typeCenter1"
					style="position: absolute; top: 25px; left: 13px; z-index: 2035; display: none;"
					x-placement="bottom-start" id="carsell" onmouseover="dropdown1()"
					onmouseout="dropup1()">
					<ul role="menu"
						" 
			class="el-menu el-menu--popup el-menu--popup-bottom-start">
						<div class="menuTitArea">
							<strong class="menuTit">내차팔기</strong>
						</div>

						<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
							<a href="/sc/HomeSvcMain">내차팔기 홈서비스</a>
						</li>
						<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
							<a href="/sc/CorpCarDispslApl">법인차매각신청</a>
						</li>
						<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
							<a href="/sc/ScrpcaApl">폐차신청</a>
						</li>
						<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
							<a href="/sc/SellCustReview">내차팔기 고객후기</a>
						</li>
					</ul>
				</div>
				<li role="menuitem" aria-haspopup="true" class="el-submenu"><div
						class="el-submenu__title"
						style="border-bottom-color: transparent;"
						onmouseover="dropdown2()" onmouseout="dropup2()">
						내차사기 <i class="el-submenu__icon-arrow el-icon-arrow-down"></i>
					</div></li>

				<div class="el-menu--horizontal gnbSubMenu typeCenter1"
					style="position: absolute; top: 25px; left: 103px; z-index: 2030; display: none;"
					id="carbuy" onmouseover="dropdown2()" onmouseout="dropup2()">
					<ul role="menu"
						class="el-menu el-menu--popup el-menu--popup-bottom-start">
						<div class="menuTitArea">
							<strong class="menuTit">내차사기</strong>
						</div>
						<li role="menuitem" tabindex="-1" class="el-menu-item menuItem"><a
							href="/carbuy">차량검색</a></li>
						<li role="menuitem" tabindex="-1" class="el-menu-item menuItem"><a
							href="/homeSvc">내차사기 홈서비스</a></li>

						<li role="menuitem" tabindex="-1" class="el-menu-item menuItem"><a
							href="/latelyViewedCar">최근 본 차량</a></li>
						<li role="menuitem" tabindex="-1" class="el-menu-item menuItem"><a
							href="/BuyCustReview">내차사기 고객후기</a></li>
						<li role="menuitem" tabindex="-1" class="el-menu-item menuItem"><a
							href="/brandCar">브랜드 인증관</a></li>

					</ul>
				</div>

				<li role="menuitem" aria-haspopup="true"
					class="el-submenu is-active" onmouseover="dropdown3()"
					onmouseout="dropup3()"><div class="el-submenu__title" style="">
						렌트 <i class="el-submenu__icon-arrow el-icon-arrow-down"></i>
					</div></li>
				<div class="el-menu--horizontal gnbSubMenu typeCenter1"
					style="position: absolute; top: 25px; left: 183px; z-index: 2030; display: none;"
					x-placement="bottom-start " id="carrent" onmouseover="dropdown3()"
					onmouseout="dropup3()">
					<ul role="menu"
						class="el-menu el-menu--popup el-menu--popup-bottom-start">
						<div class="menuTitArea">
							<strong class="menuTit">렌트</strong>
						</div>
						<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
							<a href="http://localhost/rentUsed">중고차렌트</a>
						</li>

						<li role="menuitem" tabindex="-1"
							class="el-menu-item menuItem is-active"><a
							href="http://localhost/rentNewCar">신차렌트</a></li>

						<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
							<a href="http://localhost/rentDriver">기사포함렌트</a>
						</li>
						<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
							<a href="http://localhost/rentShop">렌트지점</a>
						</li>
						<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
							<a href="http://localhost/rentNormalRepair">렌트일반정비소</a>
						</li>
						<li role="menuitem" tabindex="-1" class="el-menu-item menuItem">
							<a href="http://localhost/rentAccidentRepair">렌트사고정비소</a>
						</li>
					</ul>
				</div>

			</ul>
			<div class="navLink">
				<a href="/brandCar"><span>브랜드 인증관</span></a> <a href="/db/drCntr"><span>전국
						직영점</span></a>
			</div>
		</div>
		<div class="utilArea">
			<div class="utilMenu">
				<!---->
				<!---->
				<c:choose>
					<c:when test="${empty sessionScope.id }">
						<a href="/logins"><span>로그인</span></a>
						<a href="/register"><span>회원가입</span></a>
					</c:when>
					<c:otherwise>
						<a href="/logout"><span>로그아웃</span></a>
						<a href="/mypage"><span>마이페이지</span></a>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="searchArea">
				<form action="/search/IntgSearchList">
					<div class="el-input topinput">
						<input type="text" autocomplete="off" placeholder="차량을 검색하세요." name="searchWord"
							value="" class="el-input__inner">
					</div>
					<button class="searchBtn">
						<span>차량검색</span>
					</button>
				</form>
			</div>
		</div>
	</div>
	<div class="el-dialog__wrapper popup gnbAllMenu"
		style="z-index: 2034; display: none;">
		<div role="dialog" aria-modal="true" aria-label="dialog"
			class="el-dialog" style="margin-top: 15vh;">
			<div class="el-dialog__header">
				<div class="header_inner">
					<h1 class="header_logo">
						<a>대한민국 No.1 직영중고차<strong>K Car</strong></a>
					</h1>
				</div>
				<button type="button" aria-label="Close"
					class="el-dialog__headerbtn" id="allMenuCloseBtn">
					<i class="el-dialog__close el-icon el-icon-close"></i>
				</button>
			</div>
			<div class="el-dialog__body">
				<div class="gnbMenu">


					<c:choose>

						<c:when test="${empty sessionScope.id }">
							<div class="leftMenu">
								<div class="firstMember">
									<div class="subTitle">
										<strong>안녕하세요! K Car 입니다.</strong>
									</div>
									<ul class="gnbEtc">
										<li><a href="logins"><i
												class="el-login el-icon-undefined"></i>로그인</a></li>
										<li><a  href="/NotcMatrList?listViewno=event"><i class="el-event el-icon-undefined"></i>이벤트</a></li>
										<li><a><i class="el-history el-icon-undefined"></i>최근
												본차량</a></li>

										<li class="menuWhy"><a>왜 K Car를 선택할까요?</a></li>
									</ul>
								</div>
								<div class="bannerWrap el-row">
									<div></div>
								</div>
							</div>
						</c:when>

						<c:otherwise>

							<div class="leftMenu">
								<div class="kcarMember">
									<div class="subTitle">
										<strong>${sessionScope.name } 고객님</strong>

										<div class="btnLogout">
											<button type="button"
												class="el-button logout el-button--default"
												onclick="location.href='logout'">
												<!---->
												<!---->
												<span> 로그아웃 </span>
											</button>
										</div>
									</div>
									<ul class="gnbEtc">
										<li><a href="mypage"><i
												class="el-mypage el-icon-undefined"></i>마이페이지</a></li>
										<li><a><i class="el-history el-icon-undefined"></i>최근
												본 차량</a></li>
										<li><a><i class="el-favorite el-icon-undefined"></i>찜한차량</a></li>
										<!---->
										<!---->
										<li class="menuWhy"><a>왜 K Car를 선택할까요?</a></li>
									</ul>
								</div>
								<div class="bannerWrap el-row">
									<div>
										<!---->
									</div>
								</div>
							</div>



						</c:otherwise>
					</c:choose>





					<div class="gnbAllWrap">
						<div class="gnbCell">
							<div class="menuList">
								<ul>
									<li><a>내차팔기</a>
										<ul>
											<li><a href="/sc/HomeSvcMain">내차팔기 홈서비스</a></li>
										</ul>
										<ul>
											<li><a href="/sc/CorpCarDispslApl">법인차매각신청</a></li>
										</ul>
										<ul>
											<li><a href="/sc/ScrpcaApl">폐차신청</a></li>
										</ul>
										<ul>
											<li><a href="/sc/SellCustReview">내차팔기 고객후기</a></li>
										</ul></li>
									<li><a href="/carbuy">내차사기</a>
										<ul>
											<li><a href="/carbuy">차량검색</a></li>
										</ul>
										<ul>
											<li><a href="/homeSvc">내차사기 홈서비스</a></li>
										</ul>

										<ul>
											<li><a href="/latelyViewedCar">최근 본 차량</a></li>
										</ul>
										<ul>
											<li><a href="/BuyCustReview">내차사기 고객후기</a></li>
										</ul>

										<ul>
											<li><a href="/brandCar">브랜드 인증관</a></li>
										</ul>
										<ul>
											<li><a href="/db/drCntr">전국 직영점</a></li>
										</ul></li>
									<li><a>렌트</a>
										<ul>
											<li><a>중고차렌트</a></li>
										</ul>

										<ul>
											<li><a href="/rentNewCar">신차렌트</a></li>
										</ul>
										<ul>
											<li><a href="/rentDriver">기사포함렌트</a></li>
										</ul>
										<ul>
											<li><a href="/rentShop">렌트지점</a></li>
										</ul>
										<ul>
											<li><a href="/rentNormalRepair">렌트일반정비소</a></li>
										</ul>
										<ul>
											<li><a href="/rentAccidentRepair">렌트사고정비소</a></li>
										</ul></li>
									<li><a>공지사항</a>
										<ul>
											<li><a href="/NotcMatrList">공지사항</a></li>
											<li><a href="/NotcMatrList?listViewno=event">이벤트</a></li>
										</ul></li>
									<li><a>고객지원</a>
										<ul>
											<li><a href="/csQstn">자주하는 질문</a></li>
											<li><a href="cs/csVoc">제안/칭찬접수</a></li>
										</ul></li>

								</ul>
							</div>


							<div class="rightLink">
								<span><a>회사소개</a></span> <span><a>개인정보처리방침</a></span>
							</div>
						</div>
					</div>
				</div>
				<form id="form-biz" action="https://bizmessage.kakao.com/chat/open"
					method="post" target="””">
					<input type="hidden" name="uuid" value="@KCar"> <input
						type="hidden" name="extra" value="K Car">
				</form>
				<div>
					<div class="el-dialog__wrapper popup popCenter "
						style="display: none;">
						<div role="dialog" aria-modal="true" aria-label="모바일팩스란"
							class="el-dialog" style="margin-top: 15vh;">
							<div class="el-dialog__header">
								<span class="el-dialog__title">모바일팩스란</span>
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
			<!---->
		</div>
	</div>
	<script>
		function dropdown1() {
			document.getElementById('carsell').style.display = 'block';
		}
		function dropup1() {
			document.getElementById('carsell').style.display = 'none';
		}
		function dropdown2() {
			document.getElementById('carbuy').style.display = 'inline';
		}
		function dropup2() {
			document.getElementById('carbuy').style.display = 'none';
		}
		function dropdown3() {
			document.getElementById('carrent').style.display = 'block';
		}
		function dropup3() {
			document.getElementById('carrent').style.display = 'none';
		}

		var allMenuOpenBtn = document.querySelector('.menuAll');
		var allMenu = document
				.querySelector('.el-dialog__wrapper.popup.gnbAllMenu');
		allMenuOpenBtn.addEventListener('click', function() {
			if (allMenu.style.display == 'none') {
				allMenu.style.display = 'block';
			} else {
				allMenu.style.display = 'none';
			}

		})

		var allMenuCloseBtn = document.getElementById('allMenuCloseBtn');
		allMenuCloseBtn.addEventListener('click', function() {
			allMenu.style.display = 'none';
		})
	</script>
</header>