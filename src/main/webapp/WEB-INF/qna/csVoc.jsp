<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="csVoc_style.jsp" %>
<html lang="ko" data-n-head="%7B%22lang%22:%7B%22ssr%22:%22ko%22%7D%7D"
	class="chrome">
<head>
<title>제안/칭찬 접수</title>

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
<meta data-n-head="ssr" data-hid="title" name="title" content="제안/칭찬 접수">
<meta data-n-head="ssr" data-hid="description" name="description"
	content="대한민국 No.1 직영 중고차. 중고차 매입, 중고차 판매, 중고차 최초 환불 서비스, 중고차 온라인 구매 홈서비스, 중고차 매매, 중고차 사이트 ">
<meta data-n-head="ssr" data-hid="keywords" name="keywords"
	content="중고차, 중고차 시세, K Car 직영차, 중고차팔기, 보험, 보증, 진단, 대출, 중고차 매매, 국산차, 수입차">
<link data-n-head="ssr" rel="icon" type="image/x-icon"
	href="/favicon.ico">
<meta http-equiv="origin-trial"
	content="A+Mt6wQ7St5J869uXW1A/aL3lJaYJYff4gUwPvwSbTuZ7z/T1l4np41d/t4W9TdeS/EMua5fYfBoz4v4TT9tdAgAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5uZXQ6NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY2MTI5OTE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
<meta http-equiv="origin-trial"
	content="AxFuPIivbOVh9A1iWigZYBKLEsd09F0TKyZCh3vhaAKunGI5SMnDaV1g2yqrnkAKqythLyd+bS8ShWXWx388aQIAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY2MTI5OTE5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
 
