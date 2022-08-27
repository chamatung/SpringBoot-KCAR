<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="loginstyle_input.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>렌트 차량 업로드</title>
<style>
input[type="checkbox"] {
	display: none;
}

input[type='checkbox']+label span {
	display: inline-block;
	width: 25px;
	height: 25px;
	background: url('/images/common/checkbox-single-default.svg') no-repeat
		0 0px/contain;
}

input[type='checkbox']:checked+label span {
	background: url('/images/common/checkbox-single-checked.svg') no-repeat
		0 0px/contain;
}

.searchTrigger .button.apply:disabled {
	background: #d8dee8;
	border-color: #d8dee8;
}

hr {
	width: 93%;
	margin-left: 75px;
}
</style>
</head>
<body>
<%@include file="/WEB-INF/default/admin_header.jsp" %>
<div class="titLabel" align="center"><h2>렌트 차량 업로드</h2></div>
<br>
<hr>
<br>
<form action="rent_update" method="post" enctype="multipart/form-data">
	<div class="el-input el-input--suffix">
		<div class="titLabel">
			<span style="margin-left: 80px;">차번호</span> <span
				style="margin-left: 330px;">개월수</span> <span
				style="margin-left: 315px;">초기납입금</span> <span
				style="margin-left: 300px;">배기량</span> <span
				style="margin-left: 320px;">제조사 모델명</span>
		</div>
			<input type="text" name="crNumber" placeholder="166호3207" class="el-input__inner" style="width: 15%; margin-left: 80px;">
			<input type="text" name="crMonth" placeholder="24개월"  class="el-input__inner" style="width: 15%; margin-left: 80px;"> 
			<input type="text" name="crFirstPrice" placeholder="396만원"  class="el-input__inner" style="width: 15%; margin-left: 80px;"> 
			<input type="text" name="crCc" placeholder="2,497cc"  class="el-input__inner" style="width: 15%; margin-left: 80px;"> 
			<input type="text" name="crName" placeholder="소나타"  class="el-input__inner" style="width: 15%; margin-left: 80px;">
	</div>
	<br><br>
	<!-- 차번호<input type="text" name="crNumber" placeholder="166호3207" class="el-input__inner" style="width: 15%; margin-left: 80px;">
	개월수<input type="text" name="crMonth" placeholder="24개월"  class="el-input__inner" style="width: 15%; margin-left: 80px;">
	초기납입금<input type="text" name="crFirstPrice" placeholder="396만원"  class="el-input__inner" style="width: 15%; margin-left: 80px;">
	배기량<input type="text" name="crCc" placeholder="2,497cc"  class="el-input__inner" style="width: 15%; margin-left: 80px;">
	제조사 모델명<input type="text" name="crName" placeholder="소나타"  class="el-input__inner" style="width: 15%; margin-left: 80px;"> -->
	
	<div class="titLabel">
			<span style="margin-left: 80px;">신차가</span> <span
				style="margin-left: 330px;">주행거리</span> <span
				style="margin-left: 300px;">등급</span> <span
				style="margin-left: 340px;">연식</span> <span
				style="margin-left: 340px;">가격</span>
	</div>
	<div class="el-input el-input--suffix">
		<input type="text" name="crNewPrice" placeholder="4,333만원"  class="el-input__inner" style="width: 15%; margin-left: 80px;">
		<input type="text" name ="crDistance" placeholder="83,111km"  class="el-input__inner" style="width: 15%; margin-left: 80px;">
		<input type="text" name ="crGrade" placeholder="가솔린2.5" class="el-input__inner" style="width: 15%; margin-left: 80px;">
		<input type ="text" name="crYear" placeholder="22년12월" class="el-input__inner" style="width: 15%; margin-left: 80px;">
		<input type ="text" name="crPrice " placeholder="50만원" class="el-input__inner" style="width: 15%; margin-left: 80px;">
	</div>
	<!-- 신차가<input type="text" name="crNewPrice" placeholder="4,333만원"  class="el-input__inner" style="width: 15%; margin-left: 80px;">
	주행거리<input type="text" name ="crDistance" placeholder="83,111km"  class="el-input__inner" style="width: 15%; margin-left: 80px;">
	등급<input type="text" name ="crGrade" placeholder="가솔린2.5" class="el-input__inner" style="width: 15%; margin-left: 80px;">
	연식<input type ="text" name="crYear" placeholder="22년12월" class="el-input__inner" style="width: 15%; margin-left: 80px;">
	가격<input type ="text" name="crPrice " placeholder="50만원" class="el-input__inner" style="width: 15%; margin-left: 80px;"> -->
	<br><br>
	<div class="el-input el-input--suffix">
		<div class="titLabel">
			<span style="margin-left: 80px;">색상</span> <span
				style="margin-left: 342px;">연료</span> <span
				style="margin-left: 335px;">변속</span> <span
				style="margin-left: 335px;">제조사명</span> <span
				style="margin-left: 310px;">사진 첨부</span>
		</div>
	
			<select name="crColor" class="el-input__inner" style="margin-left: 80px; width: 15%;">
				<option value="">선택</option>
				<option value="흰색">흰색</option>
				<option value="검정색">검정색</option>
				<option value="쥐색">쥐색</option>
				<option value="은색">은색</option>
				<option value="빨간색">빨간색</option>
				<option value="주황색">주황색</option>
				<option value="파란색">파란색</option>
				<option value="노란색">노란색</option>
			</select>
			<select name="crFuel" class="el-input__inner"
				style="margin-left: 80px; width: 15%;">
				<option value="">선택</option>
				<option value="가솔린">가솔린</option>
				<option value="디젤">디젤</option>
				<option value="LPG">LPG</option>
				<option value="하이브리드">하이브리드</option>
				<option value="전기">전기</option>
			</select>
			<select name="crMission" class="el-input__inner"
				style="margin-left: 80px; width: 15%;">
				<option value="">선택</option>
				<option value="오토">오토</option>
				<option value="수동">수동</option>
			</select>
			<select name="crBrand" id="crBrand" class="el-input__inner"
				style="margin-left: 80px; width: 15%;">
				<option value="">선택</option>
				<option value="bmw">bmw</option>
				<option value="아우디">아우디</option>
				<option value="기아">기아</option>
				<option value="현대">현대</option>
			</select>
			<input type="file" name="file_name" style="margin-left: 80px;">
	</div>
	<br>
	<br>
	<br>
	<div class="roundCheck" style="margin-left: 80px;">
			<div class="titLabel">차량옵션</div>
			<div class="item">
				<div class="input__check">
					<input class="form-check-input" type="checkbox" name="croSunRoof" id="c_o_sonRoof" value="선루프"> 
						<label class="form-check-label" for="c_o_sonRoof"><span></span> 선루프</label> 
					<input class="form-check-input" type="checkbox" name="croHiPass" id="c_o_hiPass" value="하이패스"> 
						<label class="form-check-label" for="c_o_hiPass"><span></span> 하이패스</label> 
					<input class="form-check-input" type="checkbox" name="croBackSensor" id="c_o_backSensor" value="후방센서"> 
						<label class="form-check-label" for="c_o_backSensor"><span></span> 후방센서</label> 
					<input class="form-check-input" type="checkbox" name="croCamera" id="c_o_camera"  value="후방카메라"> 
						<label class="form-check-label"for="c_o_camera"><span></span> 후방카메라</label>
					<input class="form-check-input" type="checkbox" name="croNavigation" id="c_o_navigation" value="네비게이션"> 
						<label class="form-check-label" for="c_o_navigation"><span></span> 네비게이션</label> 
					<input class="form-check-input" type="checkbox" name="croHandleHot" id="c_o_handleHot" value="핸들열선"> 
						<label class="form-check-label" for="c_o_handleHot"><span></span> 핸들열선</label> 
					<input class="form-check-input" type="checkbox" name="croAirBag" id="c_o_airback" value="에어백"> 
						<label class="form-check-label" for="c_o_airback"><span></span> 에어백</label> 
					<input class="form-check-input" type="checkbox" name="croSmartKey" id="c_o_smartKey" value="스마트키"> 
						<label class="form-check-label" for="c_o_smartKey"><span></span> 스마트키</label> 
					<input class="form-check-input" type="checkbox" name="croBlackBox" id="c_o_blackBox" value="블랙박스"> 
						<label class="form-check-label" for="c_o_blackBox"><span></span> 블랙박스</label>
				</div>

			</div>
		</div>
		<br><br>
		<hr>
		<br>
	<div class="searchTrigger box maxW400 el-row" style="margin-left: 700px;">
		<button class="button apply">확인</button>
	</div>
</form>

	

<%@ include file="/WEB-INF/default/footer.jsp" %>

</body>
</html>