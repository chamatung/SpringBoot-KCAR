<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="loginstyle_input.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>너무 어려워 보여용</title>
</head>
<body>
<%@ include file="/WEB-INF/default/admin_header.jsp" %>
<h2>중간다리</h2>

<br>
<form action="car_update" method="post" enctype="multipart/form-data">
<div class="el-input el-input--suffix" >
<div class="titLabel"><span style="margin-left: 80px;">차번호</span> <span style="margin-left: 330px;">제조사모델명</span> 
<span style="margin-left: 280px;">쥬행거리</span> <span style="margin-left: 310px;">판매자num</span> <span style="margin-left: 290px;">판매자email</span></div>
<input type="text" value="${list.s_r_num }" name="s_r_num" class= "el-input__inner" style="margin-left: 80px;">
<input type="text" value="${list.s_r_model }" name="s_r_model" class= "el-input__inner" style="margin-left: 80px;">
<input type="text" value="${list.s_r_distance }" name ="s_r_distance" class= "el-input__inner" style="margin-left: 80px;">
<input type="text" value="${list.m_id }" name="m_id" class= "el-input__inner" style="margin-left: 80px;">
<input type="text" value="${list.m_email }" name="m_email" class= "el-input__inner" style="margin-left: 80px;">
</div>
<br>
제조사명
<select name="cb_brand" id="cb_brand">
	<option value="현대">현대</option>
	<option value="제네시스">제네시스</option>
	<option value="기아">기아</option>
	<option value="쉐보레">쉐보레</option>
	<option value="르노코리아">르노코리아</option>
	<option value ="쌍용">쌍용</option>
	<option value="벤츠">벤츠</option>
	<option value="BMW">BMW</option>
	<option value="아우디">아우디</option>
	<option value="폭스바겐">폭스바겐</option>
	<option value="테슬라">테슬라</option>
</select>
차종
<select name="c_model" id="c_model">
	<option value="경차">경차</option>
	<option value="소형차">소형차</option>
	<option value="준중형차">준중형차</option>
	<option value="중형차">중형차</option>
	<option value="대형차">대형치</option>
	<option value="스포츠카">스포츠카</option>
	<option value="SUV">SUV</option>
	<option value="승합차">승합차</option>
</select>
<br>
<br>

연식<input type ="text" placeholder="연식" name="c_year" class= "el-input__inner">
가격<input type ="text" placeholder ="가격" name="c_price" class= "el-input__inner">
색상
<select name = "c_color">
	<option value="흰색">흰색</option>
	<option value="검정색">검정색</option>
	<option value="쥐색">쥐색</option>
	<option value="은색">은색</option>
	<option value="빨간색">빨간색</option>
	<option value="주황색">주황색</option>
	<option value="파란색">파란색</option>
	<option value="노란색">노란색</option>
</select>
연료
<select name="c_fuel">
	<option value="가솔린">가솔린</option>	
	<option value="디젤">디젤</option>	
	<option value="LPG">LPG</option>	
	<option value="하이브리드">하이브리드</option>	
	<option value="전기">전기</option>	
</select>
변속
<select name="c_change">
	<option value="오토">오토</option>
	<option value="수동">수동</option>
</select>
사고유무
<select name="c_acident">
	<option value="무사고">무사고</option>
	<option value="단순수리">단순수리</option>
	<option value="사고">사고</option>
</select>
인승
<select name="c_seat">
	<option value="4">4인승</option>
	<option value="5">5인승</option>
	<option value="7">7인승</option>
	<option value="9">9인승</option>
	<option value="11">11인승</option>
	<option value="15">15인승</option>
</select>
<br>
<br>
직영점
<select name="st_name" id="st_name">
	
	<option value="강남점">강남점</option>
	<option value="노량진점">노량진점</option>
	<option value="홍대점">홍대점</option>
	<option value="건대점">건대점</option>
</select>

담당자 이메일<input type="text" placeholder="담당자 이메일" name="m_email" class= "el-input__inner">
사진 첨부 <input type="file" name="file_name">
<br>
<br>
차량옵션
<br>
<input type="checkbox" value="선루프" name="c_o_sonRoof">선루프
<input type="checkbox" value="하이패스" name="c_o_hiPass">하이패스
<input type="checkbox" value="후방센서" name="c_o_backSensor">후방센서
<input type="checkbox" value="후방카메라" name="c_o_camera">후방카메라
<input type="checkbox" value="네비게이션" name="c_o_navigation">네비게이션
<input type="checkbox" value="핸들열선" name="c_o_handleHot">핸들열선
<input type="checkbox" value="에어백" name="c_o_airback">에어백
<input type="checkbox" value="스마트키" name="c_o_smartKey">스마트키
<input type="checkbox" value="블랙박스" name="c_o_blackBox">블랙박스
<br>
<br>
차추천이유<textarea rows="30" cols="30" name="c_i_recommend"></textarea>
진단결과<textarea rows="30" cols="30" name="c_i_summary"></textarea>
차량 특이사항<textarea rows="30" cols="30" name="c_i_history"></textarea>
차량 보험<textarea rows="30" cols="30" name="c_i_insurance"></textarea>
<br>
<br>
태그
<br>
<br>
<input type="checkbox" value="브랜드인증" name="c_t_certified">브랜드인증
<input type="checkbox"  value="짧은km" name="c_t_distance">짧은km
<input type="checkbox"  value="신차급" name="c_t_newCar">신차급
<input type="checkbox"  value="륜구동" name="c_t_fourWheel">4륜구동
<input type="checkbox"  value="제조사as" name="c_t_maintenance">제조사as
<input type="checkbox"  value="1인 소유자" name="c_t_oneOwner">1인 소유자
<input type="checkbox"  value="톡옵션" name="c_t_specialOption">톡옵션
<input type="checkbox"  value="렌트" name="c_t_rent">렌트

<br>
<button>확인</button>
</form>

	
<%@ include file="/WEB-INF/default/footer.jsp" %>


</body>
</html>