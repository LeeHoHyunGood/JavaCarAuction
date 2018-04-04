package com.springgame.biz.user;

import java.util.Date;

public class UserVO {
	private int acc_idx;
	private String acc_id;
	private String acc_pw;
	private String acc_nickname;
	private String acc_name;
	private String acc_email;
	private String acc_email2;
	private String acc_hp;
	private String acc_sex;
	private String acc_birthday;
	private long acc_money;
	private int acc_point;
	private int acc_grade;
	private int certification;
	private Date acc_logtime;
	private int facing;
	
	
	public String getAcc_birthday() {
		return acc_birthday;
	}
	public void setAcc_birthday(String acc_birthday) {
		this.acc_birthday = acc_birthday;
	}
	public int getAcc_idx() {
		return acc_idx;
	}
	public void setAcc_idx(int acc_idx) {
		this.acc_idx = acc_idx;
	}
	public String getAcc_id() {
		return acc_id;
	}
	public void setAcc_id(String acc_id) {
		this.acc_id = acc_id;
	}
	public String getAcc_pw() {
		return acc_pw;
	}
	public void setAcc_pw(String acc_pw) {
		this.acc_pw = acc_pw;
	}
	public String getAcc_nickname() {
		return acc_nickname;
	}
	public void setAcc_nickname(String acc_nickname) {
		this.acc_nickname = acc_nickname;
	}
	public String getAcc_name() {
		return acc_name;
	}
	public void setAcc_name(String acc_name) {
		this.acc_name = acc_name;
	}
	public String getAcc_email() {
		return acc_email;
	}
	public void setAcc_email(String acc_email) {
		this.acc_email = acc_email;
	}
	public String getAcc_email2() {
		return acc_email2;
	}
	public void setAcc_email2(String acc_email2) {
		this.acc_email2 = acc_email2;
	}
	public String getAcc_hp() {
		return acc_hp;
	}
	public void setAcc_hp(String acc_hp) {
		this.acc_hp = acc_hp;
	}
	public String getAcc_sex() {
		return acc_sex;
	}
	public void setAcc_sex(String acc_sex) {
		this.acc_sex = acc_sex;
	}
	public long getAcc_money() {
		return acc_money;
	}
	public void setAcc_money(long acc_money) {
		this.acc_money = acc_money;
	}
	public int getAcc_point() {
		return acc_point;
	}
	public void setAcc_point(int acc_point) {
		this.acc_point = acc_point;
	}
	public int getAcc_grade() {
		return acc_grade;
	}
	public void setAcc_grade(int acc_grade) {
		this.acc_grade = acc_grade;
	}
	public int getCertification() {
		return certification;
	}
	public void setCertification(int certification) {
		this.certification = certification;
	}
	public int getFacing() {
		return facing;
	}
	public Date getAcc_logtime() {
		return acc_logtime;
	}
	public void setAcc_logtime(Date acc_logtime) {
		this.acc_logtime = acc_logtime;
	}
	public void setFacing(int facing) {
		this.facing = facing;
	}
	@Override
	public String toString() {
		return "UserVO [acc_idx=" + acc_idx + ", acc_id=" + acc_id + ", acc_pw=" + acc_pw + ", acc_nickname="
				+ acc_nickname + ", acc_name=" + acc_name + ", acc_email=" + acc_email + ", acc_email2=" + acc_email2
				+ ", acc_hp=" + acc_hp + ", acc_sex=" + acc_sex + ", acc_birthday=" + acc_birthday + ", acc_money="
				+ acc_money + ", acc_point=" + acc_point + ", acc_grade=" + acc_grade + ", certification="
				+ certification + ", acc_logtime=" + acc_logtime + ", facing=" + facing + "]";
	}
}
