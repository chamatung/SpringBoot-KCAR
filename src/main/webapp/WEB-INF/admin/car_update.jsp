<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="loginstyle_input.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>내차팔기 신청관리</title>
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
</style>
</head>
<body>


<br>

	<%@ include file="/WEB-INF/default/admin_header.jsp"%>
	<div class="titLabel" align="center"><h2>판매 차량 추가 입력</h2></div>
	<br>
	<hr>

	<br>
	<form action="car_update" method="post" enctype="multipart/form-data">
		<div class="el-input el-input--suffix">
			<div class="titLabel">
				<span style="margin-left: 80px;">차번호</span> <span
					style="margin-left: 330px;">제조사모델명</span> <span
					style="margin-left: 280px;">주행거리</span> <span
					style="margin-left: 310px;">판매자num</span> <span
					style="margin-left: 290px;">판매자email</span>
			</div>
			<input type="text" value="${list.s_r_num }" name="s_r_num"
				class="el-input__inner" style="margin-left: 80px;"> 
				
				<input type="text" value="${list.s_r_model }" name="s_r_model"
				class="el-input__inner" style="margin-left: 80px;"> 
				
				<input type="text" value="${list.s_r_distance }" name="s_r_distance"
				class="el-input__inner" style="margin-left: 80px;"> 
				
				<input type="text" value="${list.m_id }" name="m_id"
				class="el-input__inner" style="margin-left: 80px;"> 
				
				<input type="text" value="${list.m_email }" name="m_email"
				class="el-input__inner" style="margin-left: 80px;">
				
		</div>
		<br> <br>
		<div class="titLabel">
			<span style="margin-left: 80px;">제조사명</span> <span
				style="margin-left: 310px;">차종</span> <span
				style="margin-left: 340px;">연식</span> <span
				style="margin-left: 340px;">가격</span> <span
				style="margin-left: 340px;">색상</span>
		</div>
		<div class="el-input el-input--suffix">
			<select name="cb_brand" id="cb_brand" class="el-input__inner"
				style="margin-left: 80px;">
				<c:forEach var="brand" items="${brandList }">
					<option value="${brand.cb_brand }">${brand.cb_brand }</option>
				</c:forEach>
			</select> <select name="c_model" id="c_model" class="el-input__inner"
				style="margin-left: 80px;">
				<option value="경차">경차</option>
				<option value="소형차">소형차</option>
				<option value="준중형차">준중형차</option>
				<option value="중형차">중형차</option>
				<option value="대형차">대형치</option>
				<option value="스포츠카">스포츠카</option>
				<option value="SUV">SUV</option>
				<option value="승합차">승합차</option>
			</select> <input type="text" placeholder="연식" name="c_year"
				class="el-input__inner" style="margin-left: 80px;"> <input
				type="text" placeholder="가격" name="c_price" class="el-input__inner"
				style="margin-left: 80px;"> <select name="c_color"
				class="el-input__inner" style="margin-left: 80px;">
				<option value="흰색">흰색</option>
				<option value="검정색">검정색</option>
				<option value="쥐색">쥐색</option>
				<option value="은색">은색</option>
				<option value="빨간색">빨간색</option>
				<option value="주황색">주황색</option>
				<option value="파란색">파란색</option>
				<option value="노란색">노란색</option>
			</select>
		</div>
		<br> <br>
		<div class="el-input el-input--suffix">
			<div class="titLabel">
				<span style="margin-left: 80px;">연료</span><span
					style="margin-left: 340px;">변속</span><span
					style="margin-left: 350px;">사고유무</span> <span
					style="margin-left: 300px;">인승</span><span
					style="margin-left: 350px;">직영점</span>
			</div>
			<select name="c_fuel" class="el-input__inner"
				style="margin-left: 80px;">
				<option value="가솔린">가솔린</option>
				<option value="디젤">디젤</option>
				<option value="LPG">LPG</option>
				<option value="하이브리드">하이브리드</option>
				<option value="전기">전기</option>
			</select> <select name="c_change" class="el-input__inner"
				style="margin-left: 80px;">
				<option value="오토">오토</option>
				<option value="수동">수동</option>
			</select> <select name="c_acident" class="el-input__inner"
				style="margin-left: 80px;">
				<option value="무사고">무사고</option>
				<option value="단순수리">단순수리</option>
				<option value="사고">사고</option>
			</select> <select name="c_seat" class="el-input__inner"
				style="margin-left: 80px;">
				<option value="4">4인승</option>
				<option value="5">5인승</option>
				<option value="7">7인승</option>
				<option value="9">9인승</option>
				<option value="11">11인승</option>
				<option value="15">15인승</option>
			</select> <select name="st_name" id="st_name" class="el-input__inner"
				style="margin-left: 80px;">
				<c:forEach var="st" items="${stList }">
					<option value="${st.st_name }">${st.st_name }</option>
				</c:forEach>
			</select> <br> <br>
		</div>
		<div class="el-input el-input--suffix">
			<div class="titLabel">
				<span style="margin-left: 80px;">담당자 이메일</span><span
					style="margin-left: 340px;">사진 첨부</span>
			</div>
			<input type="text" placeholder="담당자 이메일" name="admin_email"
				class="el-input__inner" style="margin-left: 80px;"> <input
				type="file" name="file_name" style="margin-left: 80px;">
		</div>
		<br> <br>
		<div class="roundCheck" style="margin-left: 80px;">
			<div class="titLabel">차량옵션</div>
			<br>



			<div class="item">
				<div class="input__check">
					<input class="form-check-input" type="checkbox" name="c_o_sonRoof" value="선루프"
						id="c_o_sonRoof"> <label class="form-check-label"
						for="c_o_sonRoof"><span></span> 선루프</label> <input
						class="form-check-input" type="checkbox" name="c_o_hiPass" value="하이패스"
						id="c_o_hiPass"> <label class="form-check-label"
						for="c_o_hiPass"><span></span> 하이패스</label> <input
						class="form-check-input" type="checkbox" name="c_o_backSensor" value="후방센서"
						id="c_o_backSensor"> <label class="form-check-label"
						for="c_o_backSensor"><span></span> 후방센서</label> <input
						class="form-check-input" type="checkbox" name="c_o_navigation" value="네비게이션"
						id="c_o_navigation"> <label class="form-check-label"
						for="c_o_navigation"><span></span> 네비게이션</label> <input
						class="form-check-input" type="checkbox" name="c_o_handleHot" value="핸들열선"
						id="c_o_handleHot"> <label class="form-check-label"
						for="c_o_handleHot"><span></span> 핸들열선</label> <input
						class="form-check-input" type="checkbox" name="c_o_airback" value="에어백"
						id="c_o_airback"> <label class="form-check-label"
						for="c_o_airback"><span></span> 에어백</label> <input
						class="form-check-input" type="checkbox" name="c_o_smartKey" value="스마트키"
						id="c_o_smartKey"> <label class="form-check-label"
						for="c_o_smartKey"><span></span> 스마트키</label> <input
						class="form-check-input" type="checkbox" name="c_o_blackBox" value="블랙박스"
						id="c_o_blackBox"> <label class="form-check-label"
						for="c_o_blackBox"><span></span> 블랙박스</label>
				</div>





			</div>
		</div>


		<br> <br>
		<div class="roundCheck" style="margin-left: 80px;">
			<div class="titLabel">태그</div>
			<br>
		
		<div class="item">
				<div class="input__check">
					<input class="form-check-input" type="checkbox" name="c_t_certified" value="브랜드인증"
						id="c_t_certified"> <label class="form-check-label"
						for="c_t_certified"><span></span> 브랜드인증</label> <input
						class="form-check-input" type="checkbox" name="c_t_distance" value="짧은km"
						id="c_t_distance"> <label class="form-check-label"
						for="c_t_distance"><span></span> 짧은km</label> <input
						class="form-check-input" type="checkbox" name="c_t_newCar" value="신차급"
						id="c_t_newCar"> <label class="form-check-label"
						for="c_t_newCar"><span></span> 신차급</label> <input
						class="form-check-input" type="checkbox" name="c_t_fourWheel" value="4륜구동"
						id="c_t_fourWheel"> <label class="form-check-label"
						for="c_t_fourWheel"><span></span> 4륜구동</label> <input
						class="form-check-input" type="checkbox" name="c_t_maintenance" value="제조사as"
						id="c_t_maintenance"> <label class="form-check-label"
						for="c_t_maintenance"><span></span> 제조사as</label> <input
						class="form-check-input" type="checkbox" name="c_t_oneOwner" value="1인 소유자"
						id="c_t_oneOwner"> <label class="form-check-label"
						for="c_t_oneOwner"><span></span> 1인 소유자</label> <input
						class="form-check-input" type="checkbox" name="c_t_specialOption" value="톡옵션"
						id="c_t_specialOption"> <label class="form-check-label"
						for="c_t_specialOption"><span></span> 톡옵션</label> <input
						class="form-check-input" type="checkbox" name="c_t_rent" value="렌트"
						id="c_t_rent"> <label class="form-check-label"
						for="c_t_rent"><span></span> 렌트</label>
				</div>


	</div>


			</div>
			<br><br>
		<table style="margin-left: 80px;">
			<tr >
				<td >차추천이유</td>
				<td style="width: 300px;"></td>
				<td>진단결과</td>
			</tr>
			
			<tr>
				<td><textarea rows="6" cols="80" name="c_i_recommend"
						class="el-textarea__inner"></textarea></td>
						<td style="width: 300px;"></td>
				<td><textarea rows="6" cols="80" name="c_i_summary"
						class="el-textarea__inner"></textarea></td>
			</tr>
			<tr>
			<td height="30px;"></td>
			</tr>
			<tr>
				<td>차량 특이사항</td>
				<td style="width: 300px;"></td>
				<td>차량 보험</td>
			</tr>
			<tr>
				<td><textarea rows="6" cols="80" name="c_i_history"
						class="el-textarea__inner"></textarea></td>
						<td style="width: 300px;"></td>
				<td><textarea rows="6" cols="80" name="c_i_insurance"
						class="el-textarea__inner"></textarea></td>
			</tr>
		</table>

		<br> <br> 
		
		<hr>
		<br>
	<div class="searchTrigger box maxW400 el-row" style="margin-left: 700px;">
		<button class="button apply">확인</button>
	</div>
	</form>


	<%@ include file="/WEB-INF/default/footer.jsp"%>


</body>
</html>