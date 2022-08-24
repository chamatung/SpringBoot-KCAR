

function installmentCheck(_installmentIndex,carPrice){
	var installmentPrice = carPrice - carPrice * 0.3;
	
	var rate7 = document.getElementById('7');
	var rate8 = document.getElementById('8');
	var rate9 = document.getElementById('9');
	var rate11 = document.getElementById('11');
	var rate13 = document.getElementById('13');

	yearRate7 = (0.07 / 12);
	yearRate8 = (0.08 / 12);
	yearRate9 = (0.09 / 12);
	yearRate11 = (0.11 / 12);
	yearRate13 = (0.13 / 12);
	
	result7 = Calculation(yearRate7, _installmentIndex, installmentPrice);
	result8 = Calculation(yearRate8, _installmentIndex, installmentPrice);
	result9 = Calculation(yearRate9, _installmentIndex, installmentPrice);
	result11 = Calculation(yearRate11, _installmentIndex, installmentPrice);
	result13 = Calculation(yearRate13, _installmentIndex, installmentPrice);

	rate7.innerHTML = "연 7% <br>" + Math.floor(result7) + "만원";
	rate8.innerHTML = "연 8% <br>" + Math.floor(result8) + "만원";
	rate9.innerHTML = "연 9% <br>" + Math.floor(result9) + "만원";
	rate11.innerHTML = "연 11% <br>" + Math.floor(result11) + "만원";
	rate13.innerHTML = "연 13% <br>" + Math.floor(result13) + "만원";
	
	document.getElementById('hidden7').value = result7;
	document.getElementById('hidden8').value = result8;
	document.getElementById('hidden9').value = result9;
	document.getElementById('hidden11').value = result11;
	document.getElementById('hidden13').value = result13;
}

function Calculation(yearRate,_installmentIndex,installmentPrice){
	var b = 1 + yearRate;
	b = b ** _installmentIndex;
	a = installmentPrice * yearRate * b;
	c = b-1;
	result = a/c;
	return result;
}