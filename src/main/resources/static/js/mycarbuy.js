let cnt = 0;
	let cnt2 = 0;
	var temp = 0;
	var tempfore = 0;
	let currentPage = 1;
	let currentPage_second = 1;
	
	function menuopen(content) {
		const menuid = content.id.replace('head', 'content');
		if (document.getElementById(menuid).style.display == 'block') {
			document.getElementById(menuid).style.display = 'none';
		} else {
			document.getElementById(menuid).style.display = 'block';

		}
	}
	var req_submenu;
	function submenuopen(content) {
		if (cnt2 == 1) {
			cnt2 = 0;
			return;
		}
		const menuid = content.id.replace('head', 'content');
		if (document.getElementById(menuid).style.display == 'block') {
			document.getElementById(menuid).style.display = 'none';

		} else {
			document.getElementById(menuid).style.display = 'block';

			var s = document.getElementById(menuid + "-input").value;
			s = s.replace("브랜드:", "");
			var data = {
				menuid : menuid,
				brand : s
			};
			data = JSON.stringify(data);

			req_submenu = new XMLHttpRequest();
			req_submenu.onreadystatechange = menuChange;
			req_submenu.open('post', '/subMenuopen');
			req_submenu.setRequestHeader('Content-Type',
					'application/json; charset=UTF-8');

			req_submenu.send(data);
		}
		cnt2++;
	}

	function menuChange() {
		if (req_submenu.readyState == 4 && req_submenu.status == 200) {

			var jsonData = JSON.parse(req_submenu.responseText);//String 데이터를 JSON 자료형으로 변환
			const menid = jsonData.menuid;

			document.getElementById(menid).innerHTML = jsonData.result;

			let check = document.querySelectorAll(".el-checkbox__original");
			for (var i = 0; i < check.length; i++) {
				check[i].addEventListener('click', ifual);
			}
		}
	}

	function menuselect(content) {
		if (cnt == 1) {
			cnt = 0;
			return;
		}
		let menuid = content.id.replace('head', 'content');
		menuid += "-check";
		if (document.getElementById(menuid).className == "el-checkbox__input") {
			document.getElementById(menuid).className = "el-checkbox__input is-checked";
		} else {
			document.getElementById(menuid).className = "el-checkbox__input";
		}
		cnt++;
	}

	

	window.onload = function() {

		let check = document.querySelectorAll(".el-checkbox__original");
		for (var i = 0; i < check.length; i++) {
			check[i].addEventListener('click', ifual);

		}
		let select = document.querySelectorAll(".el-input__inner");
		for (var i = 0; i < select.length; i++) {
			select[i].addEventListener('change', ifual);

		}
		let sort = document.getElementById("alignment");
		sort.addEventListener('change', ifual);

	}

	function pagesel(content) {
		currentPage = content.innerText;
		temp = 1;
		ifual();

	}
	function next() {
		currentPage += 1;
		temp = 1;
		ifual();
	}
	function prev() {
		currentPage -= 1;
		temp = 1;
		ifual();
	}

	function pageselFore(content) {
		currentPage_second = content.innerText;
		tempfore = 1;
		ifual();
	}
	function nextFore() {
		currentPage_second += 1;
		tempfore = 1;
		ifual();
	}
	function prevFore() {
		currentPage_second -= 1;
		tempfore = 1;
		ifual();
	}

	var req;

	function ifual() {
		if(temp !=1){
			currentPage=1;
		}
		if(tempfore !=1){
			currentPage_second=1;
		}
		const inner = document.querySelectorAll(".el-checkbox__original");
		const input = document.querySelectorAll(".el-checkbox__input");
		const select = document.querySelectorAll(".el-input__inner");
		const sor = document.getElementById("alignment").value;
		let list2 = [];
		list2.push(sor);

		let list3 = [];
		list3.push(currentPage);
		let list4 = [];
		list4.push(currentPage_second);
		let list = [];
		document.getElementById("tagBox").innerHTML = "";
		for (var i = 0; i < input.length; i++) {
			if (inner[i].checked == true) {
				input[i].className = 'el-checkbox__input is-checked';
				document.getElementById("tagBox").innerHTML += "<span class='tagNew el-tag el-tag--light'>"+inner[i].value+"<i class='el-tag__close el-icon-close' onclick='remove("+i+")'></i></span>"
				list.push(inner[i].value);
			} else {
				input[i].className = 'el-checkbox__input';
			}

		}
		for (var i = 0; i < select.length; i++) {
			list.push(select[i].value);
		}
		var data = {
			select : list,
			sort : list2,
			currentPage : list3,
			currentPageFore : list4
		};
		temp=0;
		data = JSON.stringify(data); // JSON 데이터를 String 자료형으로 변환

		req = new XMLHttpRequest();
		req.onreadystatechange = textChange;
		req.open('post', '/ajaxSearch');
		req.setRequestHeader('Content-Type', 'application/json; charset=UTF-8');
		req.send(data);

	}
	function textChange() {
		if (req.readyState == 4 && req.status == 200) {
			var jsonData = JSON.parse(req.responseText);
			document.getElementById("mainrequest").innerHTML = jsonData.all;
			document.getElementById("sublist").innerHTML = jsonData.fore;
			document.getElementById("total").innerHTML = jsonData.total;
			document.getElementById("navi").innerHTML = jsonData.navi;
			document.getElementById("naviFore").innerHTML = jsonData.naviFore;
		}
	}
	function remove(num){
		console.log(num);
		const checkremove = document.querySelectorAll(".el-checkbox__original");
		checkremove[num].checked=false;
		ifual();
	}