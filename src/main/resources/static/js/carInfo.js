//월 할부금 값 가져오기
var rateCheck = function(result, num) {
	var result7 = document.getElementById('hidden7').value;
	var result8 = document.getElementById('hidden8').value;
	var result9 = document.getElementById('hidden9').value;
	var result11 = document.getElementById('hidden11').value;
	var result13 = document.getElementById('hidden13').value;
	
	if (num == '7' & result7 != "null") {
		console.log(result7)
		var monthResult = document.getElementById('monthResult');
		monthResult.innerHTML = Math.floor(result7 * 10000) + '원';
		return;
	}
	if (num == '8' & result8 != "null") {
		console.log('8')
		var monthResult = document.getElementById('monthResult');
		monthResult.innerHTML = Math.floor(result8 * 10000) + '원';
		return;
	}
	if (num == '9' & result9 != "null") {
		console.log('9')
		var monthResult = document.getElementById('monthResult');
		monthResult.innerHTML = Math.floor(result9 * 10000) + '원';
		return;
	}
	if (num == '11' & result11 != "null") {
		console.log('11')
		var monthResult = document.getElementById('monthResult');
		monthResult.innerHTML = Math.floor(result11 * 10000) + '원';
		return;
	}
	if (num == '13' & result13 != "null") {
		console.log('13')
		var monthResult = document.getElementById('monthResult');
		monthResult.innerHTML = Math.floor(result13 * 10000) + '원';
		return;
	}
	var monthResult = document.getElementById('monthResult');
	monthResult.innerHTML = result + '원';
}
	
//modal창
var modalMenu = document.getElementById('modalMenu');
var modalMenuBack = document.getElementById('modalMenuBack');
var modalMail = document.getElementById('modalMail');

var shareModalOpen = function(){
	if(document.body.classList.contains('el-popup-parent--hidden') == false){
		document.body.classList.add('el-popup-parent--hidden');
	}
	modalMail.style.display="none";
	modalMenu.style.display="flex";
	modalMenuBack.style.display="flex";
}
var shareModalClose = function(){
	modalMenu.style.display="none";
	modalMenuBack.style.display="none";
	modalMail.style.display="none";
	document.body.classList.remove('el-popup-parent--hidden');
}

var modalMailOpen = function(){
	modalMenu.style.display="none";
	modalMail.style.display="flex";
}

//복사기능
var site = document.getElementById('siteVal');
var copySite = function(){
	//var hiddenFocus = document.getElementById('hiddenFocus');
	site.select();
	site.setSelectionRange(0,99999);
	document.execCommand("copy");
	//setTimeout(hiddenFocus.focus(), 2000);
	alert('주소가 복사되었습니다.');
}
//이메일주소 select option
var dropdownAlignment;
// var alignment;
var alignmentMethod;
var alignCnt = 0;
var alignmentClick = function(){
	dropdownAlignment = document.querySelector('.el-select-dropdown.el-popper');
// 	alignment = document.getElementById('alignment');
	alignmentMethod = document.getElementById('alignmentMethod');
	alignCnt ++;
	if(alignCnt % 2 != 0){
		dropdownAlignment.style.display = "block"
		alignmentMethod.style.display = "block";
		alignmentMethod.style.alignContent = "flex-start";
		alignmentMethod.style.flexDirection = "column";
		alignmentMethod.style.flexWrap = "wrap";
		alignmentMethod.style.overFlow = "auto";
	}else{
		alignmentMethod.style.remove = "display"
		alignmentMethod.style.remove = "alignContent"
		alignmentMethod.style.remove = "flexDirection"
		alignmentMethod.style.remove = "flexWrap"
		alignmentMethod.style.remove = "overFlow"
		dropdownAlignment.style.display = "none"
	}
}
//이메일 select option 선택시 
var email1 = document.getElementById('email1');
var email2 = document.getElementById('email2');
var email = function(site){
	dropdownAlignment = document.querySelector('.el-select-dropdown.el-popper');
	alignment = document.getElementById('alignment');
	alignmentMethod = document.getElementById('alignmentMethod');
	
	alignCnt ++;
	alignmentMethod.style.remove = "display"
	alignmentMethod.style.remove = "alignContent"
	alignmentMethod.style.remove = "flexDirection"
	alignmentMethod.style.remove = "flexWrap"
	alignmentMethod.style.remove = "overFlow"
	dropdownAlignment.style.display = "none"
	if(!site){
		email2.disabled = false;
		email2.value = "";
		email2.focus();
		alignment.value = null;
		return;
	}
	alignment.value = site;
	email2.value = site;
	email2.disabled = true;
	
}
//글자수 제한
var emailContent;
var counter;
var countWord = function(){
	emailContent = document.getElementById('emailContent');
	counter = document.getElementById('counter');
	var contentLength = emailContent.value.length;
	counter.innerHTML = "("+contentLength+"/<span data-v-6538404c=\"\">2,000</span>자)";
	if(contentLength>10){
		emailContent.blur();
		emailContent.value = emailContent.value.substring(0,10);
		emailContent.focus();
		counter.innerHTML = "("+10+"/<span data-v-6538404c=\"\">2,000</span>자)";
		
	}
}

//email send
var req;
var emailSend = function(){
	
	var carNum = document.getElementById('carNum');
	var emailName = document.getElementById('name');
	var email1 = document.getElementById('email1');
	var email2 = document.getElementById('email2');
	var emailContent = document.getElementById('emailContent');

	//여기서 필수정보인 이름 이메일주소가 없으면 알림창 띄우고 return필요
	
	if(req == null){
		req = new XMLHttpRequest();
	}
	req.onreadystatechange = sendSucess;
	req.open('post','emailSend');
	var data = {
		name : emailName.value,
		email : email1.value + "@" + email2.value,
		content : emailContent.value,
		carNum : carNum.value
	}
	data = JSON.stringify(data);
	req.setRequestHeader('Content-Type', 'application/json; charset=UFT-8');
	req.send(data);
}
//메일 성공여부
var sendSucess = function(){
	if(req.readyState == 4 & req.status == 200){
		if(req.responseText == '성공'){
			alert('메일발송 완료');
		}else{
			alert('메일발송 실패');
		}
		
		
		modalMail.style.display="none";
		modalMenu.style.display="flex";
		modalMenuBack.style.display="flex";
	}
}

//동작안함,,
var shareKakao = function(){
	try {
	   Kakao.init('9ad7fe2c39172f9de2508087c8fe0f0c')
	   Kakao.Link.createDefaultButton({
	     container: '#shareKakao',
	     objectType: 'feed',
	       content: {
	         title: 'kcar차량정보',
	         description: 'kcar,브랜드,모델',
	       imageUrl:'http://mud-kage.kakao.co.kr/dn/NTmhS/btqfEUdFAUf/FjKzkZsnoeE4o19klTOVI1/openlink_640x640s.jpg',
	       link: {
	           mobileWebUrl: 'https://developers.kakao.com',
	           androidExecParams: 'test',
	       },
	     },
	     social: {
	       likeCount: 10,
	       commentCount: 20,
	       sharedCount: 30,
	     },
	     buttons: [
	       {
	         title: '웹으로 이동',
	         link: {
	           mobileWebUrl: document.location.href,
	         },
	       },
	       {
	         title: '앱으로 이동',
	         link: {
	           mobileWebUrl: document.location.href,
	         },
	       },
	     ]
	   });
	 ; window.kakaoDemoCallback && window.kakaoDemoCallback() 
	} catch(e) { window.kakaoDemoException && window.kakaoDemoException(e) }
}