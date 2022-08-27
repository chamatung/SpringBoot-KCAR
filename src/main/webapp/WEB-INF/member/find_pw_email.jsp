<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ko" data-n-head="%7B%22lang%22:%7B%22ssr%22:%22ko%22%7D%7D">
<head>
<title>K Car - 직접 매입 직접 판매하는 대한민국 No.1 직영 중고차 케이카</title>

</head>

<%@ include file="home_style.jsp" %>
<script type="text/javascript">
var req;
function printMsg(){
	var msg = document.getElementById('msg');
	msg.innerHTML = req.responseText;
}

function sendAuth(){
	req = new XMLHttpRequest();
	req.onreadystatechange = printMsg;
	req.open('post', 'sendAuth');
	req.send(document.getElementById('email').value);
}
function checkAuth(){
	req = new XMLHttpRequest();
	req.onreadystatechange = printMsg;
	req.open('post', 'checkAuth');
	req.setRequestHeader("Content-Type", "application/json; charset=UTF-8");
	var number = document.getElementById('authNumber').value;
	var data = {authNumber:number};
	data = JSON.stringify(data);
	req.send(data);
}


</script>
<body>

	
	<div id="__nuxt">
		<!---->
		<div id="__layout">
			<div id="app">
				<div class="contentsWrap">
					<form action="find_pw_email" method="post">
					<div class="logListWrap loginCenter">
						<h1 class="kcarLogo" style="cursor: pointer;">K car logo</h1>
						<h3>비밀번호 찾기(이메일 인증)</h3>
						
						<br>
<!-- 						<form action="mailcheck" method="post"> -->
					
						<div class="el-form-item">
									<!---->
									<div class="el-form-item__content">
										<div class="titLabel">E-Mail</div>
										<div class="flexbox">
											<div class="el-input el-input--suffix">
												<!---->
												<input type="text"  placeholder="E-Mail 입력" name='email' id="email"
													class="el-input__inner">
												<!---->
												<!---->
												<!---->
												<!---->
											</div>
											<button type="button" onclick="sendAuth()"
												class="el-button checkBtn el-button--default">
												<!---->
												<!---->
												<span> 인증번호 전송 </span>
											</button>
										</div>
										<div class="annotation">
										<h3>
											<font color="red" id="msg">${msg } </font>
										</h3>
											<span>※ 영문, 숫자를 조합해서 입력해 주세요.(4~12자)</span>
										</div>
										<!---->
									</div>
								</div>
									<div class="el-form-item">
									<!---->
									<div class="el-form-item__content">
										<div class="titLabel">인증번호</div>
										<div class="flexbox">
											<div class="el-input el-input--suffix">
												<!---->
												<input type="text" name='authNum' placeholder='인증번호 입력' id="authNumber"
													class="el-input__inner">
												<!---->
												<!---->
												<!---->
												<!---->
											</div>
											<button type="button" onclick="checkAuth()"
												class="el-button checkBtn el-button--default">
												<!---->
												<!---->
												<span> 인증번호 확인 </span>
											</button>
										</div>
										
										<!---->
									</div>
								</div>
								<div class="footerBtnWrap">
						<div class="searchTrigger box maxW400 el-row">
							<button class="button apply" onclick ="location.href='mailcheck'">비밀번호 찾기</button>
						</div>
					</div>
					</form>
					<div class="descFooter">
						※ 본인인증이 어려우시다면, K Car 고객센터(<span class="tel">1588-5455</span>)로
						문의해 주세요.
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>