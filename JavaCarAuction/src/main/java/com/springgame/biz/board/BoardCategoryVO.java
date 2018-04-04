package com.springgame.biz.board;

public class BoardCategoryVO {
		private int idx;
		private String name;
		private int read_grade;
		private int writer_grade;
		
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
		public int getWriter_grade() {
			return writer_grade;
		}
		public void setWriter_grade(int writer_grade) {
			this.writer_grade = writer_grade;
		}
		
		@Override
		public String toString() {
			return "BoardCategoryVO [idx=" + idx + ", name=" + name + ", read_grade=" + read_grade + ", writer_grade="
					+ writer_grade + "]";
		}	
}
