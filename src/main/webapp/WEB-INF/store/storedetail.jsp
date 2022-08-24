<%@ page contentType="text/html; charset=UTF-8"%>
<head>

<%@include file="/WEB-INF/default/header.jsp"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<style>
.modalopen {
	position: fixed;
	top: 0;
	left: 0;
	bottom: 0;
	right: 0;
	background: rgba(8, 8, 8, 0.75);
	z-index: 1;
}
</style>
</style>
</head>
<body>

	<div class='normal' id='modalopen'></div>
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
				<div class="directCenter contWrap">
					<div class="el-row">
						<div class="noticeWrap">
							<h3 class="title">공지사항</h3>
							<ul class="latestBoard">
								<li><a href="#"
									class="latestLink el-link el-link--default is-underline"> <!---->
										<span class="el-link--inner"> [공지] K Car 시스템 점검에 따른 서비스
											일시 중단 안내<i class="icnNew">NEW</i>
									</span> <!---->
								</a> <span class="latestDay">2022.08.01</span></li>
								<li><a href="#"
									class="latestLink el-link el-link--default is-underline"> <!---->
										<span class="el-link--inner"> [공지] K Car 사이트 개편에 따른 이용
											가이드 안내 </span> <!---->
								</a> <span class="latestDay">2022.07.18</span></li>
							</ul>
						</div>
						<div class="el-row">
							<h2 class="pageTitle">${sessionScope.st_name}</h2>
							<div class="tabsCol02 el-tabs el-tabs--top" id="menuSel">
								<div class="el-tabs__header is-top">
									<div class="el-tabs__nav-wrap is-top">
										<div class="el-tabs__nav-scroll">
											<div role="tablist" class="el-tabs__nav is-top"
												style="transform: translateX(-0px);">

												<div id="tab-innertab01" aria-controls="pane-innertab01"
													role="tab" aria-selected="true" tabindex="0"
													class="el-tabs__item is-top is-active"
													onclick="storeView()">직영점 정보</div>
												<div id="tab-innertab02" aria-controls="pane-innertab02"
													role="tab" tabindex="-1" class="el-tabs__item is-top"
													aria-selected="true" onclick="carList()">직영점 차량
													(${totalsize}대)</div>
											</div>
										</div>
									</div>
								</div>
								<c:import url="/db/storeView" />
								<c:import url="/db/carlist" />
							</div>
						</div>
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
						<div data-v-24b5316a="">
							<div
								class="el-dialog__wrapper popup popCenter wid480 hfix active"
								style="display: none;" data-v-24b5316a="">
								<div role="dialog" aria-modal="true" aria-label="제조사 선택"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">제조사 선택</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
								</div>
							</div>
						</div>
						<div>
							<div
								class="el-dialog__wrapper popup popCenter wid480 hfix active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="상세 조건 검색"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">상세 조건 검색</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box multBtn el-row">
													<button class="button chosenApply">초기화</button>
													<button class="button apply">적용하기</button>
												</div>
											</div></span>
									</div>
								</div>
							</div>
							<div
								class="el-dialog__wrapper popup popCenter wid480 sticky active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="옵션"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">옵션</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box multBtn el-row">
													<button class="button chosenApply">초기화</button>
													<button class="button apply">옵션 적용하기</button>
												</div>
											</div></span>
									</div>
								</div>
							</div>
							<!---->
							<div
								class="el-dialog__wrapper popup popCenter wid480 areaModal active"
								style="display: none;">
								<div role="dialog" aria-modal="true" aria-label="지역/직영점 선택"
									class="el-dialog" style="margin-top: 15vh;">
									<div class="el-dialog__header">
										<span class="el-dialog__title">지역/직영점 선택</span>
										<button type="button" aria-label="Close"
											class="el-dialog__headerbtn">
											<i class="el-dialog__close el-icon el-icon-close"></i>
										</button>
									</div>
									<!---->
									<div class="el-dialog__footer">
										<span class="dialog-footer"><div class="footerBtnWrap">
												<div class="searchTrigger box multBtn el-row">
													<button class="button chosenApply">초기화</button>
													<button class="button apply">적용</button>
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
					</div>
					<%@include file="/WEB-INF/default/footer.jsp"%>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=25b6215a33995fb8cff8835aecce271b&libraries=services"></script>
<script>
	const st_addr = '${sessionScope.st_addr}';
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		level : 4
	// 지도의 확대 레벨(숫자낮을수록 확대)
	};

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption);

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다
	geocoder
			.addressSearch(
					st_addr,
					function(result, status) {

						// 정상적으로 검색이 완료됐으면 
						if (status === kakao.maps.services.Status.OK) {

							var coords = new kakao.maps.LatLng(result[0].y,
									result[0].x);

							// 결과값으로 받은 위치를 마커로 표시합니다
							var marker = new kakao.maps.Marker({
								map : map,
								position : coords
							});

							// 인포윈도우로 장소에 대한 설명을 표시합니다
							var infowindow = new kakao.maps.InfoWindow(
									{
										content : '<div style="width:150px;text-align:center;padding:6px 0;">'
												+ '${sessionScope.st_name}}'
												+ '</div>'
									});
							infowindow.open(map, marker);

							// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							map.setCenter(coords);
						}
					});
</script>
<script>
	function carList() {
		document.getElementById('tab-innertab01').className = 'el-tabs__item is-top';
		document.getElementById('tab-innertab02').className = 'el-tabs__item is-top is-active';
		document.getElementById('storeView').style.display = 'none';
		document.getElementById('carList').style.display = 'block';
	}
	function storeView() {
		document.getElementById('tab-innertab02').className = 'el-tabs__item is-top';
		document.getElementById('tab-innertab01').className = 'el-tabs__item is-top is-active';
		document.getElementById('carList').style.display = 'none';
		document.getElementById('storeView').style.display = 'block';
	}
	function detailed() {

		document.getElementById('one_modal').style.display = 'block'
		modalopen();
	}
	function modalopen() {
		document.getElementById('modalopen').className = 'modalopen'
	}
	function modalclose() {
		document.getElementById('one_modal').style.display = 'none';
		document.getElementById('modalopen').className = 'normal';
	}
	function options() {

		document.getElementById('options').style.display = 'block';
		click();
	}
	function optionclose() {

		document.getElementById('options').style.display = 'none';
	}
</script>