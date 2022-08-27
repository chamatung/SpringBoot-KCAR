//paging 스크립트
	var req;
	var reviewSend = function(data, currentPage) {
		if (req == null) {
			req = new XMLHttpRequest();
		}
		req.onreadystatechange = reviewPageChange;
		req.open('post', 'buyReviewPaging');
		var result = {
			data : data,
			currentPage : currentPage
		}
		result = JSON.stringify(result);
		req.setRequestHeader('Content-Type',
				'application/json; charset=UTF-8');
		req.send(result);
	}
	function reviewPageChange() {
		if (req.readyState == 4 & req.status == 200) {
			var ajaxBuyReview = document.getElementById('ajaxBuyReview');
			ajaxBuyReview.innerHTML = req.responseText;
			ajaxBuyReview.scrollIntoView({
				behavior : "smooth",
				block : "start",
				inline : "nearest"
			});
		}
	}