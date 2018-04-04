package com.springgame.biz.board.auction;

import java.util.ArrayList;
import java.util.List;

public class AuctionVO {
	private int auc_idx;
	private int acc_idx;
	private String auc_type;
	private String auc_maker;
	private String auc_model;
	private String auc_title;
	private String auc_writer;
	private String auc_content;
	private String auc_time;
	private int auc_startvalue;
	private int auc_value;
	private int auc_counter;
	private String auc_year;
	private String auc_mileage;
	private int auc_driving;
	private int auc_displacement;
	private String auc_shift;
	private String auc_color;
	private String auc_fuel;
	private String auc_seizure;
	private String auc_accident;
	private String auc_carnumber;
	private int auc_complete;
	private String img;
	private int page;
	private List<OptionAuctionVO> optionList = new ArrayList<OptionAuctionVO>();
	private List<FileUploadVO> fileList = new ArrayList<FileUploadVO>();
	public int getAuc_idx() {
		return auc_idx;
	}
	public void setAuc_idx(int auc_idx) {
		this.auc_idx = auc_idx;
	}
	public int getAcc_idx() {
		return acc_idx;
	}
	public void setAcc_idx(int acc_idx) {
		this.acc_idx = acc_idx;
	}
	public String getAuc_type() {
		return auc_type;
	}
	public void setAuc_type(String auc_type) {
		this.auc_type = auc_type;
	}
	public String getAuc_maker() {
		return auc_maker;
	}
	public void setAuc_maker(String auc_maker) {
		this.auc_maker = auc_maker;
	}
	public String getAuc_model() {
		return auc_model;
	}
	public void setAuc_model(String auc_model) {
		this.auc_model = auc_model;
	}
	public String getAuc_title() {
		return auc_title;
	}
	public void setAuc_title(String auc_title) {
		this.auc_title = auc_title;
	}
	public String getAuc_writer() {
		return auc_writer;
	}
	public void setAuc_writer(String auc_writer) {
		this.auc_writer = auc_writer;
	}
	public String getAuc_content() {
		return auc_content;
	}
	public void setAuc_content(String auc_content) {
		this.auc_content = auc_content;
	}
	public String getAuc_time() {
		return auc_time;
	}
	public void setAuc_time(String auc_time) {
		this.auc_time = auc_time;
	}
	public int getAuc_startvalue() {
		return auc_startvalue;
	}
	public void setAuc_startvalue(int auc_startvalue) {
		this.auc_startvalue = auc_startvalue;
	}
	public int getAuc_value() {
		return auc_value;
	}
	public void setAuc_value(int auc_value) {
		this.auc_value = auc_value;
	}
	public int getAuc_counter() {
		return auc_counter;
	}
	public void setAuc_counter(int auc_counter) {
		this.auc_counter = auc_counter;
	}
	public String getAuc_year() {
		return auc_year;
	}
	public void setAuc_year(String auc_year) {
		this.auc_year = auc_year;
	}
	public String getAuc_mileage() {
		return auc_mileage;
	}
	public void setAuc_mileage(String auc_mileage) {
		this.auc_mileage = auc_mileage;
	}
	public int getAuc_driving() {
		return auc_driving;
	}
	public void setAuc_driving(int auc_driving) {
		this.auc_driving = auc_driving;
	}
	public int getAuc_displacement() {
		return auc_displacement;
	}
	public void setAuc_displacement(int auc_displacement) {
		this.auc_displacement = auc_displacement;
	}
	public String getAuc_shift() {
		return auc_shift;
	}
	public void setAuc_shift(String auc_shift) {
		this.auc_shift = auc_shift;
	}
	public String getAuc_color() {
		return auc_color;
	}
	public void setAuc_color(String auc_color) {
		this.auc_color = auc_color;
	}
	public String getAuc_fuel() {
		return auc_fuel;
	}
	public void setAuc_fuel(String auc_fuel) {
		this.auc_fuel = auc_fuel;
	}
	public String getAuc_seizure() {
		return auc_seizure;
	}
	public void setAuc_seizure(String auc_seizure) {
		this.auc_seizure = auc_seizure;
	}
	public String getAuc_accident() {
		return auc_accident;
	}
	public void setAuc_accident(String auc_accident) {
		this.auc_accident = auc_accident;
	}
	public String getAuc_carnumber() {
		return auc_carnumber;
	}
	public void setAuc_carnumber(String auc_carnumber) {
		this.auc_carnumber = auc_carnumber;
	}
	public int getAuc_complete() {
		return auc_complete;
	}
	public void setAuc_complete(int auc_complete) {
		this.auc_complete = auc_complete;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	
	public List<OptionAuctionVO> getOptionList() {
		return optionList;
	}
	public void setOptionList(List<OptionAuctionVO> optionList) {
		this.optionList = optionList;
	}
	public List<FileUploadVO> getFileList() {
		return fileList;
	}
	public void setFileList(List<FileUploadVO> fileList) {
		this.fileList = fileList;
	}
	@Override
	public String toString() {
		return "AuctionVO [auc_idx=" + auc_idx + ", auc_type=" + auc_type + ", auc_maker=" + auc_maker + ", auc_model="
				+ auc_model + ", auc_title=" + auc_title + ", auc_writer=" + auc_writer + ", auc_content=" + auc_content
				+ ", auc_time=" + auc_time + ", auc_startvalue=" + auc_startvalue + ", auc_value=" + auc_value
				+ ", auc_counter=" + auc_counter + ", auc_year=" + auc_year + ", auc_mileage=" + auc_mileage
				+ ", auc_driving=" + auc_driving + ", auc_displacement=" + auc_displacement + ", auc_shift=" + auc_shift
				+ ", auc_color=" + auc_color + ", auc_fuel=" + auc_fuel + ", auc_seizure=" + auc_seizure
				+ ", auc_accident=" + auc_accident + ", auc_carnumber=" + auc_carnumber + ", auc_endtime="
				+ "]";
	}
}
