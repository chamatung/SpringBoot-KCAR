<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>너무 어려워 보여용</title>
</head>
<body>
<%@include file="/WEB-INF/default/admin_header.jsp" %>
<h2>중간다리</h2>

<br>
<form action="rent_update" method="post" enctype="multipart/form-data">
차번호<input type="text" name="crNumber" placeholder="166호3207">
개월수<input type="text" name="crMonth" placeholder="24개월">
초기납입금<input type="text" name="crFirstPrice" placeholder="396만원">
배기량<input type="text" name="crCc" placeholder="2,497cc">
제조사 모델명<input type="text" name="crName" placeholder="소나타">
신차가<input type="text" name="crNewPrice" placeholder="4,333만원">
주행거리<input type="text" name ="crDistance" placeholder="83,111km">
<br>
등급<input type="text" name ="crGrade" placeholder="가솔린2.5">
연식<input type ="text" name="crYear" placeholder="22년12월">
가격<input type ="text" name="crPrice " placeholder="50만원">
색상<input type ="text" name="crColor" placeholder="빨간색">
연료<input type ="text" name="crFuel" placeholder="가솔린">
변속<input type ="text" name="crMission" placeholder="오토">
제조사명
<select name="crBrand" id="crBrand">
	<option value="bmw">bmw</option>
	<option value="아우디">아우디</option>
	<option value="기아">기아</option>
	<option value="현대">현대</option>
</select>
<br>
<br>
사진 첨부 <input type="file" name="file_name">
<br>
<br>
차량옵션
<br>
<input type="checkbox" value="선루프" name="croSunRoof">선루프
<input type="checkbox" value="하이패스" name="croHiPass">하이패스
<input type="checkbox" value="후방센서" name="croBackSensor">후방센서
<input type="checkbox" value="후방카메라" name="croCamera">후방카메라
<input type="checkbox" value="네비게이션" name="croNavigation">네비게이션
<input type="checkbox" value="핸들열선" name="croHandleHot">핸들열선
<input type="checkbox" value="에어백" name="croAirBag">에어백
<input type="checkbox" value="스마트키" name="croSmartKey">스마트키
<input type="checkbox" value="블랙박스" name="croBlackBox">블랙박스



<button>확인</button>
</form>

	

<%@ include file="/WEB-INF/default/footer.jsp" %>

</body>
</html>