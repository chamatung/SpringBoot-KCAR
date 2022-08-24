<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html lang="ko" class="chrome">
<head>
<title>명의자 입력</title>
<%@include file="carOrderDetail_style.jsp" %>
</head>
<body style="">
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
				<%@include file="/WEB-INF/default/header.jsp" %>
				<!-- header end -->
				<div class="homeServiceWrap contWrap">
					<div class="homeCont">
					<form action="carOrderDetail" method="post" id="detailF">
					<input type="hidden" value="${car.c_num }" name="c_num">
						<div class="contentsBox el-row">
							<div>
								<div class="contStage1">
									<div class="tit">
										<strong>개인 명의를 선택하셨습니다.</strong>
										<p>이제 명의자 정보와 배송 정보를 입력해 주세요.</p>
									</div>
									<div class="formWrap">
										<div class="sectionHeader"></div>
										<form class="el-form">
											<div class="el-form-item nameWrap">
												<!---->
												<div class="el-form-item__content">
													<div class="titLabel">명의자 이름</div>
													<div class="flexbox">
														<div class="el-input is-disabled">
															<!---->
															<input type="text" disabled="disabled" autocomplete="off"
																placeholder="이름 입력" maxlength="20" value="${member.m_name }"
																class="el-input__inner" id="name" name="m_name">
															<!---->
															<!---->
															<!---->
															<!---->
														</div>
														<button type="button"
															class="el-button checkBtn el-button--default" onclick="nameChange()">
															<!---->
															<!---->
															<span> 명의자 변경 </span>
														</button>
													</div>
													<p class="guideTxt">표시된 이름이 아닌 다른 사람의 이름으로 계약하시려면
														‘명의자변경’ 을 눌러 본인인증 후 변경 가능합니다.</p>
													<!---->
												</div>
											</div>
											<div class="el-form-item">
												<!---->
												<div class="el-form-item__content">
													<div class="titLabel">명의자 휴대폰번호</div>
													<div class="flexbox">
														<div class="el-input is-disabled el-input--suffix">
															<!---->
															<input type="text" disabled="disabled" autocomplete="off"
																placeholder="휴대폰번호 입력" value="${member.m_tel }"
																inputmode="numeric" maxlength="13"
																class="el-input__inner" id="tel" name="m_tel">
															<!---->
															<!---->
															<!---->
															<!---->
														</div>
													</div>
													<!---->
												</div>
											</div>
											<div class="el-form-item postWrap">
												<!---->
												<div class="el-form-item__content">
													<div class="titLabel">명의자 주민등록 주소지</div>
													<div class="flexbox">
														<div class="el-input is-disabled">
															<!---->
															<input type="text" disabled="disabled" autocomplete="off"
																placeholder="우편번호 입력" class="el-input__inner" id="zipcode" name="m_zipcode" value="${member.m_zipcode }">
															<!---->
															<!---->
															<!---->
															<!---->
														</div>
														<button type="button"
															class="el-button checkBtn el-button--default" onclick="daumAddr()">
															<!---->
															<!---->
															<span> 우편번호 찾기 </span>
														</button>
													</div>
													<div class="el-input is-disabled">
														<!---->
														<input type="text" disabled="disabled" autocomplete="off"
															placeholder="주소 입력" class="el-input__inner" id="addr1" name="m_addr1" value="${member.m_addr1 }">
														<!---->
														<!---->
														<!---->
														<!---->
													</div>
													<div class="el-input el-input--suffix">
														<!---->
														<input type="text" autocomplete="off"
															placeholder="상세주소 입력" maxlength="80"
															class="el-input__inner" id="addr2" name="m_addr2" value="${member.m_addr2 }">
														<!---->
														<!---->
														<!---->
														<!---->
													</div>
													<!---->
												</div>
											</div>
										</form>
									</div>
									<!---->
									<div class="formWrap mT16">
										<div class="item">
											<label class="el-checkbox" onclick="agree('0')"><span
												class="el-checkbox__input"><span
													class="el-checkbox__inner"></span><input type="checkbox"
													aria-hidden="false" true-value="N" false-value="Y"
													class="el-checkbox__original"></span><span
												class="el-checkbox__label"> 배송지변경하고 회원정보에도 재반영할게요 ! <!----></span></label>
										</div>
										<!---->
									</div>
									<!---->
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
									<div class="mT16">
										<ul class="guideTxt">
											<li>사정에 따라 배송일이 변경될 수 있습니다.</li>
											<li>배송비는 배송 지역에 따라 다릅니다.</li>
											<li>정확한 배송비는 결제 단계에서 확인하실 수 있습니다.</li>
											<li>오전 11시 이전에 차량 금액을 모두 납입하고 보험가입증명서를 제출할 경우 당일 출고 및
												배송이 가능합니다.</li>
										</ul>
									</div>
								</div>
								<div class="termsArea">
									<div class="roundCheck">
										<h3 class="subTitle3">약관 동의</h3>
										<div class="termsCheckWrap">
											<div class="item">
												<label class="el-checkbox" onclick="agree('1')"><span
													class="el-checkbox__input"><span
														class="el-checkbox__inner"></span><input type="checkbox"
														aria-hidden="false" class="el-checkbox__original" value=""></span><span
													class="el-checkbox__label"> [전체 항목 동의] 아래의 필수 및 선택
														항목의 내용을 확인했으며, 모두 동의합니다. <!---->
												</span></label>
											</div>
											<div>
												<div class="item">
													<label class="el-checkbox" onclick="agree('2')">
													<span class="el-checkbox__input">
													<span class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" class="el-checkbox__original"
															value=""></span><span class="el-checkbox__label">
															[필수] 개인정보 수집/이용 동의 <!---->
													</span></label>
													<button type="button"
														class="el-button txtButton inner2 el-button--text">
														<!---->
														<!---->
														<span> 보기 </span>
													</button>
												</div>
											</div>
											<div>
												<div class="item">
													<label class="el-checkbox" onclick="agree('3')"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" class="el-checkbox__original"
															value=""></span><span class="el-checkbox__label">
															[필수] 고유식별정보 수집/이용 동의 <!---->
													</span></label>
													<button type="button"
														class="el-button txtButton inner2 el-button--text">
														<!---->
														<!---->
														<span> 보기 </span>
													</button>
												</div>
											</div>
											<div>
												<div class="item">
													<label class="el-checkbox" onclick="agree('4')"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" class="el-checkbox__original"
															value=""></span><span class="el-checkbox__label">
															[필수] 개인정보처리의 위탁에 관한 사항 <!---->
													</span></label>
													<button type="button"
														class="el-button txtButton inner2 el-button--text">
														<!---->
														<!---->
														<span> 보기 </span>
													</button>
												</div>
											</div>
											<div>
												<div class="item blockWrap">
													<div class="termsDepth">
														<label class="el-checkbox" aria-controls="undefined" onclick="agree('5')"><span
															tabindex="0" role="checkbox" aria-checked="mixed"
															class="el-checkbox__input is-indeterminate"><span
																class="el-checkbox__inner"></span><input type="checkbox"
																aria-hidden="true" class="el-checkbox__original"
																value=""></span><span class="el-checkbox__label">
																[선택] 마케팅 활용동의 <!---->
														</span></label>
														<div role="group" aria-label="checkbox-group"
															class="el-checkbox-group">
															<label class="el-checkbox" onclick="agree('6')"><span
																class="el-checkbox__input" ><span
																	class="el-checkbox__inner"></span><input
																	type="checkbox" aria-hidden="false"
																	class="el-checkbox__original" value="전화"></span><span
																class="el-checkbox__label"> 전화 <!----></span></label><label
																class="el-checkbox"><span
																class="el-checkbox__input" onclick="agree('7')"><span
																	class="el-checkbox__inner"></span><input
																	type="checkbox" aria-hidden="false"
																	class="el-checkbox__original" value="문자메시지(SMS)"></span><span
																class="el-checkbox__label"> 문자메시지(SMS) <!----></span></label><label
																class="el-checkbox"><span
																class="el-checkbox__input" onclick="agree('8')"><span
																	class="el-checkbox__inner"></span><input
																	type="checkbox" aria-hidden="false"
																	class="el-checkbox__original" value="앱 푸시 알림"></span><span
																class="el-checkbox__label"> 앱 푸시 알림 <!----></span></label>
														</div>
													</div>
													<div class="guideWrap">
														<ul class="guideTxt">
															<li>활용하는 개인정보 항목 : 성명, 휴대폰전화번호, 이메일</li>
															<li>개인정보의 수집 이용 목적 : 새로운 서비스/신상품이나 이벤트 정보의 안내, 통계학적
																특성에 따른 서비스 제공 및 광고 발송, 서비스의 유효성 확인, 이벤트 정보 및 참여기회 제공,
																광고성 정보제공 접속빈도 파악, 회원의 서비스이용에 대한 통계</li>
															<li>개인정보의 보유 및 이용 기간 : 회원탈퇴 및 회원이 거부 의사를 밝힌 경우 삭제, 단
																새로운 서비스/신상품이나 이벤트 정보에 제공을 위해서는 5년간 개인정보를 보유합니다.</li>
															<li>동의 거부에 따른 불이익의 내용 : 고객님께서는 동의 거부 권리가 있으며, 선택항목에
																해당하는 정보를 입력하지 않으셔도 회원가입에 제한은 없습니다. 단, 동의 하지 않는 경우, 이벤트를
																통해 제공될 수 있는 이익 및 혜택은 제공되지 않을 수 있습니다.</li>
														</ul>
													</div>
												</div>
											</div>
											<div>
												<div class="item">
													<label class="el-checkbox" onclick="agree('9')"><span
														class="el-checkbox__input"><span
															class="el-checkbox__inner"></span><input type="checkbox"
															aria-hidden="false" class="el-checkbox__original"
															value=""></span><span class="el-checkbox__label">
															[선택] 개인정보 제3자의 제공에 관한 사항 <!---->
													</span></label>
													<button type="button"
														class="el-button txtButton inner2 el-button--text">
														<!---->
														<!---->
														<span> 보기 </span>
													</button>
												</div>
											</div>
										</div>
									</div>
									<div>
										<div class="el-dialog__wrapper popup fullPopup hauto"
											style="display: none;">
											<div role="dialog" aria-modal="true"
												aria-label="[필수] 개인정보 수집/이용 동의" class="el-dialog"
												style="margin-top: 15vh;">
												<div class="el-dialog__header">
													<span class="el-dialog__title">[필수] 개인정보 수집/이용 동의</span>
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
										<div class="el-dialog__wrapper popup fullPopup hauto"
											style="display: none;">
											<div role="dialog" aria-modal="true"
												aria-label="[필수] 고유식별정보 수집/이용 동의" class="el-dialog"
												style="margin-top: 15vh;">
												<div class="el-dialog__header">
													<span class="el-dialog__title">[필수] 고유식별정보 수집/이용 동의</span>
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
										<div class="el-dialog__wrapper popup fullPopup"
											style="display: none;">
											<div role="dialog" aria-modal="true"
												aria-label="[필수] 개인정보처리의 위탁에 관한 사항" class="el-dialog"
												style="margin-top: 15vh;">
												<div class="el-dialog__header">
													<span class="el-dialog__title">[필수] 개인정보처리의 위탁에 관한
														사항</span>
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
										<div class="el-dialog__wrapper popup fullPopup hauto"
											style="display: none;">
											<div role="dialog" aria-modal="true"
												aria-label="[선택] 개인정보 제3자의 제공에 관한 사항" class="el-dialog"
												style="margin-top: 15vh;">
												<div class="el-dialog__header">
													<span class="el-dialog__title">[선택] 개인정보 제3자의 제공에 관한
														사항</span>
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
								<div class="btmButton">
									<div class="searchTrigger box el-row">
										<button id="mkt_btnBuyer_100" type="button" class="button apply" onclick="orderRequest()">
											주문 신청</button>
									</div>
								</div>
							</div>
						</div>
					</form>
						<div class="contentsBox contRight el-row">
							<div>
								<div class="el-row">
									<div class="carInfoRight">
										<div class="sumSummaryWrap">
											<div class="progressBarWrap">
												<h3>주문 신청</h3>
												<div role="progressbar" aria-valuenow="16" aria-valuemin="0"
													aria-valuemax="100"
													class="el-progress progressBar el-progress--line">
													<div class="el-progress-bar">
														<div class="el-progress-bar__outer" style="height: 8px;">
															<div class="el-progress-bar__inner" style="width: 66%;">
																<!---->
															</div>
														</div>
													</div>
													<div class="el-progress__text" style="font-size: 15.2px;">2/3</div>
												</div>
											</div>
											<div class="carImg">
												<img
													src="${car.c_photo }"
													alt="${car.cb_brand } ${car.cb_m_model } ${car.c_fuel }">
											</div>
											<h3 class="carName">${car.cb_brand } ${car.cb_m_model } ${car.c_fuel }</h3>
											<p class="subTit">${car.c_num }</p>
											<ul class="dotLists">
												<li>${car.c_year }</li>
												<li>${car.c_distance }km</li>
												<li>${car.c_fuel }</li>
											</ul>
											<div role="tablist" aria-multiselectable="true"
												class="el-collapse accordionMenu">
												<div class="el-collapse-item is-active">
													<div role="tab" aria-expanded="true"
														aria-controls="el-collapse-content-7279"
														aria-describedby="el-collapse-content-7279">
														<div role="button" id="el-collapse-head-7279" tabindex="0"
															class="el-collapse-item__header is-active">
															예상 결제 금액 <i
																class="el-collapse-item__arrow el-icon-arrow-right is-active"></i>
														</div>
													</div>
													<div role="tabpanel"
														aria-labelledby="el-collapse-head-7279"
														id="el-collapse-content-7279"
														class="el-collapse-item__wrap">
														<div class="el-collapse-item__content">
															<ul class="costDetailLists">
																<li><span>차량가</span> <span>${carPriceInfo.carPrice } 원</span></li>
																<li><span>이전등록비</span> <span>${carPriceInfo.registrationPrice } 원</span></li>
																<li><span>관리비용</span> <span>${carPriceInfo.managePrice } 원</span></li>
																<li><span>등록신청대행수수료</span> <span>${carPriceInfo.registPrice } 원</span></li>
																<li><span>K Car Warranty<span class="pointN"></span></span> <span>${carPriceInfo.kw } 원</span></li>
																<li><span>배송비<span class="pointC">*</span></span> <span>배송 지역에 따라 다름</span>
															</ul>
														</div>
													</div>
												</div>
											</div>
											<div class="sumArea">
												<span>합계</span> <strong>${carPriceInfo.sum }원</strong>
											</div>
										</div>
										<div class="bannerArea mT20">
											<a href="/sc/HomeSvcMain" target="homeSvcMain"><div
													class="bannerTxt">
													<h3 class="tit">내차팔기 간편신청!</h3>
													<p class="desc">K Car 평가사가 무료 방문및 견적 드립니다.</p>
												</div> <img src="/images/carInfo/bg-banner-half.png" alt=""></a>
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
				<!-- footer start -->
				<%@include file="/WEB-INF/default/footer.jsp" %>
				<!-- footer end -->
			</div>
		</div>
	</div>


