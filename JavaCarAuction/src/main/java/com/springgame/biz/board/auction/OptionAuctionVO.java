package com.springgame.biz.board.auction;

public class OptionAuctionVO {
	private int oa_idx;
	private int auc_idx;
	private int oa_option;
	private int oa_complete;
	public int getOa_idx() {
		return oa_idx;
	}
	public void setOa_idx(int oa_idx) {
		this.oa_idx = oa_idx;
	}
	public int getAuc_idx() {
		return auc_idx;
	}
	public void setAuc_idx(int auc_idx) {
		this.auc_idx = auc_idx;
	}
	public int getOa_option() {
		return oa_option;
	}
	public void setOa_option(int oa_option) {
		this.oa_option = oa_option;
	}
	public int getOa_auc_complete() {
		return oa_complete;
	}
	public void setOa_auc_complete(int oa_auc_complete) {
		this.oa_complete = oa_auc_complete;
	}
	@Override
	public String toString() {
		return "OptionAuctionVO [oa_idx=" + oa_idx + ", auc_idx=" + auc_idx + ", oa_option=" + oa_option + "]";
	}
	
}
