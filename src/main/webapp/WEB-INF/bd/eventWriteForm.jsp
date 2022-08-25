<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="NoticeWriteForm_style.jsp" %>
<html lang="ko" data-n-head="%7B%22lang%22:%7B%22ssr%22:%22ko%22%7D%7D"
	class="chrome">
<head>
<title>이벤트 작성</title>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>


</head>
<body>
	
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
				<%@include file="/WEB-INF/default/admin_header.jsp" %>
				<div class="contentsWrap">
					<div class="el-row">
						<div class="subHeader">
							<h1 class="title">이벤트</h1>
							<p class="desc">K Car의 새로운 소식을 전달받으실 수 있습니다.</p>
						</div>
						<form action="eventWriteProc" method="post">
							<input type="hidden" name="listViewno" value="event">
							<div>
								<div class="boardView">
									<div class="boardViewTitle">
										<table style="width: 100%;">
											<tr>
												<td style="width: 150px; text-align: center;">제목</td>
												<td><input type="text" autocomplete="off" maxlength="30" placeholder="제목 입력" class="el-input__inner" id="title" name="title"></td>
											</tr>
											<tr style="height: 20px;"></tr>
											<tr>
												<td style="width: 150px; text-align: center;">이벤트 날짜</td>
												<td><input type="text" id="startDate" class="el-input__inner" style="width: 200px;" name="startDate"> ~ <input type="text" id="endDate" class="el-input__inner" style="width: 200px;" name="endDate"></td>
											<tr style="height: 20px;"></tr>
											<tr>
												<td style="width: 150px; text-align: center;">내용</td>
												<td><textarea autocomplete="off" rows="2" placeholder="내용 입력" class="el-textarea__inner" id="content" name="content" style="resize: none; min-height: 173px; height: 350px;"></textarea></td>
											</tr>
										</table>
									</div>
								</div>
								<div class="searchTrigger box Large maxW97 el-row">
									<button class="button apply" id="submitButton">작성 완료</button>
								</div>
								<!-- <div class="boardViewPaging">
									<ul>
										<li class="bvPN">이전글</li>
										<li class="bvPT"><a
											class="el-link el-link--default is-underline">
												
												<span class="el-link--inner"> [공지] K Car 사이트 개편에 따른 이용
													가이드 안내 </span>
											
										</a></li>
										<li class="bvPD">2022.07.18</li>
									</ul>
									<ul>
										<li class="bvPN">다음글</li>
										<li class="bvPT"><a
											class="el-link el-link--default is-underline">
												
												<span class="el-link--inner"> [공지] K Car 전국 직영점 8월 휴점
													안내 </span>
											
										</a></li>
										<li class="bvPD">2022.08.11</li>
									</ul>
								</div> -->
							</div>
						</form>
					</div>
				</div>
				<%@include file="/WEB-INF/default/footer.jsp" %>
			</div>
		</div>
	</div>
	
		
	<script>
		
		$("#submitButton").click(function(){
			var title = $("#title").val();
			var content = $("#content").val();
			var startDate = $("#startDate").val();
			var endDate = $("#endDate").val();
			if(title == null || title == ""){
				alert("제목을 입력해주세요");
				return false;
			}else if(startDate = null || startDate == ""){
				alert("이벤트 시작일을 선택해주세요");
				return false;
			}else if(endDate = null || endDate == ""){
				alert("이벤트 마지막날을 선택해주세요");
				return false;
			}else if(content = null || content == ""){
				alert("내용을 입력해주세요");
				return false;
			}else {
				$("#submitButton").setAttribute('type', 'submit');
			}
		});
			
		
		$(document).ready(function () {
            $.datepicker.setDefaults($.datepicker.regional['ko']); 
            $( "#startDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 stepMonths: 1, // next, prev 버튼을 클릭했을때 얼마나 많은 월을 이동하여 표시하는가.
                 closeText: '닫기',  // 닫기 버튼 패널
                 showAnim: "slide", //애니메이션을 적용한다.
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yy-mm-dd",
                 minDate: 0,
                 maxDate: 60,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                 onClose: function( selectedDate ) {    
                      //시작일(startDate) datepicker가 닫힐때
                      //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                     $("#endDate").datepicker( "option", "minDate", selectedDate );
                 }    
 
            });
            $( "#endDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 stepMonths: 1, 
                 closeText: '닫기',
                 showAnim: "slide", 
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yy-mm-dd",
                 maxDate: 60,                     
                 onClose: function( selectedDate ) {    
                     // 종료일(endDate) datepicker가 닫힐때
                     // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
                     $("#startDate").datepicker( "option", "maxDate", selectedDate );
                 }    
 
            });    
    });
		
	</script>
	
	    
</body>
</html>