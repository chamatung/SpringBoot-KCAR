<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<c:if test="${not empty msg }">
	<script>
		alert("${msg}");
	</script>
</c:if>
</head>
<body>
<%@ include file="/WEB-INF/default/admin_header.jsp" %>
<h1 align="center">관리자 페이지</h1>
<%@ include file="/WEB-INF/default/footer.jsp" %>

</body>
</html>