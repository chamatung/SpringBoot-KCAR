package com.one.kcar.dto.rent;
/*
 * CREATE TABLE kcarCarRentOption(
crNumber varchar2(10) not null,
croSunRoof varchar2(20) null,
croHiPass varchar2(20) null,
croBackSensor varchar2(20) null,
croCamera varchar2(20) null,
croNavigation varchar2(20) null,
croHandleHot varchar2(20) null,
croAirBag varchar2(20) null,
croSmartKey varchar2(20) null,
croBlackBox varchar2(20) null,
constraint fkCr foreign key (crNumber) references kcarCarRent(crNumber) on delete cascade
);
 */

public class kcarCarRentOptionDTO extends kcarCarRentDTO{
	private String crNumber;
	private String croSunRoof;
	private String croHiPass;
	private String croBackSensor;
	private String croCamera;
	private String croNavigation;
	private String croHandleHot;
	private String croAirBag;
	private String croSmartKey;
	private String croBlackBox;
	
	public String getCrNumber() {
		return crNumber;
	}
	public void setCrNumber(String crNumber) {
		this.crNumber = crNumber;
	}
	public String getCroSunRoof() {
		return croSunRoof;
	}
	public void setCroSunRoof(String croSunRoof) {
		this.croSunRoof = croSunRoof;
	}
	public String getCroHiPass() {
		return croHiPass;
	}
	public void setCroHiPass(String croHiPass) {
		this.croHiPass = croHiPass;
	}
	public String getCroBackSensor() {
		return croBackSensor;
	}
	public void setCroBackSensor(String croBackSensor) {
		this.croBackSensor = croBackSensor;
	}
	public String getCroCamera() {
		return croCamera;
	}
	public void setCroCamera(String croCamera) {
		this.croCamera = croCamera;
	}
	public String getCroNavigation() {
		return croNavigation;
	}
	public void setCroNavigation(String croNavigation) {
		this.croNavigation = croNavigation;
	}
	public String getCroHandleHot() {
		return croHandleHot;
	}
	public void setCroHandleHot(String croHandleHot) {
		this.croHandleHot = croHandleHot;
	}
	public String getCroAirBag() {
		return croAirBag;
	}
	public void setCroAirBag(String croAirBag) {
		this.croAirBag = croAirBag;
	}
	public String getCroSmartKey() {
		return croSmartKey;
	}
	public void setCroSmartKey(String croSmartKey) {
		this.croSmartKey = croSmartKey;
	}
	public String getCroBlackBox() {
		return croBlackBox;
	}
	public void setCroBlackBox(String croBlackBox) {
		this.croBlackBox = croBlackBox;
	}
	
	

}
