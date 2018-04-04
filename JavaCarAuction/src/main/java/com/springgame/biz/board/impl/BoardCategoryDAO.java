package com.springgame.biz.board.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springgame.biz.board.BoardCategoryVO;

//DAO(Data Access Object)
@Repository //@Repository->�����
public class BoardCategoryDAO {
	@Autowired
	private SqlSessionTemplate mybatis;	
	//CRUD ����� �޼ҵ� ����	

	//�� �� ��ȸ
	public BoardCategoryVO getBoardCategory(BoardCategoryVO vo) {
		return mybatis.selectOne("BoardDAO.getBoardCategory", vo);	
	}	
}
