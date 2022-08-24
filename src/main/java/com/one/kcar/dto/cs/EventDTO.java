package com.one.kcar.dto.cs;

public class EventDTO {
	/*create table KCAR_EVENT(
			e_no number,
			e_title varchar2(100) not null,
			e_content varchar2(1500) not null,
			e_startDate varchar2(20) not null,
			e_endDate varchar2(20) not null,
			e_date varchar2(20) not null,
			primary key(e_no)
			);*/
	private int e_no;
	private String e_title;
	private String e_content;
	private String e_startDate;
	private String e_endDate;
	private String e_date;
	
	public int getE_no() {
		return e_no;
	}
	public void setE_no(int e_no) {
		this.e_no = e_no;
	}
	public String getE_title() {
		return e_title;
	}
	public void setE_title(String e_title) {
		this.e_title = e_title;
	}
	public String getE_content() {
		return e_content;
	}
	public void setE_content(String e_content) {
		this.e_content = e_content;
	}
	public String getE_startDate() {
		return e_startDate;
	}
	public void setE_startDate(String e_startDate) {
		this.e_startDate = e_startDate;
	}
	public String getE_endDate() {
		return e_endDate;
	}
	public void setE_endDate(String e_endDate) {
		this.e_endDate = e_endDate;
	}
	public String getE_date() {
		return e_date;
	}
	public void setE_date(String e_date) {
		this.e_date = e_date;
	}
	
}
