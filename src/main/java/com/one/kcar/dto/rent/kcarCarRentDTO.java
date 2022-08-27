package com.one.kcar.dto.rent;
/*
SQL> CREATE TABLE kcarCarRent(
crNumber varchar2(10) not null,
crPrice varchar2(15) not null,
crMonth varchar2(10) not null,
crFirstPrice varchar2(10) not null,
crCc varchar2(10) not null,
crYear varchar2(20) not null,
crColor varchar2(30) not null,
crDistance varchar2(15) not null,
crMission varchar2(10) not null,
crFuel varchar2(20) not null,
crNewPrice varchar2(15) not null,
crGrade varchar2(15) not null,
crSpecialPrice varchar2(15) null,
crBrand varchar2(25) null,
crpPhoto varchar2(150) null,
crName varchar2(40) not null,
m_email varchar2(30) null,
constraint pkCr primary key (crNumber)
);
 */

public class kcarCarRentDTO {
	private String crNumber;
	private String crPrice;
	private String crMonth;
	private String crFirstPrice;
	private String crCc;
	private String crYear;
	private String crColor;
	private String crDistance;
	private String crMission;
	private String crFuel;
	private String crNewPrice;
	private String crGrade;
	private String crSpecialPrice;
	private String crBrand;
	private String crpPhoto;
	private String crName;
	private String m_email;
	
	public String getCrNumber() {
		return crNumber;
	}
	public void setCrNumber(String crNumber) {
		this.crNumber = crNumber;
	}
	public String getCrPrice() {
		return crPrice;
	}
	public void setCrPrice(String crPrice) {
		this.crPrice = crPrice;
	}
	public String getCrMonth() {
		return crMonth;
	}
	public void setCrMonth(String crMonth) {
		this.crMonth = crMonth;
	}
	public String getCrFirstPrice() {
		return crFirstPrice;
	}
	public void setCrFirstPrice(String crFirstPrice) {
		this.crFirstPrice = crFirstPrice;
	}
	public String getCrCc() {
		return crCc;
	}
	public void setCrCc(String crCc) {
		this.crCc = crCc;
	}
	public String getCrYear() {
		return crYear;
	}
	public void setCrYear(String crYear) {
		this.crYear = crYear;
	}
	public String getCrColor() {
		return crColor;
	}
	public void setCrColor(String crColor) {
		this.crColor = crColor;
	}
	public String getCrDistance() {
		return crDistance;
	}
	public void setCrDistance(String crDistance) {
		this.crDistance = crDistance;
	}
	public String getCrMission() {
		return crMission;
	}
	public void setCrMission(String crMission) {
		this.crMission = crMission;
	}
	public String getCrFuel() {
		return crFuel;
	}
	public void setCrFuel(String crFuel) {
		this.crFuel = crFuel;
	}
	public String getCrNewPrice() {
		return crNewPrice;
	}
	public void setCrNewPrice(String crNewPrice) {
		this.crNewPrice = crNewPrice;
	}
	public String getCrGrade() {
		return crGrade;
	}
	public void setCrGrade(String crGrade) {
		this.crGrade = crGrade;
	}
	public String getCrSpecialPrice() {
		return crSpecialPrice;
	}
	public void setCrSpecialPrice(String crSpecialPrice) {
		this.crSpecialPrice = crSpecialPrice;
	}
	
	public String getCrBrand() {
		return crBrand;
	}
	public void setCrBrand(String crBrand) {
		this.crBrand = crBrand;
	}
	public String getCrName() {
		return crName;
	}
	public void setCrName(String crName) {
		this.crName = crName;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getCrpPhoto() {
		return crpPhoto;
	}
	public void setCrpPhoto(String crpPhoto) {
		this.crpPhoto = crpPhoto;
	}
}