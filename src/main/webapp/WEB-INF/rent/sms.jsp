<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> -->

<style>
#contents {
	width: 100%;
	text-align: center;
	margin: 0 auto;
	vertical-align: middle;
}

.el-input .el-input__inner {
    height: 40px;
    width: 200px;
    line-height: 5.6rem;
    font-size: 1.6rem !important;
    border: 1px solid #d8dee8;
    border-radius: 10px;
    font-family: "Spoqa Han Sans Neo";
    font-weight: 300;
    line-height: 1.43;
}

.annotation, .titLabel {
	font-size: 1.4rem;
	line-height: 1.43;
}

.titLabel {
	font-weight: 800;
	color: #b32b24;
	
}

.searchTrigger .button.apply {
    color: #fff;
    background: #b70f28;
    width: 100px;
    height: 40px;
    border-radius: 10px;
}
.popup .searchTrigger .button {
    height: 4.8rem;
    max-width: 25rem;
    min-width: 10.4rem;
    padding-left: 1.6rem;
    padding-right: 1.6rem;
    width: 32rem;
}

table {
	margin: auto;
}
</style>
<title>상담예약신청</title>
</head>
<body>

	<div id="contents" class="contents">
		<h3>상담예약신청</h3>
<table>
	<tr>
		<td><div class="titLabel">신청자명</div></td>
		<td style="width: 3px;"></td>
		<td><div class="el-input el-input--suffix">
				<input type="text" placeholder="예)홍길동" class="el-input__inner"
					id="name">
			</div>
		</td>
	</tr>
	<tr style="height: 20px;"></tr>
	<tr>
		<td><div class="titLabel">휴대폰번호</div></td>
		<td style="width: 3px;"></td>
		<td><div class="el-input el-input--suffix">
				<input type="text" id="to" name="to" placeholder="예) 01012341234"
					class="el-input__inner" />
			</div></td>
	</tr>

</table>
		<!-- <div class="el-form-item__content">
			<div class="titLabel">신청자명</div>
			<div class="el-input el-input--suffix">
				<input type="text" placeholder="예)홍길동" class="el-input__inner"
					id="name">
			</div>
		</div>

		<div class="el-form-item__content">
			<div class="titLabel">휴대폰번호</div>
			<div class="el-input el-input--suffix">
				<input type="text" id="to" name="to" placeholder="예) 01012341234"
					class="el-input__inner" />
			</div>
		</div> -->
		<br>
		<div class="searchTrigger box Large popFixBtnM el-row">
			<button class="button apply" id="send" onclick="check1()">신청</button>
		</div>
		<!-- 문자보내는 전송버튼 -->
	</div>

</body>

<script type="text/javascript">
	var req;

	var check1 = function() {
		var to = document.getElementById('to');
		var name = document.getElementById('name');

		req = new XMLHttpRequest();
		req.onreadystatechange = sendSMS1;
		req.open('post', 'sms/sendSMS');
		var data = {
			to : to.value,
			name : name.value
		}
		data = JSON.stringify(data);
		req.setRequestHeader('Content-Type', 'application/json; charset=UTF-8');
		req.send(data);
	}

	var sendSMS1 = function() {
		var to = document.getElementById('to');
		if (req.readyState == 4 & req.status == 200) {
			alert('메세지 전송' + req.responseText);
			window.location.assign('http://localhost/sms');
		}
	}
</script>

</html>