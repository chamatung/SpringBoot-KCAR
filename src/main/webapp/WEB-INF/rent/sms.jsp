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
 margin : 0 auto;
 vertical-align:middle;
 }
#in {
 display: inline-block;
 }
</style>
<title>문자인증</title>
</head>
<body>
	<div id="contents" class="contents"> 
		<p class="textBox"><span>
 			${rentUsedInfo.crBrand } ${rentUsedInfo.crName } ${rentUsedInfo.crGrade } 
				
		</span></p>
		
		<div class="el-form-item__content">
			<div class="titLabel">신청자명</div>
			<div class="el-input el-input--suffix">
				<input type="text" placeholder="db값 이름" class="el-input__inner">
			</div>
		</div>
		
		<div class="el-form-item__content">
			<div class="titLabel">휴대폰번호</div>
			<div class="el-input el-input--suffix">
				<input type="text" id="to" name="to" placeholder="예) 01012341234"/>
			</div>
		</div>
		<br><button type="button" id="send">신청</button><br> <!-- 문자보내는 전송버튼 -->
    </div>
</body>

<script type="text/javascript">
$('#send').click(function() {
	
	const to = $('#to').val();
	
	$.ajax ({
		url: 'sms/sendSMS',
		type: 'GET',
		data: {
			"to" : to
		},
		success: function(data) {
			const checkNum = data;//to로 받아온 데이터
			alert('메세지 전송'+ checkNum);
			
		}
	});
	
});
</script>

</html>