<!-- 휴대폰인증 -->
<!-- jQuery -->
<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script> -->
<!-- iamport.payment.js -->
<!-- <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-{SDK-최신버전}.js"></script> -->
<!-- <script> -->
// var IMP = window.IMP; // 생략 가능
// IMP.init("imp00000000");	// 예: imp00000000
// var m_name = document.getElementById('name');
// var m_tel = document.getElementById('tel');
// var nameCnt = 0;
// var nameChange = function(){
// 	// IMP.certification(param, callback) 호출
// 	IMP.certification({ // param
// 	  popup : false // PC환경에서는 popup 파라메터가 무시되고 항상 true 로 적용됨
// 	}, function (rsp) { // callback
// 	  if (rsp.success) {
// 		  var m_name = document.getElementById('name');
// 		  var m_tel = document.getElementById('tel');
// 		  var nameCnt = 0;
// 		  nameChange();
// 	  } else {
// 	   alert('인증실패');
// 	  }
// 	});
// }
<!-- </script> -->

<!-- 다음주소 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
// text활성화
var m_name = document.getElementById('name');
var m_tel = document.getElementById('tel');
var nameCnt = 0;
var nameChange = function(){
	if(nameCnt == 1){
		return;
	}
	nameCnt ++;
	var is_disabled = document.querySelectorAll('.el-input.is-disabled');
	is_disabled[0].classList.remove('is-disabled');
	is_disabled[1].classList.remove('is-disabled');
	m_name.disabled = false;	
	m_tel.disabled = false;	
}
//다음 주소입력
var daumAddr = function(){
	new daum.Postcode({
		oncomplete: function(data){
			var addr = "";
			if(data.userSelectedType == "R"){
				addr = data.roadAddress;
			}else{
				addr = data.jibunAddress;
			}
			document.getElementById('zipcode').value = data.zonecode;
			document.getElementById('addr1').value = addr;
			document.getElementById('addr2').focus();
		}
	}).open();
}

