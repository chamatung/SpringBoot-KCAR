<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="footer_style.jsp"%>
<header id="header" class="kcarHeader">

	<div class="gnbArea" style="margin-top: 50px;">
		<div class="topNavi">
			<h1 class="kcarHeaderLogo">
				<a href="home">대한민국 No.1 직영중고차 KCar</a>
			</h1>
			<button class="menuAll">
				<span class="_hidden">전체메뉴</span>
			</button>
			<ul role="menubar"
				
								class="el-menu-demo gnb el-menu--horizontal el-menu"
				style="background-color:;">
				<li role="menuitem" aria-haspopup="true" class="el-submenu"
					onmouseover="dropdown1()" onmouseout="dropup1()" id="mytest"><div
						class="el-submenu__title"
						style="border-bottom-color: transparent;">
						<a href="sell_list">내차 팔기 리스트 </a><i class="el-submenu__icon-arrow el-icon-arrow-down"></i>
					</div></li>

				
				<li role="menuitem" aria-haspopup="true" class="el-submenu"><div
						class="el-submenu__title"
						style="border-bottom-color: transparent;"
						onmouseover="dropdown2()" onmouseout="dropup2()">
						<a href="rent_update">렌트 차량 업로드</a> <i class="el-submenu__icon-arrow el-icon-arrow-down"></i>
					</div></li>

				

				<li role="menuitem" aria-haspopup="true"
					class="el-submenu is-active" onmouseover="dropdown3()"
					onmouseout="dropup3()"><div class="el-submenu__title" style="">


						<a href="csVocManage">제안/칭찬 리스트 </a> <i class="el-submenu__icon-arrow el-icon-arrow-down"></i>
		</div></li>
				<li role="menuitem" aria-haspopup="true"
					class="el-submenu is-active" onmouseover="dropdown3()"
					onmouseout="dropup3()"><div class="el-submenu__title" style="">
						<a href="NotcMatrListManage">공지사항/이벤트 </a> <i class="el-submenu__icon-arrow el-icon-arrow-down"></i>
					</div></li>
				
				<li role="menuitem" aria-haspopup="true"
					class="el-submenu is-active" onmouseover="dropdown3()"
					onmouseout="dropup3()"><div class="el-submenu__title" style="">
						<a href="csQstnWriteForm">자주하는 질문 작성</a> <i class="el-submenu__icon-arrow el-icon-arrow-down"></i>
					</div></li>

			</ul>
			
		</div>
		<div class="utilArea">
			<div class="utilMenu">
				<!---->
				<!---->
				
			</div>
			
		</div>
	</div>
	
	
</header>