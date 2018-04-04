package com.springgame.biz.board.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springgame.biz.board.BoardVO;

@Repository
public class BoardDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertBoard(BoardVO vo) {
		System.out.println("===> Mybatis�� insertBoard() ���ó��");
		mybatis.insert("BoardDAO.insertBoard",vo);
}
	public void updateBoard(BoardVO vo) {
		System.out.println("===> Mybatis�� updateBoard() ���ó��");
		mybatis.update("BoardDAO.updateBoard",vo);
}
	public void deleteBoard(BoardVO vo) {
		System.out.println("===> Mybatis�� deleteBoard() ���ó��");
		mybatis.delete("BoardDAO.deleteBoard",vo);
}
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("===> Mybatis�� getBoard() ���ó��");
		return (BoardVO) mybatis.selectOne("BoardDAO.getBoard",vo);
	}
	public List<BoardVO> getBoardList(BoardVO vo) {
		System.out.println("===> Mybatis�� getBoardList() ���ó��");
		return mybatis.selectList("BoardDAO.getBoardList",vo);
	}
	public void updateCnt(BoardVO vo) {
		System.out.println("===> Mybatis�� ��ȸ��  ���ó��");
		mybatis.update("BoardDAO.updateCnt",vo);
	}
	public int getBoardCount(BoardVO vo) {
		System.out.println("===> mybatis�� getPageNumberList() ��� ó��");
		return mybatis.selectOne("BoardDAO.getBoardCount", vo);
	}
	
}
