package com.springgame.biz.board.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springgame.biz.board.BoardCategoryVO;

//DAO(Data Access Object)
@Repository //@Repository->저장소
public class BoardCategoryDAO {
	@Autowired
	private SqlSessionTemplate mybatis;	
	//CRUD 기능의 메소드 구현	

	//글 상세 조회
	public BoardCategoryVO getBoardCategory(BoardCategoryVO vo) {
		return mybatis.selectOne("BoardDAO.getBoardCategory", vo);	
	}	
}
