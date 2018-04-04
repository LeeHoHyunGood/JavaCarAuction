package com.springgame.biz.board;

import java.util.List;



public interface BoardService {
	public void insertBoard(BoardVO vo);
	public void updateBoard(BoardVO vo);
	public void deleteBoard(BoardVO vo);
	public BoardVO getBoard(BoardVO vo);
	public List<BoardVO> getBoardList(BoardVO vo);
	public void updateCnt(BoardVO vo);
	public int getBoardCount(BoardVO vo);
}
