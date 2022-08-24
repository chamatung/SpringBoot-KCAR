<%@ page contentType="text/html; charset=UTF-8"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
	<br>
	<div class="containerWrap el-row" id="carList" style="display: none;">
		<div class="cateCmd">
			<div class="detailTag">
				<!---->
			</div>
			<div class="listLine">
				<ul>
					<li class="carTotal">총 <span class="textRed">${totalsize }</span>대
					</li>
					<li class="listBtn">
						<div class="searchTrigger box multBtn mL8 el-row">
							<button class="button lineApply" onclick="detailed()">상세조건</button>
						</div>
						<div class="el-select listSelect">
							<!---->
							<select class="form-select" aria-label="Default select example"
								style="width: 160px; height: 56px; border-radius: 10px; padding: 6px;"
								id="alignment" name="alignment" onchange="resultcheck()">
								<option selected value='기본정렬'>기본 정렬</option>
								<option value="낮은가격순">낮은 가격순</option>
								<option value="높은가격순">높은 가격순</option>
								<option value="적은주행거리순">적은 주행거리순</option>
								<option value="많은주행거리순">많은 주행거리순</option>
								<option value="최근연식순">최근 연식순</option>
								<option value="낮은연식순">낮은 연식순</option>
							</select>
						</div>
				</ul>
			</div>
		</div>

		<div>
			<div>
				<div class="carListWrap mT20" id="sortchange">
					<c:forEach var="car" items="${list}">
						<div class="carListBox" style="cursor: pointer;">
							<div class="carListImg" style="cursor: pointer;">
								<div>
									<img src="${car.c_photo }" alt="챠량이미지"
										onerror="this.src='/images/search/bg_no_Img_lg.png'"
										loading="lazy">
								</div>
								<ul class="listViewBtn">
									<li><button type="button"
											class="el-button el-button--default icon icoFav"
											id="mkt_brandAddWish">
											<!---->
											<!---->
											<span><span class="_hidden">찜하기</span></span>
										</button></li>
								</ul>
							</div>
							<ul class="listViewLabel">
							</ul>
							<div class="detailInfo">
								<div class="carName">
									<h3>${car.cb_brand }&nbsp;${car.cb_m_model }&nbsp;${car.c_fuel }
									</h3>
								</div>
								<div class="carListFlex">
									<div class="carExpIn">
										<p class="carExp">${car.c_price }만원</p>
									</div>
									<p class="detailCarCon">
										<span class="block">${car.c_year }</span> <span>${car.c_distance }
											km</span> <span>${car.c_fuel }</span> <span>${car.st_name }</span>
									</p>
								</div>
								<ul class="infoTooltip">
									<c:forEach var="carInfoTag"
										items="${brandCar.brandCarInfoTag }">
										<li><button type="button"
												class="el-button el-tooltip yellowLabel item el-button--default"
												aria-describedby="el-tooltip-7966" tabindex="0">
												<span> ${carInfoTag } </span>
											</button></li>
									</c:forEach>

								</ul>
							</div>
						</div>
					</c:forEach>
				</div>
				<div>
					<div>
						<div class="el-dialog__wrapper popup confirm noTitle"
							style="display: none;">
							<div role="dialog" aria-modal="true" aria-label="관심 차량 등록 알림"
								class="el-dialog" style="margin-top: 15vh;">
								<div class="el-dialog__header">
									<span class="el-dialog__title">관심 차량 등록 알림</span>
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
				<div>
					<div>
						<div class="el-dialog__wrapper popup popCenter  active"
							style="display: none;">
							<div role="dialog" aria-modal="true" aria-label="관심 차량 등록 알림"
								class="el-dialog" style="margin-top: 15vh;">
								<div class="el-dialog__header">
									<span class="el-dialog__title">관심 차량 등록 알림</span>
									<button type="button" aria-label="Close"
										class="el-dialog__headerbtn">
										<i class="el-dialog__close el-icon el-icon-close"></i>
									</button>
								</div>
								<!---->
								<div class="el-dialog__footer">
									<span class="dialog-footer"><div class="footerBtnWrap">
											<div class="searchTrigger box multBtn el-row">
												<button id="" class="button chosenApply">취소</button>
												<button id="mkt_intrstCarAplId" class="button apply">
													신청하기</button>
											</div>
										</div></span>
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
			<!-- 	<div class="pagination -sm">
				
				<div class="pagingNum">
					<span class="textRed">1</span> / 21
				</div>
				<button type="button" class="el-button pageNext el-button--default">
					
					
					<span><img src="/images/common/pagenation-btn-right.svg"
						alt="다음"></span>
				</button>
			</div> -->
		</div>
	</div>

	<!--  이하 1차모달 -->
	<form id='form'>
		<div class="el-dialog__wrapper popup popCenter wid480 hfix active"
			style="z-index: 2338; display: none;" id="one_modal">
			<div role="dialog" aria-modal="true" aria-label="상세 조건 검색"
				class="el-dialog" style="margin-top: 15vh;">
				<div class="el-dialog__header">
					<span class="el-dialog__title">상세 조건 검색</span>
					<button type="button" class="el-dialog__headerbtn"
						onclick="modalclose()">
						<i class="el-dialog__close el-icon el-icon-close"></i>
					</button>
				</div>
				<div class="el-dialog__body">
					<div class="popContent el-scrollbar">
						<div class="el-scrollbar__wrap"
							style="margin-bottom: -17px; margin-right: -17px;">
							<div class="el-scrollbar__view">
								<div>
									<h2 class="popupTit">연식</h2>
									<div class="rangeSlider">
										<div class="rangeText">2001년~2022년</div>
										<label
											style="font-weight: bold; font-size: 14px; width: 155px; text-align: center;">최소</label>
										<label style="width: 60px; text-align: center;"></label> <label
											style="font-weight: bold; font-size: 14px; width: 155px; text-align: center;">최대</label>
										<br>
										<div class="el-select listSelect"
											style="width: 155px; height: 40px;">
											<select class="form-select" id="min_year"
												aria-label="Default select example"
												style="width: 155px; height: 40px; border-radius: 10px; padding: 6px;">
												<option selected value='2001'>2001년</option>
												<c:forEach var="i" begin="2002" end="2022">
													<option value='${i}'>${i}년</option>
												</c:forEach>
											</select>
										</div>
										<label style="width: 60px; text-align: center;"> ~</label>
										<div class="el-select listSelect"
											style="width: 150px; height: 40px;">
											<select class="form-select"
												aria-label="Default select example"
												style="width: 155px; height: 40px; border-radius: 10px; padding: 6px;"
												id="max_year">

												<c:forEach var="i" begin="2001" end="2021">
													<option value='${i }'>${i}년</option>
												</c:forEach>
												<option selected value='2022'>2022년</option>
											</select>
										</div>

									</div>
									<div class="mt40">
										<h2 class="popupTit">주행거리</h2>
										<div class="rangeSlider">
											<div class="rangeText" id="rangetext">0km~130,000km</div>
											<div role="slider" aria-valuemin="0" aria-valuemax="30"
												aria-orientation="horizontal" class="el-slider"
												aria-valuetext="0-30" aria-label="slider between 0 and 30">
												<!---->

												<input type="range" min="0" max="160000" value="160000"
													step="10000" style="width: 381px;" id="range"
													onchange="showvalue(this)">

											</div>
										</div>
									</div>
									<div class="mt40">
										<h2 class="popupTit">가격</h2>
										<div class="rangeArea">
											<div class="el-input">
												<input type="text" autocomplete="off" input-type="number"
													inputmode="numeric" value='0' placeholder="최소가격"
													maxlength="4" id="min_price" class="el-input__inner">

											</div>
											<span class="tilde">~</span>
											<div class="el-input">
												<!---->
												<input type="text" autocomplete="off" input-type="number"
													inputmode="numeric" placeholder="최대 가격" maxlength="4"
													value='99999' id="max_price" class="el-input__inner">

											</div>
										</div>
									</div>
									<p class="mt40" onclick="options()">
										<a href="javascript:void(0)" class="appLink"><span>옵션
												선택</span> </a>
									</p>
								</div>
							</div>
						</div>
						<div class="el-scrollbar__bar is-horizontal">
							<div class="el-scrollbar__thumb"
								style="transform: translateX(0%);"></div>
						</div>
						<div class="el-scrollbar__bar is-vertical">
							<div class="el-scrollbar__thumb"
								style="transform: translateY(1.35021%); height: 98.5447%;"></div>
						</div>
					</div>
				</div>
				<div class="el-dialog__footer">
					<span class="dialog-footer"><div class="footerBtnWrap">
							<div class="searchTrigger box multBtn el-row">
								<button type="reset" class="button chosenApply">초기화</button>
								<button type="button" class="button apply"
									onclick="resultcheck()">적용하기</button>
							</div>
						</div></span>
				</div>
			</div>
		</div>
		<!-- 옵션선택 -->
		<div class="el-dialog__wrapper popup popCenter wid480 sticky active"
			style="z-index: 3994; display: none; overflow: hidden;" id="options">
			<div role="dialog" aria-modal="true" aria-label="옵션"
				class="el-dialog" style="margin-top: 15vh;">
				<div class="el-dialog__header">
					<span class="el-dialog__title">옵션</span>
					<button type="button" aria-label="Close"
						class="el-dialog__headerbtn" onclick="optionclose()">
						<i class="el-dialog__close el-icon el-icon-close"></i>
					</button>
				</div>
				<div class="tagTypeTab fixedTab el-tabs el-tabs--top"
					style="padding: 3px;">

					<div class="el-scrollbar__view">
						<ul class="checkSty01">
							<li><label class="el-checkbox is-bordered" id="check0"><span
									class="el-checkbox__input"><span
										class="el-checkbox__inner"></span><input type="checkbox"
										aria-hidden="false" class="el-checkbox__original" value="선 루프"
										name="options"></span><span class="el-checkbox__label"><p>선
											루프</p>
										<button type="button"
											class="el-button el-tooltip item el-button--default"
											aria-describedby="el-tooltip-6487" tabindex="0">
											<!---->
											<!---->
											<span><i class="el-icon-info2"></i></span>
										</button> <!----></span></label></li>

							<li><label class="el-checkbox is-bordered" id="check1"><span
									class="el-checkbox__input"><span
										class="el-checkbox__inner"></span><input type="checkbox"
										aria-hidden="false" class="el-checkbox__original" value="하이패스"
										name="options"></span><span class="el-checkbox__label"><p>하이패스</p>
										<button type="button"
											class="el-button el-tooltip item el-button--default"
											aria-describedby="el-tooltip-1045" tabindex="0">
											<!---->
											<!---->
											<span><i class="el-icon-info2"></i></span>
										</button> <!----></span></label></li>

							<li><label class="el-checkbox is-bordered" id="check2"><span
									class="el-checkbox__input is-checked"><span
										class="el-checkbox__inner"></span><input type="checkbox"
										aria-hidden="false" class="el-checkbox__original" value="후방센서"
										name="options"></span><span class="el-checkbox__label"><p>후방센서</p>
										<button type="button"
											class="el-button el-tooltip item el-button--default"
											aria-describedby="el-tooltip-3663" tabindex="0">
											<!---->
											<!---->
											<span><i class="el-icon-info2"></i></span>
										</button> <!----></span></label></li>


							<li><label class="el-checkbox is-bordered" id="check3"><span
									class="el-checkbox__input is-checked"><span
										class="el-checkbox__inner"></span><input type="checkbox"
										aria-hidden="false" class="el-checkbox__original"
										value="후방카메라" name="options"></span><span
									class="el-checkbox__label"><p>후방카메라</p>
										<button type="button"
											class="el-button el-tooltip item el-button--default"
											aria-describedby="el-tooltip-2300" tabindex="0">
											<!---->
											<!---->
											<span><i class="el-icon-info2"></i></span>
										</button> <!----></span></label></li>

							<li><label class="el-checkbox is-bordered" id="check4"><span
									class="el-checkbox__input"><span
										class="el-checkbox__inner"></span><input type="checkbox"
										aria-hidden="false" class="el-checkbox__original"
										value="네비게이션" name="options"></span><span
									class="el-checkbox__label"><p>네비게이션</p>
										<button type="button"
											class="el-button el-tooltip item el-button--default"
											aria-describedby="el-tooltip-3287" tabindex="0">

											<span><i class="el-icon-info2"></i></span>
										</button> <!----></span></label></li>

							<li><label class="el-checkbox is-bordered" id="check5"><span
									class="el-checkbox__input"><span
										class="el-checkbox__inner"></span><input type="checkbox"
										aria-hidden="false" class="el-checkbox__original" value="핸들열선"
										name="options"></span><span class="el-checkbox__label"><p>핸들열선</p>
										<button type="button"
											class="el-button el-tooltip item el-button--default"
											aria-describedby="el-tooltip-2980" tabindex="0">
											<!---->
											<!---->
											<span><i class="el-icon-info2"></i></span>
										</button> <!----></span></label></li>

							<li><label class="el-checkbox is-bordered" id="check6"><span
									class="el-checkbox__input"><span
										class="el-checkbox__inner"></span><input type="checkbox"
										aria-hidden="false" class="el-checkbox__original" value="에어백"
										name="options"></span><span class="el-checkbox__label"><p>에어백</p>
										<button type="button"
											class="el-button el-tooltip item el-button--default"
											aria-describedby="el-tooltip-714" tabindex="0">
											<!---->
											<!---->
											<span><i class="el-icon-info2"></i></span>
										</button> <!----></span></label></li>

							<li><label class="el-checkbox is-bordered" id="check7"><span
									class="el-checkbox__input"><span
										class="el-checkbox__inner"></span><input type="checkbox"
										aria-hidden="false" class="el-checkbox__original" value="스마트키"
										name="options"></span><span class="el-checkbox__label"><p>스마트키
										</p>
										<button type="button"
											class="el-button el-tooltip item el-button--default"
											aria-describedby="el-tooltip-714" tabindex="0">
											<!---->
											<!---->
											<span><i class="el-icon-info2"></i></span>
										</button> <!----></span></label></li>

							<li><label class="el-checkbox is-bordered" id="check8"><span
									class="el-checkbox__input"><span
										class="el-checkbox__inner"></span><input type="checkbox"
										aria-hidden="false" class="el-checkbox__original" value="블랙박스"
										name="options"></span><span class="el-checkbox__label"><p>블랙박스
										</p>
										<button type="button"
											class="el-button el-tooltip item el-button--default"
											aria-describedby="el-tooltip-714" tabindex="0">
											<!---->
											<!---->
											<span><i class="el-icon-info2"></i></span>
										</button> <!----></span></label></li>

							<div class="footerBtnWrap">
								<div class="searchTrigger box multBtn el-row"
									style="padding: 5px; margin: 3px;">

									<button type="button" class="button apply"
										onclick="optionclose()">옵션 적용하기</button>
								</div>
							</div>
						</ul>


					</div>

				</div>
			</div>
		</div>
	</form>

