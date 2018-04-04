package com.springgame.biz.manage.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springgame.biz.manage.CategoryService;
import com.springgame.biz.manage.CategoryVO;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryDAO categoryDAO;
	
	@Override
	public List<CategoryVO> getCategoryList() {
		return categoryDAO.getCategoryList();
	}

}
