package com.springgame.biz.board.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springgame.biz.board.BoardService;
import com.springgame.biz.board.BoardVO;

@Service("BoardService")
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDAOMybatis boardDAO;
	
	public void insertBoard(BoardVO vo) {
		boardDAO.insertBoard(vo);
	}

	public void updateBoard(BoardVO vo) {
		boardDAO.updateBoard(vo);
	}

	public void deleteBoard(BoardVO vo) {
		boardDAO.deleteBoard(vo);
	}

	public BoardVO getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}

	public List<BoardVO> getBoardList(BoardVO vo) {
		return boardDAO.getBoardList(vo);
	}
	public void updateCnt(BoardVO vo) {
		boardDAO.updateCnt(vo);
	}
	@Override
	public int getBoardCount(BoardVO vo) {
		int totalBoardCount = boardDAO.getBoardCount(vo);
		return totalBoardCount;
	}
}
