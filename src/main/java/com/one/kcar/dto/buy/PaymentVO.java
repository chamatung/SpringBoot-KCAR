package com.one.kcar.dto.buy;

public class PaymentVO {
	//kcar는 원리금균등상환방식으로 진행함,
	private int carPrice;
	//차량 구매시 기타 고정비용으로 = 세금 및 부대비용
	private int registrationPrice;//이전등록비는 그냥 매입가 기준 7%로 적용 공채할인/증지대/인지대 무시
	private int managePrice;
	private int registPrice;
	//보증비
	private int kw;
	//선수금 차량의 30%
	private double advancePayment;
	//할부원금 = 차량가격 - 선수금 = a
	private double installment;
	//대출상환 개월 수 = n
	private int installmentIndex;
	//연이자
	private double rate;
	//연이자율
	private double yearRate;
	//원리금균등방식으로 나온 월납입금
	private int result;//원단위
	private int result2;//만원단위
	
	private int sum;//총 구매가격
	
	public PaymentVO() {
		this.managePrice = 297000;
		this.registPrice = 33000;
		this.kw = 265000;
		
		this.installmentIndex = 36;
		this.rate = 0.07d;
	}	
	
	public int getSum() {
		return sum;
	}

	public int getResult2() {
		return result2;
	}

	public void setResult2(int result) {
		this.result2 = Math.round(result/10000);
	}



	public void setCarPrice(int carPrice) {
		this.carPrice = carPrice;
		this.registrationPrice = (int) (carPrice * 0.07);
		this.sum = (carPrice) + this.registrationPrice + this.managePrice + this.registPrice + this.kw;
		setAdvancePayment(carPrice);
	}
//	//선수금 차량가격의 30%
//	double advancePrice = carPrice * 0.3;
	public void setAdvancePayment(int carPrice) {
		this.advancePayment = carPrice * 0.3;
		setInstallment(carPrice, advancePayment);
	}
//	//선수금 제외 차량가격 기준 할부원금 a
//	double installment = carPrice - advancePrice;
	public void setInstallment(int carPrice, double advancePayment) {
		this.installment = carPrice - advancePayment;
		setYearRate(this.rate);
	}
//	//대출상환 개월 수 n
//	int installmentIndex = 36;
//	double rate = 0.07;	//연이자
//	double yearRate = rate / 12d;//연 이자율 b
//  생성자를 통해 값 부여
	public void setRate(double rate) {
		this.rate = rate;
	}
	public double getRate() {
		return rate;
	}
	public void setYearRate(double rate) {
		this.yearRate = rate / 12d;
		setResult(this.yearRate);
	}
	public void setInstallmentIndex(int installmentIndex) {
		this.installmentIndex = installmentIndex;
		setResult(installmentIndex);
	}
	//원리금 균등상환방식 공식 ( a * b (1 + b)^n ) / ((1 + b)^n -1 ) // (1 + b)^n 을 다시 b로 치환
	//소수점 변환 필요시 Math.round(b * 1000000) / 1000000.0; // 소수점 6번째자리까지 표시
	public void setResult() {
		double b = 1 + getYearRate();
		b = Math.pow(b,this.installmentIndex); //b를 installmentIndex만큼 제곱하기
		double a = this.installment * this.yearRate * b * 1.0;
		double c = b - 1;
		this.result = (int) (a/c);
		setResult2(this.result);
	}
	
	public void setResult(double yearRate) {
		double b = 1 + yearRate;
		b = Math.pow(b,this.installmentIndex); //b를 installmentIndex만큼 제곱하기
		double a = this.installment * yearRate * b * 1.0;
		double c = b -1;
		this.result = (int) (a/c);
		setResult2(this.result);
	}
	public void setResult(int index) {
		double b = 1 + getYearRate();
		b = Math.pow(b,index); //b를 installmentIndex만큼 제곱하기
		double a = this.installment * this.yearRate * b * 1.0;
		double c = b -1;
		this.result = (int) (a/c);
		setResult2(this.result);
	}
//	public void setResult(double yearRate, int index) {
//		double b = 1 + yearRate;
//		b = Math.pow(b,index); //b를 installmentIndex만큼 제곱하기
//		double a = this.installment * yearRate * b * 1.0;
//		double c = b -1;
//		this.result = (int) (a/c);
//		setResult2(this.result);
//	}
	public int getCarPrice() {
		return carPrice;
	}
	
	public int getRegistrationPrice() {
		return registrationPrice;
	}
	public void setRegistrationPrice(int registrationPrice) {
		this.registrationPrice = registrationPrice;
	}
	public int getManagePrice() {
		return managePrice;
	}
	public void setManagePrice(int managePrice) {
		this.managePrice = managePrice;
	}
	public int getRegistPrice() {
		return registPrice;
	}
	public void setRegistPrice(int registPrice) {
		this.registPrice = registPrice;
	}
	public int getKw() {
		return kw;
	}
	public void setKw(int kw) {
		this.kw = kw;
	}
	public double getAdvancePayment() {
		return advancePayment;
	}
	public double getInstallment() {
		return installment;
	}
	public int getInstallmentIndex() {
		return installmentIndex;
	}
	public double getYearRate() {
		return yearRate;
	}
	public int getResult() {
		return result;
	}
}
