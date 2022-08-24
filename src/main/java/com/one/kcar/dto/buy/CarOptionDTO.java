package com.one.kcar.dto.buy;

import java.util.ArrayList;

public class CarOptionDTO {
	private String c_o_sonRoof;
	private String c_o_hiPass;
	private String c_o_backSensor;
	private String c_o_camera;
	private String c_o_navigation;
	private String c_o_handleHot;
	private String c_o_airback;
	private String c_o_smartKey;
	private String c_o_blackBox;
	
	private ArrayList<String> optionList;
	
	public ArrayList<String> getOptionList() {
		return optionList;
	}
	public void setOptionList(ArrayList<String> optionList) {
		this.optionList = optionList;
	}
	public String getC_o_sonRoof() {
		return c_o_sonRoof;
	}
	public void setC_o_sonRoof(String c_o_sonRoof) {
		if(c_o_sonRoof != null) optionList.add(c_o_sonRoof);
		this.c_o_sonRoof = c_o_sonRoof;
	}
	public String getC_o_hiPass() {
		return c_o_hiPass;
	}
	public void setC_o_hiPass(String c_o_hiPass) {
		if(c_o_sonRoof != null) optionList.add(c_o_hiPass);
		this.c_o_hiPass = c_o_hiPass;
	}
	public String getC_o_backSensor() {
		return c_o_backSensor;
	}
	public void setC_o_backSensor(String c_o_backSensor) {
		if(c_o_sonRoof != null) optionList.add(c_o_backSensor);
		this.c_o_backSensor = c_o_backSensor;
	}
	public String getC_o_camera() {
		return c_o_camera;
	}
	public void setC_o_camera(String c_o_camera) {
		if(c_o_sonRoof != null) optionList.add(c_o_camera);
		this.c_o_camera = c_o_camera;
	}
	public String getC_o_navigation() {
		return c_o_navigation;
	}
	public void setC_o_navigation(String c_o_navigation) {
		if(c_o_sonRoof != null) optionList.add(c_o_navigation);
		this.c_o_navigation = c_o_navigation;
	}
	public String getC_o_handleHot() {
		return c_o_handleHot;
	}
	public void setC_o_handleHot(String c_o_handleHot) {
		if(c_o_sonRoof != null) optionList.add(c_o_handleHot);
		this.c_o_handleHot = c_o_handleHot;
	}
	public String getC_o_airback() {
		return c_o_airback;
	}
	public void setC_o_airback(String c_o_airback) {
		if(c_o_sonRoof != null) optionList.add(c_o_airback);
		this.c_o_airback = c_o_airback;
	}
	public String getC_o_smartKey() {
		return c_o_smartKey;
	}
	public void setC_o_smartKey(String c_o_smartKey) {
		if(c_o_sonRoof != null) optionList.add(c_o_smartKey);
		this.c_o_smartKey = c_o_smartKey;
	}
	public String getC_o_blackBox() {
		return c_o_blackBox;
	}
	public void setC_o_blackBox(String c_o_blackBox) {
		if(c_o_sonRoof != null) optionList.add(c_o_blackBox);
		this.c_o_blackBox = c_o_blackBox;
	}
}
