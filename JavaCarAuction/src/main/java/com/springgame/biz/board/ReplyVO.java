package com.springgame.biz.board;

import java.sql.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;

@XmlAccessorType(XmlAccessType.FIELD)
public class ReplyVO {
	
	@XmlAttribute
	private int idx;
	private int parent_idx;
	private String repleyer;
	private int replyer_idx;
	private String reply_text;
	private Date reply_regdate;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getParent_idx() {
		return parent_idx;
	}
	public void setParent_idx(int parent_idx) {
		this.parent_idx = parent_idx;
	}
	public String getRepleyer() {
		return repleyer;
	}
	public void setRepleyer(String repleyer) {
		this.repleyer = repleyer;
	}
	public int getReplyer_idx() {
		return replyer_idx;
	}
	public void setReplyer_idx(int replyer_idx) {
		this.replyer_idx = replyer_idx;
	}
	public String getReply_text() {
		return reply_text;
	}
	public void setReply_text(String reply_text) {
		this.reply_text = reply_text;
	}
	public Date getReply_regdate() {
		return reply_regdate;
	}
	public void setReply_regdate(Date reply_regdate) {
		this.reply_regdate = reply_regdate;
	}
	
	
	@Override
	public String toString() {
		return "ReplyVO [idx=" + idx + ", parent_idx=" + parent_idx + ", repleyer=" + repleyer + ", replyer_idx="
				+ replyer_idx + ", reply_text=" + reply_text + ", reply_regdate=" + reply_regdate + "]";
	}
	
}
