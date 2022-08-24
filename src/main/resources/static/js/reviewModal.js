var modalTitle = document.getElementById('modalTitle');
var modalModelNDate = document.getElementById('modalModelNDate');
var modalContent = document.getElementById('modalContent');
var modalPhoto = document.getElementById('modalPhoto');
var reviewModalBack = document.getElementById('reviewModalBack');
var reviewModal = document.getElementById('reviewModal');

function reviewModalOpen(model,title,review,date,photo) {
	document.body.classList.add('el-popup-parent--hidden');
	modalTitle.innerHTML = title;
	modalModelNDate.innerHTML = model + " <em class=\"emLine\"></em> " + date;
	modalContent.innerHTML = review;
	modalPhoto.src = photo;
	
	reviewModal.style.display="flex";
	reviewModalBack.style.display="flex";
}
//modal창 close
function reviewModalClose() {
	reviewModal.style.display="none";
	reviewModalBack.style.display="none";
	
	document.body.classList.remove('el-popup-parent--hidden');

	modalTitle.innerHTML = "";
	modalModelNDate.innerHTML = "";
	modalContent.innerHTML = "";
	modalPhoto.src = "";
}