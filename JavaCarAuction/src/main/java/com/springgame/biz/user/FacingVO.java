package com.springgame.biz.user;

public class FacingVO {
	private int facing_idx;
	private int acc_idx;
	private int sender_acc_idx;
	private String facing_sender;
	private String facing_title;
	private String facing_content;
	private String facing_time;
	public int getFacing_idx() {
		return facing_idx;
	}
	public void setFacing_idx(int facing_idx) {
		this.facing_idx = facing_idx;
	}
	public int getAcc_idx() {
		return acc_idx;
	}
	public void setAcc_idx(int acc_idx) {
		this.acc_idx = acc_idx;
	}
	public int getSender_acc_idx() {
		return sender_acc_idx;
	}
	public void setSender_acc_idx(int sender_acc_idx) {
		this.sender_acc_idx = sender_acc_idx;
	}
	public String getFacing_sender() {
		return facing_sender;
	}
	public void setFacing_sender(String facing_sender) {
		this.facing_sender = facing_sender;
	}
	public String getFacing_title() {
		return facing_title;
	}
	public void setFacing_title(String facing_title) {
		this.facing_title = facing_title;
	}
	public String getFacing_content() {
		return facing_content;
	}
	public void setFacing_content(String facing_content) {
		this.facing_content = facing_content;
	}
	public String getFacing_time() {
		return facing_time;
	}
	public void setFacing_time(String facing_time) {
		this.facing_time = facing_time;
	}
	
}
