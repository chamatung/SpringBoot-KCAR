package com.one.kcar.dto.buy;

import java.util.ArrayList;

public class BuyoptionDTO {
	private String min_year;
	private String max_year;
	private int min_dis;
	private int max_dis;
	public String getMin_year() {
		return min_year;
	}
	public void setMin_year(String min_year) {
		this.min_year = min_year;
	}
	public String getMax_year() {
		return max_year;
	}
	public void setMax_year(String max_year) {
		this.max_year = max_year;
	}
	public int getMin_dis() {
		return min_dis;
	}
	public void setMin_dis(int min_dis) {
		this.min_dis = min_dis;
	}
	public int getMax_dis() {
		return max_dis;
	}
	public void setMax_dis(int max_dis) {
		this.max_dis = max_dis;
	}
	
	public ArrayList<String> getCar_model() {
		return car_model;
	}
	public void setCar_model(ArrayList<String> car_model) {
		this.car_model = car_model;
	}

	public ArrayList<String> getCar_fuel() {
		return car_fuel;
	}
	public void setCar_fuel(ArrayList<String> car_fuel) {
		this.car_fuel = car_fuel;
	}
	public ArrayList<String> getCar_color() {
		return car_color;
	}
	public void setCar_color(ArrayList<String> car_color) {
		this.car_color = car_color;
	}
	public ArrayList<String> getCar_change() {
		return car_change;
	}
	public void setCar_change(ArrayList<String> car_change) {
		this.car_change = car_change;
	}
	public ArrayList<String> getCar_acident() {
		return car_acident;
	}
	public void setCar_acident(ArrayList<String> car_acident) {
		this.car_acident = car_acident;
	}
	public ArrayList<String> getCar_type() {
		return car_type;
	}
	public void setCar_type(ArrayList<String> car_type) {
		this.car_type = car_type;
	}
	public ArrayList<Integer> getCar_seat() {
		return car_seat;
	}
	public void setCar_seat(ArrayList<Integer> car_seat) {
		this.car_seat = car_seat;
	}

	private ArrayList<String> car_option;
	public ArrayList<String> getCar_option() {
		return car_option;
	}
	public void setCar_option(ArrayList<String> car_option) {
		this.car_option = car_option;
	}

	private ArrayList<String> car_model;
	private ArrayList<String> car_brand1;
	private ArrayList<String> car_fuel;
	private ArrayList<String> car_color;
	private ArrayList<String> car_change;
	private ArrayList<String> car_acident;
	private ArrayList<String> car_type;
	private ArrayList<Integer> car_seat;
	private ArrayList<String> car_store;
	public ArrayList<String> getCar_brand1() {
		return car_brand1;
	}
	public void setCar_brand1(ArrayList<String> car_brand1) {
		this.car_brand1 = car_brand1;
	}
	public ArrayList<String> getCar_store() {
		return car_store;
	}
	public void setCar_store(ArrayList<String> car_store) {
		this.car_store = car_store;
	}
}
