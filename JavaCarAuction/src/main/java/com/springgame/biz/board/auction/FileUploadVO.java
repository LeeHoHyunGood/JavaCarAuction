package com.springgame.biz.board.auction;

public class FileUploadVO {
	private int file_idx;
	private int auc_idx;
	private String file_name;
	private String file_size;
	private int file_complete;
	public int getFile_idx() {
		return file_idx;
	}
	public void setFile_idx(int file_idx) {
		this.file_idx = file_idx;
	}
	public int getAuc_idx() {
		return auc_idx;
	}
	public void setAuc_idx(int auc_idx) {
		this.auc_idx = auc_idx;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getFile_size() {
		return file_size;
	}
	public void setFile_size(String file_size) {
		this.file_size = file_size;
	}
	public int getFile_auc_complete() {
		return file_complete;
	}
	public void setFile_auc_complete(int file_auc_complete) {
		this.file_complete = file_auc_complete;
	}
	@Override
	public String toString() {
		return "FileUploadVO [file_idx=" + file_idx + ", auc_idx=" + auc_idx + ", file_name=" + file_name
				+ ", file_size=" + file_size + "]";
	}
	
}
