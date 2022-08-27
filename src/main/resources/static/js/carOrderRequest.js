// text활성화
var m_name = document.getElementById('name');
var m_tel = document.getElementById('tel');
var nameCnt = 0;
var nameChange = function(){
	if(nameCnt == 1){
		return;
	}
	nameCnt ++;
	var is_disabled = document.querySelectorAll('.el-input.is-disabled');
	is_disabled[0].classList.remove('is-disabled');
	is_disabled[1].classList.remove('is-disabled');
	m_name.disabled = false;	
	m_tel.disabled = false;	
}
//약관동의	
var el_checkbox = document.querySelectorAll('.el-checkbox');
var el_checkbox__input = document.querySelectorAll('.el-checkbox__input');
var el_checkbox__original = document.querySelectorAll('.el-checkbox__original');
var cnt = 0;
var agree = function(index){
	if(cnt == 1) {
		cnt = 0;
		return;
	}
	cnt++;
	const check = el_checkbox__original[index];
	const is_checked = check.checked;
	
	if(index == 1){
		if(is_checked == false){
			for(var i = 1;i<el_checkbox.length;i++){
				if(el_checkbox[i].classList.contains('is-checked') == false){
					el_checkbox[i].classList.add('is-checked');	
					el_checkbox__input[i].classList.add('is-checked');	
				}
			}
		}else{
			for(var i = 1; i<el_checkbox.length;i++){
				if(el_checkbox[i].classList.contains('is-checked')){
					el_checkbox[i].classList.remove('is-checked');	
					el_checkbox__input[i].classList.remove('is-checked');	
				}
			}
		}
		return;
	}
	if(index == 5){
		if(is_checked == false){
			for(var i = 5;i<el_checkbox.length-1;i++){
				if(el_checkbox[i].classList.contains('is-checked') == false){
					el_checkbox[i].classList.add('is-checked');	
					el_checkbox__input[i].classList.add('is-checked');	
				}
			}
		}else{
			for(var i = 5; i<el_checkbox.length-1;i++){
				if(el_checkbox[i].classList.contains('is-checked')){
					el_checkbox[i].classList.remove('is-checked');	
					el_checkbox__input[i].classList.remove('is-checked');	
				}
			}
		}
		return;
	}
	if(is_checked == false){
		el_checkbox[index].classList.add('is-checked');	
		el_checkbox__input[index].classList.add('is-checked');	
	}else{
		el_checkbox[index].classList.remove('is-checked');	
		el_checkbox__input[index].classList.remove('is-checked');	
	}
}
//주문신청하기
var orderRequest = function(){
	for(var i = 2; i < 5; i++){
		if(el_checkbox__original[i].checked == false){
			alert('필수 동의항목에 체크해주세요');
			return;
		}
	}
	var addr1 = document.getElementById('addr1').disabled = false;	
	var zipcode = document.getElementById('zipcode').disabled = false;	
	document.getElementById('detailF').submit();
}