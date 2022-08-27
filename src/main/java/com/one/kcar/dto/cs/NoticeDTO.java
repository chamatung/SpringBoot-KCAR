package com.one.kcar.dto.cs;

public class NoticeDTO {
	/*
	 create table KCAR_NOTICE( n_no number, n_title varchar2(100) not null,
	 n_content varchar2(1500) not null, n_date varchar2(20) not null, primary key(n_no) );
	 */
	private int n_no;
	private String n_title;
	private String n_content;
	private String n_date;
	
	public int getN_no() {
		return n_no;
	}
	public void setN_no(int n_no) {
		this.n_no = n_no;
	}
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	public String getN_content() {
		return n_content;
	}
	public void setN_content(String n_content) {
		this.n_content = n_content;
	}
	public String getN_date() {
		return n_date;
	}
	public void setN_date(String n_date) {
		this.n_date = n_date;
	}
	
	
}
