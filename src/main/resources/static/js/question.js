
var questionCnt = 0; // 클릭시마다 cnt 세기 열기 닫기 구분용
var questionIndex = -1; // content열고 다시 다른 content 열때 기존 content닫기 위한 index
var question = function(index){ // title 클릭 함수
	var questionContent = document.querySelectorAll('.el-collapse-item__wrap'); // content클래스들
	if(questionIndex != index & questionIndex != -1){
		questionContent[questionIndex].style.display = "none";
		questionCnt = 0;
	}
	questionCnt++;
	if(questionCnt % 2 != 0){
		questionContent[index].style.display = "block";
		questionIndex = index;
	}else{
		questionContent[index].style.display = "none";
		questionIndex = -1;
	}
	
}

