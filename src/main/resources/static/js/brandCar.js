//paging 스크립트
var chorme = document.querySelector('.chrome');
var req;
let brandHidden = document.getElementById('brandHidden');
let modelHidden = document.getElementById('modelHidden');
let alignmentHidden = document.getElementById('alignmentHidden');
function send(data, currentPage) {
	req = new XMLHttpRequest();
	req.onreadystatechange = pageChange;
	req.open('post', 'brandCarPaging');
	var result = {
		data : data,
		currentPage : currentPage,
		brand : brandHidden.value,
		model : modelHidden.value, 
		alignment : alignmentHidden.value //정렬
		//alignmentMethod : modelHidden.value
	}
	result = JSON.stringify(result);
	req.setRequestHeader('Content-Type',
			'application/json; charset=UTF-8');
	req.send(result);
}

function pageChange() {
	if (req.readyState == 4 & req.status == 200) {
		var ajaxBrandAllListPage = document.getElementById('ajaxBrandAllListPage');
		ajaxBrandAllListPage.innerHTML = req.responseText;
		ajaxBrandAllListPage.scrollIntoView({
			behavior : "smooth",
			block : "start",
			inline : "nearest"
		}); // ajaxBrandAllListPage div태그 위치로 이동
	}
}

//modal창 태그
var modalMenu = document.getElementById('modalMenu');
var modalMenuBack = document.getElementById('modalMenuBack');

//modal창 brandTag, 각 브랜드, 모델 라디오 그룹
var searchBrandTag = document.getElementById('searchBrandTag');
var radioBrandGroup = document.getElementById('radioBrandGroup');
var radioBrandModelGroup = document.getElementById('radioBrandModelGroup');
var searchBrandModelTagSpan = document.getElementById('searchBrandModelTagSpan');

//modal창 open radioBrandGroup을 보여줌
function modalMenuOpen() {
	document.body.classList.add('el-popup-parent--hidden');
	
	radioBrandGroup.style.display = "flex";
	radioBrandModelGroup.style.display = "none";
	
	modalMenu.style.display = "flex";
	modalMenuBack.style.display = "flex";
	
	brandHidden.value = null;
	modelHidden.value = null;
	
	var brandCarAllCount = document.getElementById('brandCarAllCount');
	applyBtn.innerHTML = "차량보기( "+ brandCarAllCount.value +" 대)";
	applyBtn.value = brandCarAllCount.value;
}
//modal창 close
function modalMenuClose() {
	document.body.classList.remove('el-popup-parent--hidden');
	radioBrandGroup.style.display = "none";
	radioBrandModelGroup.style.display = "none";
	
	modalMenu.style.display = "none";
	modalMenuBack.style.display = "none";
	
	searchBrandTag.style.display = "none";
	searchBrandModelTagSpan.style.display = "none";
	
	brandHidden.value="";
	modelHidden.value="";
	
	var filterCarAllCount = document.getElementById('filterCarAllCount');
	applyBtn.innerHTML = "차량보기( "+ filterCarAllCount.value +" 대)";
	applyBtn.value = filterCarAllCount.value;
	
}

//modal창 radioBrandGroup에서 radioBrandModelGroup로 변경
var cnt = 0;
function modalModelMenu(brand,count) {
	//버블링현상 방지 코드 시작
	if (cnt == 1) {
		cnt = 0;
		return;
	}
	cnt++;
	//버블링 현상 방지코드 끝
	brandHidden.value=brand;
	
	searchBrandTag.style.display = "flex";
	
	var searchBrandTagSpan = document.getElementById('searchBrandTagSpan');
	searchBrandTagSpan.innerHTML = brand;			
	searchBrandTagSpan.value = brand;
	
	radioBrandGroup.style.display = "none";
	radioBrandModelGroup.style.display = "flex";
	
	applyBtn.innerHTML = "차량보기( "+ count +" 대)";
	
	sendModal(brand);
}
function sendModal(brand) {
	if (req == null) {
		req = new XMLHttpRequest();
	}
	req.onreadystatechange = modelMenu;
	req.open('post', 'modal');
	req.send(brand);
	/* 여기서 brand값을 applyBtn에 줄 수 있게 중간 함수 호출해놓기 */
}

function modelMenu() {
	if (req.readyState == 4 & req.status == 200) {
		radioBrandModelGroup.innerHTML = req.responseText;
	}
}

function modalModelAdd(brand,model,count){
	searchBrandModelTagSpan.innerHTML = model;
	searchBrandModelTagSpan.value= model;
	searchBrandModelTagSpan.style.display = "flex";
	
	applyBtn.innerHTML = "차량보기( "+ count +" 대)";
	
	brandHidden.value=brand;
	modelHidden.value=model;
	/* 여기서 brand,model값을 applyBtn에 줄 수 있게 중간 함수 호출해놓기 */
}

function applyBtnClick(data, currentPage){
	document.body.classList.remove('el-popup-parent--hidden');
	radioBrandGroup.style.display = "none";
	radioBrandModelGroup.style.display = "none";
	
	modalMenu.style.display = "none";
	modalMenuBack.style.display = "none";
	
	searchBrandTag.style.display = "none";
	searchBrandModelTagSpan.style.display = "none";
	
	brand = brandHidden.value;
	model = modelHidden.value;
	
	send(data, currentPage);
}

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
	if(alignMethod != alignmentHidden.value){
		alignmentHidden.value=alignMethod;
		send('','1');
	}
}

//브랜드정렬
var brandAlignment = function(brand){
	brandHidden.value = brand;
	send('','1');
}