package com.springbook.biz.board;

import java.util.List;

public interface BoardService {
	
	void insertBoard(BoardVO vo);
	
	
	List<BoardVO> getBoardList(BoardVO vo);
}
