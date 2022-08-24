package com.one.kcar.dto.buy;

import java.util.ArrayList;

public class BuyDTO {

	private String c_num;
	private String c_model;
	private String cb_brand;
	private String cb_m_model;
	private String c_name;
	private String c_year;
	private String c_distance;
	private String c_price;
	private String c_color;
	private String c_city;
	private String c_fuel;
	private String c_change;
	private String c_acident;
	private String c_seat;
	private String c_rent;
	private String c_photo;
	private String st_name;


	private String c_t_certified;
	private String c_t_distance;
	private String c_t_newCar;
	private String c_t_fourWheel;
	private String c_t_maintenance;
	private String c_t_oneOwner;
	private String c_t_specialOption;
	private String c_t_rent;
	
	ArrayList<String> brandCarInfoTag;
	
	public ArrayList<String> getBrandCarInfoTag() {
		return brandCarInfoTag;
	}
	public void setBrandCarInfoTag(ArrayList<String> brandCarInfoTag) {
		this.brandCarInfoTag = brandCarInfoTag;
	}
	public String getC_num() {
		return c_num;
	}
	public void setC_num(String c_num) {
		this.c_num = c_num;
	}
	public String getC_model() {
		return c_model;
	}
	public void setC_model(String c_model) {
		this.c_model = c_model;
	}
	public String getCb_brand() {
		return cb_brand;
	}
	public void setCb_brand(String cb_brand) {
		this.cb_brand = cb_brand;
	}
	public String getCb_m_model() {
		return cb_m_model;
	}
	public void setCb_m_model(String cb_m_model) {
		this.cb_m_model = cb_m_model;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_year() {
		return c_year;
	}
	public void setC_year(String c_year) {
		this.c_year = c_year;
	}
	public String getC_distance() {
		return c_distance;
	}
	public void setC_distance(String c_distance) {
		this.c_distance = c_distance;
	}
	public String getC_price() {
		return c_price;
	}
	public void setC_price(String c_price) {
		this.c_price = c_price;
	}
	public String getC_color() {
		return c_color;
	}
	public void setC_color(String c_color) {
		this.c_color = c_color;
	}
	public String getC_city() {
		return c_city;
	}
	public void setC_city(String c_city) {
		this.c_city = c_city;
	}
	public String getC_fuel() {
		return c_fuel;
	}
	public void setC_fuel(String c_fuel) {
		this.c_fuel = c_fuel;
	}
	public String getC_change() {
		return c_change;
	}
	public void setC_change(String c_change) {
		this.c_change = c_change;
	}
	public String getC_acident() {
		return c_acident;
	}
	public void setC_acident(String c_acident) {
		this.c_acident = c_acident;
	}
	public String getC_seat() {
		return c_seat;
	}
	public void setC_seat(String c_seat) {
		this.c_seat = c_seat;
	}
	public String getC_rent() {
		return c_rent;
	}
	public void setC_rent(String c_rent) {
		this.c_rent = c_rent;
	}
	public String getSt_name() {
		return st_name;
	}
	public void setSt_name(String st_name) {
		this.st_name = st_name;
	}
	
	
	public String getC_photo() {
		return c_photo;
	}
	public void setC_photo(String c_photo) {
		this.c_photo = c_photo;
	}
	public String getC_t_certified() {
		return c_t_certified;
	}
	public void setC_t_certified(String c_t_certified) {
		this.c_t_certified = c_t_certified;
	}
	public String getC_t_distance() {
		return c_t_distance;
	}
	public void setC_t_distance(String c_t_distance) {
		this.c_t_distance = c_t_distance;
	}
	public String getC_t_newCar() {
		return c_t_newCar;
	}
	public void setC_t_newCar(String c_t_newCar) {
		this.c_t_newCar = c_t_newCar;
	}
	public String getC_t_fourWheel() {
		return c_t_fourWheel;
	}
	public void setC_t_fourWheel(String c_t_fourWheel) {
		this.c_t_fourWheel = c_t_fourWheel;
	}
	public String getC_t_maintenance() {
		return c_t_maintenance;
	}
	public void setC_t_maintenance(String c_t_maintenance) {
		this.c_t_maintenance = c_t_maintenance;
	}
	public String getC_t_oneOwner() {
		return c_t_oneOwner;
	}
	public void setC_t_oneOwner(String c_t_oneOwner) {
		this.c_t_oneOwner = c_t_oneOwner;
	}
	public String getC_t_specialOption() {
		return c_t_specialOption;
	}
	public void setC_t_specialOption(String c_t_specialOption) {
		this.c_t_specialOption = c_t_specialOption;
	}
	public String getC_t_rent() {
		return c_t_rent;
	}
	public void setC_t_rent(String c_t_rent) {
		this.c_t_rent = c_t_rent;
	}
	
	
	//브랜드 포토,도메스틱 추가
	private String cb_photo;
	private String cb_domestic;
	
	public String getCb_domestic() {
		return cb_domestic;
	}
	public void setCb_domestic(String cb_domestic) {
		this.cb_domestic = cb_domestic;
	}
	public String getCb_photo() {
		return cb_photo;
	}
	public void setCb_photo(String cb_photo) {
		this.cb_photo = cb_photo;
	}
}
