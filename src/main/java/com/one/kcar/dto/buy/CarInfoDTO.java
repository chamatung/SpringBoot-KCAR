package com.one.kcar.dto.buy;

import lombok.Data;

@Data
public class CarInfoDTO {
//	c_num	varchar2(10)	foreign key,not null	차번호
//	c_i_recommend	varchar2(1500)	null	차 추천이유
//	c_i_summary	varchar2(1500)	null	진단결과
//	c_i_history	varchar2(1500)	null	차량 특이사항

	private String c_num;

	private String c_i_recommend;
	private String c_i_summary;
	private String c_i_history;
	private String c_i_insurance;
	
	public String getC_num() {
		return c_num;
	}
	public void setC_num(String c_num) {
		this.c_num = c_num;
	}
	public String getC_i_recommend() {
		return c_i_recommend;
	}
	public void setC_i_recommend(String c_i_recommend) {
		this.c_i_recommend = c_i_recommend;
	}
	public String getC_i_summary() {
		return c_i_summary;
	}
	public void setC_i_summary(String c_i_summary) {
		this.c_i_summary = c_i_summary;
	}
	public String getC_i_history() {
		return c_i_history;
	}
	public void setC_i_history(String c_i_history) {
		this.c_i_history = c_i_history;
	}
	public String getC_i_insurance() {
		return c_i_insurance;
	}
	public void setC_i_insurance(String c_i_insurance) {
		this.c_i_insurance = c_i_insurance;
	}
	
	
}