</body>
<script>
	function showvalue(val) {
		var showval = val.value;
		var text = "0km ~ " + showval + "km";
		document.getElementById('rangetext').innerHTML = text;

	}
	var check = document.getElementsByName("options");
	for (var i = 0; i < check.length; i++) {
		check[i].addEventListener('click', click);

	}
	function click() {
		for (var i = 0; i < check.length; i++) {
			if (check[i].checked == true) {
				document.getElementById('check' + i).className = 'el-checkbox is-bordered is-checked';

			} else {
				document.getElementById('check' + i).className = 'el-checkbox is-bordered';
			}

		}
	}
	function resultcheck() {
		var alignment = document.getElementById('alignment').value
		var min_year = document.getElementById('min_year').value;
		var max_year = document.getElementById('max_year').value;
		if (document.getElementById('min_price').value != null)
			var min_price = document.getElementById('min_price').value;
		else
			var min_price = 0;
		var max_price = document.getElementById('max_price').value;
		var range = document.getElementById('range').value;
		var searchOption = "";
		for (var i = 0; i < check.length; i++) {
			if (check[i].checked == true) {
				searchOption += check[i].value + "@";

			}
		}
		if (min_year > max_year) {
			alert("최소연식이 최대연식보다 큽니다.")
		} else if (min_price > max_price) {
			alert("최소금액이 최대금액보다 큽니다.")
		} else {
			var jsonData = {
				minyear : min_year,
				maxyer : max_year,
				minprice : min_price,
				maxprice : max_price,
				ran : range,
				option : searchOption,
				alignment : alignment
			};
			jsonData = JSON.stringify(jsonData); // JSON 데이터를 String 자료형으로 변환		}
			var req_list
			req_list = new XMLHttpRequest();
			req_list.onreadystatechange = listChange;
			req_list.open('post', '/db/storeSearchView');
			req_list.setRequestHeader('Content-Type',
					'application/json; charset=UTF-8');
			req_list.send(jsonData);

		}
		function listChange() {
			if (req_list.readyState == 4 && req_list.status == 200) {
				var result = req_list.responseText;
				document.getElementById('sortchange').innerHTML = result;
				modalclose()
				
			}
		}
	}
	
</script>