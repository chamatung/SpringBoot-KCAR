//정렬기능
var dropdownAlignment;
var alignment;
var alignmentMethod;
var alignCnt = 0;
var alignmentClick = function(){
	dropdownAlignment = document.querySelector('.el-select-dropdown.el-popper');
	alignment = document.getElementById('alignment');
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

var alignmentMethodCheck = function(alignMethod){
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
	alignment.value = alignMethod;
	if(alignMethod != alignmentHidden.value){
		alignmentHidden.value=alignMethod;
		send(alignMethod);
	}
}

var req;
var send = function(alignMethod){
	if(req == null){
		req = new XMLHttpRequest();
	}
	req.onreadystatechange = alignmentAjax;
	req.open('post','latelyCarAlignment');
	req.send(alignMethod);
}
function alignmentAjax(){
	if(req.readyState == 4 & req.status == 200){
		var ajaxAlignment = document.getElementById('ajaxAlignment');
		if(req.responseText != ""){
			ajaxAlignment.innerHTML = req.responseText;
		}
		latelyArr = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"];
	}
}

//리스트 체크박스
var cnt = 0;
var latelyArr = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"];
var agree = function(index){
	//버블링 방지
	if(cnt == 1) {
		cnt = 0;
		return;
	}
	cnt++;
	
	var el_checkbox = document.querySelectorAll('.el-checkbox');
	var el_checkbox__input = document.querySelectorAll('.el-checkbox__input');
	var el_checkbox__original = document.querySelectorAll('.el-checkbox__original');

	const is_checked = el_checkbox__original[index].checked;
	
	var checkAll = el_checkbox__original[0];
	
	if(index == 0){
		if(checkAll.checked == false){
			for(var i = 0;i<el_checkbox.length;i++){
				if(el_checkbox[i].classList.contains('is-checked') == false){
					el_checkbox[i].classList.add('is-checked');	
					el_checkbox__input[i].classList.add('is-checked');
					el_checkbox__original[i].checked = true;
				}
				if(i > 0){
					latelyArr[i-1] = el_checkbox__original[i].value;
				}
			}
		}else{
			for(var i = 0; i<el_checkbox.length;i++){
				if(el_checkbox[i].classList.contains('is-checked')){
					el_checkbox[i].classList.remove('is-checked');	
					el_checkbox__input[i].classList.remove('is-checked');
					el_checkbox__original[i].checked = false;
				}
				if(i > 0){
					latelyArr[i-1] = "0";
				}
			}
		}
		return;
	}
	if(is_checked == false){
		el_checkbox[index].classList.add('is-checked');	
		el_checkbox__input[index].classList.add('is-checked');
		latelyArr[index-1] = el_checkbox__original[index].value;
	}else{
		el_checkbox[index].classList.remove('is-checked');	
		el_checkbox__input[index].classList.remove('is-checked');
		if(el_checkbox[0].classList.contains('is-checked')){
			el_checkbox[0].classList.remove('is-checked');
			el_checkbox__input[0].classList.remove('is-checked');
			el_checkbox__original[0].checked = false;
		}
		
		latelyArr[index-1] = "0";
	}
}
var deleteLatelyCar = function(){
	alignmentHidden = document.getElementById('alignmentHidden');
	if(req == null){
		req = new XMLHttpRequest();
	}
	req.onreadystatechange = alignmentAjax;
	req.open('post','latelyCarDelete');
	var data = {
		alignmentHidden : alignmentHidden.value,
		deleteLatelyCarList : latelyArr.toString()
	}
	
	data = JSON.stringify(data);
			req.setRequestHeader('Content-Type','application/json; charset=UTF-8');
	
	req.send(data);
}
