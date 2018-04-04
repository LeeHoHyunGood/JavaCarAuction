package com.springgame.biz.board.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springgame.biz.board.BoardCategoryService;
import com.springgame.biz.board.BoardCategoryVO;

@Service("boardCategoryService")
public class BoardCategoryServiceImpl implements BoardCategoryService {
	@Autowired	
	private BoardCategoryDAO boardCategoryDAO;	

	@Override
	public BoardCategoryVO getBoardCategory(BoardCategoryVO vo) {
		return boardCategoryDAO.getBoardCategory(vo);
	}
}
