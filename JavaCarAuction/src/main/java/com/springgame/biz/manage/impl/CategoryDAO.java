package com.springgame.biz.manage.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springgame.biz.manage.CategoryVO;


@Repository
public class CategoryDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	public List<CategoryVO> getCategoryList() {
		return mybatis.selectList("ManageDAO.getCategoryList");
	}

}
