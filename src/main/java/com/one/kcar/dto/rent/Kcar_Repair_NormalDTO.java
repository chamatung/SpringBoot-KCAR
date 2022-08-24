package com.one.kcar.dto.rent;
/*
 * CREATE TABLE KCAR_REPAIR_NORMAL(
  2  crn_location varchar2(15) not null,
  3  crn_name varchar2(50) not null,
  4  crn_tel varchar2(15) not null,
  5  crn_addr varchar2(300) not null,
  6  constraint pk_crn primary key (crn_name)
  7  );

Table created.
 */

public class Kcar_Repair_NormalDTO {
	private String crn_location;
	private String crn_name;
	private String crn_tel;
	private String crn_addr;
	public String getCrn_location() {
		return crn_location;
	}
	public void setCrn_location(String crn_location) {
		this.crn_location = crn_location;
	}
	public String getCrn_name() {
		return crn_name;
	}
	public void setCrn_name(String crn_name) {
		this.crn_name = crn_name;
	}
	public String getCrn_tel() {
		return crn_tel;
	}
	public void setCrn_tel(String crn_tel) {
		this.crn_tel = crn_tel;
	}
	public String getCrn_addr() {
		return crn_addr;
	}
	public void setCrn_addr(String crn_addr) {
		this.crn_addr = crn_addr;
	}
	
	
}