//약관동의	
var el_checkbox = document.querySelectorAll('.el-checkbox');
var el_checkbox__input = document.querySelectorAll('.el-checkbox__input');
var el_checkbox__original = document.querySelectorAll('.el-checkbox__original');
var cnt = 0;
var agree = function(index){
	if(cnt == 1) {
		cnt = 0;
		return;
	}
	cnt++;
	const check = el_checkbox__original[index];
	const is_checked = check.checked;
	
	if(index == 1){
		if(is_checked == false){
			for(var i = 1;i<el_checkbox.length;i++){
				if(el_checkbox[i].classList.contains('is-checked') == false){
					el_checkbox[i].classList.add('is-checked');	
					el_checkbox__input[i].classList.add('is-checked');	
				}
			}
		}else{
			for(var i = 1; i<el_checkbox.length;i++){
				if(el_checkbox[i].classList.contains('is-checked')){
					el_checkbox[i].classList.remove('is-checked');	
					el_checkbox__input[i].classList.remove('is-checked');	
				}
			}
		}
		return;
	}
	if(index == 5){
		if(is_checked == false){
			for(var i = 5;i<el_checkbox.length-1;i++){
				if(el_checkbox[i].classList.contains('is-checked') == false){
					el_checkbox[i].classList.add('is-checked');	
					el_checkbox__input[i].classList.add('is-checked');	
				}
			}
		}else{
			for(var i = 5; i<el_checkbox.length-1;i++){
				if(el_checkbox[i].classList.contains('is-checked')){
					el_checkbox[i].classList.remove('is-checked');	
					el_checkbox__input[i].classList.remove('is-checked');	
				}
			}
		}
		return;
	}
	if(is_checked == false){
		el_checkbox[index].classList.add('is-checked');	
		el_checkbox__input[index].classList.add('is-checked');	
	}else{
		el_checkbox[index].classList.remove('is-checked');	
		el_checkbox__input[index].classList.remove('is-checked');	
	}
}
//주문신청하기
var orderRequest = function(){
	for(var i = 2; i < 5; i++){
		if(el_checkbox__original[i].checked == false){
			alert('필수 동의항목에 체크해주세요');
			return;
		}
	}
	var addr1 = document.getElementById('addr1').disabled = false;	
	var zipcode = document.getElementById('zipcode').disabled = false;	
	document.getElementById('detailF').submit();
}
</script>
</body>
</html>