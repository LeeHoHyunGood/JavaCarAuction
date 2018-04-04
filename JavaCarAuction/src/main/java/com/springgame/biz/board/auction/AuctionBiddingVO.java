package com.springgame.biz.board.auction;

public class AuctionBiddingVO {
	private int auc_idx;
	private int acc_max_idx;
	private int acc_agomax_idx;
	private int ab_maxvalue;
	private int ab_complete;
	public int getAuc_idx() {
		return auc_idx;
	}
	public void setAuc_idx(int auc_idx) {
		this.auc_idx = auc_idx;
	}
	public int getAcc_max_idx() {
		return acc_max_idx;
	}
	public void setAcc_max_idx(int acc_max_idx) {
		this.acc_max_idx = acc_max_idx;
	}
	public int getAcc_agomax_idx() {
		return acc_agomax_idx;
	}
	public void setAcc_agomax_idx(int acc_agomax_idx) {
		this.acc_agomax_idx = acc_agomax_idx;
	}
	public int getAb_maxvalue() {
		return ab_maxvalue;
	}
	public void setAb_maxvalue(int ab_maxvalue) {
		this.ab_maxvalue = ab_maxvalue;
	}
	public int getAb_complete() {
		return ab_complete;
	}
	public void setAb_complete(int ab_complete) {
		this.ab_complete = ab_complete;
	}
	
}