<!-- <link rel = "stylesheet" href="http://code.jquery.com/mobile/1.0a3/jquery.mobile-1.0a3.min.css" /> 
<script src="http://code.jquery.com/jquery-1.5.min.js" ></script> 
<script src="http://code.jquery.com/mobile/1.0a3/jquery.mobile-1.0a3.min.js" ></script> -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	
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
				<%@include file="/WEB-INF/default/header.jsp" %>
				<div class="contentsWrap">
					<div class="el-row">
						<div class="subHeader">
							<h1 class="title">고객지원</h1>
							<p class="desc">안녕하세요. K Car 고객센터 입니다. 무엇을 도와드릴까요?</p>
						</div>
						<div class="sectionHeader2">
							<h2 class="title">
								<span>제안/칭찬 접수</span>
							</h2>
							<p class="subText">K Car 서비스에 대한 고객님의 소중한 의견을 남겨 주세요.</p>
						</div>
					</div>
					<div class="el-row">
						<div class="formTable">
							<div class="workerList">
				<!-- form -->	<form action="/cs/csProc" class="el-form loginForm" method="post" enctype="multipart/form-data" id="f">
									<div class="el-form-item">
										<!---->
										<div class="el-form-item__content">
											<div class="titLabel">문의유형</div>
											<span class="vocDcd"><div class="el-select maxW590">
													<div class="el-input el-input--suffix" onclick="clickOption()">
														<input type="text" readonly="readonly" autocomplete="off" id="category" name="category"
															placeholder="선택" class="el-input__inner" onclick="clickOption()" value="선택">
														<!---->
														<span class="el-input__suffix" >
															<span class="el-input__suffix-inner">
																<i class="el-select__caret el-input__icon el-icon-arrow-up"></i>
															</span>
														</span>
													</div>
													<div class="el-select-dropdown el-popper" id="dropdown"
														style="display: none; min-width: 590px;">
														<div class="el-scrollbar" style="">
															<div class="el-select-dropdown__wrap el-scrollbar__wrap"
																style="margin-bottom: -17px; margin-right: -17px;">
																<ul class="el-scrollbar__view el-select-dropdown__list">
																	<li class="el-select-dropdown__item" onclick="listClick1()"><span>내차사기</span></li>
																	<li class="el-select-dropdown__item" onclick="listClick2()"><span>내차팔기</span></li>
																	<li class="el-select-dropdown__item" onclick="listClick3()"><span>보증서비스</span></li>
																	<li class="el-select-dropdown__item" onclick="listClick4()"><span>렌트</span></li>
																	<li class="el-select-dropdown__item" onclick="listClick5()"><span>홈페이지/앱
																			이용</span></li>
																	<li class="el-select-dropdown__item" onclick="listClick6()"><span>칭찬합니다/기타</span></li>
																</ul>
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
												</div>
											</span>
											<!---->
										</div>
									</div>
									<div class="el-form-item">
										<!---->
										<div class="el-form-item__content">
											<div class="titLabel">제목</div>
											<span class="inputArea"><div class="maxW590 el-input">
													<!---->
													<input type="text" autocomplete="off" maxlength="30"
														placeholder="제목 입력" class="el-input__inner" id="title" name="title">
													<!---->
													<!---->
													<!---->
													<!---->
												</div></span>
											<!---->
										</div>
									</div>
									<div class="el-form-item registerContArea">
										<!---->
										<div class="el-form-item__content">
											<div class="titLabel">내용</div>
											<div class="textareaBox">
												<span><div class="el-textarea">
														<textarea autocomplete="off" rows="2"
															placeholder="문의 내용 입력" maxlength="800자"
															class="el-textarea__inner" id="content" name="content"
															style="resize: none; min-height: 173px; height: 173px;"></textarea>
														<span class="el-input__count"><span class="textCount">0</span>/<span class="textTotal">800자</span></span>
													</div></span>
												<div>
													<div class="uploadInfo">
														<div tabindex="0" class="el-upload el-upload--text">
															<button type="button"
																class="el-button uploadBtn el-button--default" onclick="onClickUpload()">
																<span> 파일첨부 </span>
															</button>
															<input type=file name="fileName"
																accept="image/jpeg, image/png, .pdf"
																class="el-upload__input" id="my-input">
														</div>
														<div class="el-upload__tip">10mb 이하의 파일(JPG,PNG,PDF)
															1개를 첨부하실 수 있습니다.</div>
														<ul class="el-upload-list el-upload-list--text" style="display: none;" id="viewFile">
															<li tabindex="0" class="el-upload-list__item is-ready"><!---->
																<a class="el-upload-list__item-name">
																	<i class="el-icon-document"></i>
																	<span id="file-name"></span>
																</a>
																<label class="el-upload-list__item-status-label">
																	<i class="el-icon-upload-success el-icon-circle-check"></i>
																</label>
																	<i class="el-icon-close" onclick="fileClose()"></i>
																	<i class="el-icon-close-tip">클릭시 삭제됩니다</i><!----><!---->
															</li>
														</ul>
													</div>
													
													<!-- 홈페이지 선택시 -->
													<div class="formEBox" id="viewDiv" style="display: none;" >
														<h5>※ 홈페이지 오류 관련 불편사항 작성 예시</h5>
														<p>홈페이지가 정상적으로 작동하지 않을 때는 먼저 다른 브라우저 또는 모바일에서 접속해 주세요.
														</p>
														<p>아래 예시와 같이 증상, 문의사항 등을 남겨 주시면 더 빠르고 정확한 답변을 받으실 수
															있습니다.</p>
														<div class="formEList">
															<ul>
																<li class="formET">사용기기</li>
																<li class="formEC"><p>PC 또는 모바일</p></li>
															</ul>
															<ul>
																<li class="formET">사용환경</li>
																<li class="formEC"><p>
																		<label>PC인 경우</label>
																	</p>
																	<p>Explorer edge/ 11/ 10/ 9/ 8, 크롬, 웨일, 파이어폭스 등</p>
																	<p>
																		<label>MOBILE인 경우</label>
																	</p>
																	<p>모바일웹, K Car 앱</p>
																	<p>
																		<label>모바일 추가정보</label>
																	</p>
																	<p>휴대폰명 : 갤럭시9, 아이폰6s 등</p>
																	<p>운영체제 : 안드로이드8.0/ IOS등 버전정보</p></li>
															</ul>
															<ul>
																<li class="formET">증상</li>
																<li class="formEC"><p>회원가입을 위해 본인인증을 받던 중 화면이
																		멈춥니다.</p>
																	<p>PC 내차사기 차량 제조사 검색이 되지 않습니다.</p></li>
															</ul>
														</div>
													</div>
													
													<!--  -->
												</div>
											</div>
											<!---->
										</div>
									</div>
									<div class="el-form-item">
										<!---->
										<div class="el-form-item__content">
											<div class="titLabel">고객명</div>
											<div class="maxW590 el-input">
												<!---->
												<input type="text" autocomplete="off" maxlength="20"
													placeholder="케이카" class="el-input__inner" id="id" name="id">
												<!---->
												<!---->
												<!---->
												<!---->
											</div>
											<label class="el-checkbox mL8 aicenter" id="labelCheck" ><span
												class="el-checkbox__input"><span
													class="el-checkbox__inner" id="checkIcon"><!-- 아이콘 --></span>
													<input type="checkbox"
													aria-hidden="false" name="nameCheck"
													class="el-checkbox__original" id="checkBox"></span><span
												class="el-checkbox__label">익명</span></label>
											<!---->
										</div>
									</div>
									<div class="el-form-item">
										<!---->
										<div class="el-form-item__content">
											<div class="titLabel">회신방법</div>
											<span>
												<div role="radiogroup" class="el-radio-group radioBoxs">
													<label role="radio" tabindex="0" class="el-radio-button">
														<input type="radio" tabindex="-1" autocomplete="off" value="E"
														class="el-radio-button__orig-radio" name='reply' id="emailCheck">
														<span class="el-radio-button__inner" onclick="emailClick()"> 이메일 <!----></span>
													</label> 
													<!-- <label role="radio" tabindex="-1" class="el-radio-button">
														<input type="radio" tabindex="-1" autocomplete="off" value="H"
														class="el-radio-button__orig-radio" name='reply'>
														<span class="el-radio-button__inner" onclick="phoneClick()"> 휴대전화</span>
													</label>  -->
													<label role="radio" tabindex="-1" class="el-radio-button">
														<input type="radio" tabindex="-1" autocomplete="off" value="N"
														class="el-radio-button__orig-radio" name='reply'>
														<span class="el-radio-button__inner" onclick="notReturn()"> 회신불필요 <!----></span>
													</label>
												</div>
											</span>
											<!---->
										</div>
									</div>
									<div class="emailArea" id="replyArea" style="display: none;">
										<label class="titLabel" id="titLabel"></label>
										<div class="itemList maxW590 ">
											<div class="el-form-item">
												<!---->
												<div class="el-form-item__content">
													<span><div class="maxW590 el-input">
															<!---->
															<input type="text" autocomplete="off" id="reply"
																class="el-input__inner" name="replyValue">
															<!---->
															<!---->
															<!---->
															<!---->
														</div>
													</span>
													<!---->
												</div>
											</div>
											
										</div>
									</div>
									<!---->
									<!---->
								</form>
							</div>
							<div class="el-row">
								<div class="termsArea">
									<div class="roundCheck" id="roundCheck">
										<h3 class="subTitle3">
											<label class="el-checkbox" id="acceptLabel"><span
												class="el-checkbox__input"><span
													class="el-checkbox__inner" id="acceptIcon"></span><input type="checkbox"
													aria-hidden="false" true-value="Y" false-value="N"
													class="el-checkbox__original" id="acceptCheck"></span><span
												class="el-checkbox__label"> 개인정보 수집 및 이용 동의(필수) <!----></span></label>
										</h3>
										<div class="termsCheckWrap">
											<div class="item">
												<strong>개인정보 항목</strong>
												<p>이름,이메일,휴대폰 번호</p>
											</div>
											<div class="item">
												<strong>목적</strong>
												<p>제안/칭찬접수에 대한 내용을 휴대폰 또는 이메일 회신</p>
											</div>
											<div class="item">
												<strong>보유기간</strong>
												<p>목적 달성 후 즉시 파기 또는 이용 목적과 관련된 사고조사, 분쟁해결, 민원처리, 법령상 의무
													이행을 위한 필요한 범위 내에서만 보유/이용</p>
											</div>
										</div>
									</div>
								</div>
								<p class="guideTxt">개인정보 수집 및 이용에 동의하셔야 제안/칭찬이 접수됩니다.</p>
							</div>
						</div>
						<div class="footerBtnWrap">
							<div class="searchTrigger box maxW840 btnLF4 el-row">
								<button class="button chosenApply" onclick="backButton()">취소</button>
								<button class="button apply" onclick="submitForm()">제출</button>
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
				<%@include file="/WEB-INF/default/footer.jsp" %>
			</div>
		</div>
	</div>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>


	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=771045850193577&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<div id="criteo-tags-div" style="display: none;"></div>
	<iframe src="//tpc.googlesyndication.com/sodar/Beq5YUTp.html" width="0"
		height="0" style="display: none;"></iframe>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	<iframe height="0" width="0" title="Criteo DIS iframe"
		style="display: none;"></iframe>
	
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		$('.el-textarea__inner').keyup(function (e) {
			var content = $(this).val();
		    
		    // 글자수 세기
		    if (content.length == 0 || content == '') {
		    	$('.textCount').text('0');
		    } else {
		    	$('.textCount').text(content.length);
		    }
		    
		    // 글자수 제한
		    if (content.length > 800) {
		    	// 800자 부터는 타이핑 되지 않도록
		        $(this).val($(this).val().substring(0, 800));
		        // 800자 넘으면 알림창 뜨도록
		        alert('글자수는 800자까지 입력 가능합니다.');
		    };
		});
		
		 function onClickUpload() {
	            var myInput = document.getElementById("my-input");
	            myInput.click();
	     }
		 
		 function clickOption(){
			 $("#dropdown").show();
			 
		 }
		 
		 function backButton() {
			 if (confirm("작성을 취소하시겠습니까?") == true){
				 location.href='home';
			 }
		 }
		
		 function listClick1() {
			 $("#category").val("내차사기");
			 $("#dropdown").hide();
			 if($("#viewDiv").show()) {
				 $("#viewDiv").hide();
			 }
		 }
		 function listClick2() {
			 $("#category").val("내차팔기");
			 $("#dropdown").hide();
			 if($("#viewDiv").show()) {
				 $("#viewDiv").hide();
			 }
		 }
		 function listClick3() {
			 $("#category").val("보증서비스");
			 $("#dropdown").hide();
			 if($("#viewDiv").show()) {
				 $("#viewDiv").hide();
			 }
		 }
		 function listClick4() {
			 $("#category").val("렌트");
			 $("#dropdown").hide();
			 if($("#viewDiv").show()) {
				 $("#viewDiv").hide();
			 }
		 }
		 function listClick5() {
			 $("#category").val("홈페이지/앱 이용");
			 $("#dropdown").hide();
			 $("#viewDiv").show();
		 }
		 function listClick6() {
			 $("#category").val("칭찬합니다/기타");
			 $("#dropdown").hide();
			 if($("#viewDiv").show()) {
				 $("#viewDiv").hide();
			 }
		 }
		 
		 
		 $("#my-input").change(function(){
			 var fileValue = $("#my-input").val().split("\\");
			 var fileName = fileValue[fileValue.length-1]; // 파일명
			 var file = document.getElementById('file-name');
			 file.innerHTML = fileName;
			 $("#viewFile").show();
			 
	 	 });
		 
		 function fileClose() {
			 $("#viewFile").hide();
			 $("#my-input").val("");
		 }
		 
		 var checkBox = document.getElementById("checkBox");
		 var checkMark = document.getElementById("labelCheck");
		var checkIcon = document.getElementById("checkIcon");
		var text = document.getElementById("id");
		
		$(checkMark).click(function (){
			if( !checkBox.checked ){          
				checkBox.checked = true;
				checkIcon.style.background= "url(/images/common/checkbox-single-checked.svg)"
				text.disabled = true;
				text.style.backgroundColor = '#f2f2f2';
				$("#id").removeAttr('placeholder');
				$("#id").val("");
			}else{                           
				checkBox.checked = false;
				checkIcon.style.background= "url(/images/common/checkbox-single-default.svg)"
				text.disabled = false;
				$("#id").css("background-color", ""); 
				$("#id").css("background-color", ""); 
				$("#id").attr("placeholder", "케이카");
			}
		});
         
		var label = document.getElementById('titLabel');
		function emailClick(){
			$("#replyArea").show();
			label.innerHTML = "이메일";
			$("#reply").attr("placeholder", "kcar@naver.com");
		}
		
		function notReturn() {
			$("#replyArea").hide();
			$("#reply").val("");
		}
		
		 var checkBoxA = document.getElementById("acceptCheck");
		 var checkMarkA = document.getElementById("acceptLabel");
		var checkIconA = document.getElementById("acceptIcon");
		
		$(checkMarkA).click(function (){
			if( !checkBoxA.checked ){          
				checkBoxA.checked = true;
				checkIconA.style.background= "url(/images/common/checkbox-single-checked.svg)"
				document.getElementById("roundCheck").style.borderColor = "#b70f28";
				 
			}else{                           
				checkBoxA.checked = false;
				checkIconA.style.background= "url(/images/common/checkbox-single-default.svg)"
				$("#roundCheck").css("border-color", ""); 
				
			}
		});
		
		function submitForm() {
			var category = $("#category").val();
			var title = $("#title").val(); 
			var content = $("#content").val();
			var id = $("#id").val();
			var replyValue = $("#reply").val();
			var nameCheck = $('input[name="nameCheck"]').is(':checked');
			var form = document.getElementById("f");
			if(category == "선택"){
				alert("문의유형을 선택해주세요");
				return false;
			}else if(title == null || title == "") {
				alert("제목을 입력해주세요");
				return false;
			}else if(content == null || content == ""){
				alert("내용을 입력해주세요");
				return false;
			}else if((id == null || id == "") && !nameCheck) {
				alert("고객명을 입력해주세요");
				return false;
			}
			
			var radio = $('input[name="reply"]').is(':checked');
			if(!radio) {
				alert("회신방법을 선택해주세요");
				return false;
			}
			
			var emailCheck = $('input[id="emailCheck"]').is(':checked');
			if(emailCheck && (replyValue == null || replyValue == "")){
				alert("회신정보를 입력해주세요");
				return false;
			}	
			
			
			if($("#acceptCheck").is(":checked")) {
				
				form.submit();
			}else {
				alert("개인정보 수집 및 이용에 동의해주세요.");
				return false;
			}
			
		}
		
	</script>
	
	<!-- bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
</body>
	
	
</html>