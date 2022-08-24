package com.one.kcar.dto.store;

import java.util.ArrayList;

public class StoreOptionDTO {
	private String min_year;
	private String max_year;
	private int min_price;
	private int max_price;
	private int range ;
	private ArrayList<String> searchOption;
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
	public int getMin_price() {
		return min_price;
	}
	public void setMin_price(int min_price) {
		this.min_price = min_price;
	}
	public int getMax_price() {
		return max_price;
	}
	public void setMax_price(int max_price) {
		this.max_price = max_price;
	}
	public int getRange() {
		return range;
	}
	public void setRange(int range) {
		this.range = range;
	}
	public ArrayList<String> getSearchOption() {
		return searchOption;
	}
	public void setSearchOption(ArrayList<String> searchOption) {
		this.searchOption = searchOption;
	}
}
