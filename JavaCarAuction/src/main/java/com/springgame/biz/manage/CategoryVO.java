package com.springgame.biz.manage;

public class CategoryVO {
	
	private int idx;
	private String name;
	private int read_grade;
	private int write_grade;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getRead_grade() {
		return read_grade;
	}
	public void setRead_grade(int read_grade) {
		this.read_grade = read_grade;
	}
	public int getWrite_grade() {
		return write_grade;
	}
	public void setWrite_grade(int write_grade) {
		this.write_grade = write_grade;
	}
	public CategoryVO(int idx, String name, int read_grade, int write_grade) {
		super();
		this.idx = idx;
		this.name = name;
		this.read_grade = read_grade;
		this.write_grade = write_grade;
	}
	public CategoryVO() {
		super();
	}
}
