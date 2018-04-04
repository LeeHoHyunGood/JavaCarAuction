package com.springgame.biz.common;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.springgame.biz.board.BoardService;
import com.springgame.biz.user.UserService;

public class JdbcTemplateMnger {
	private static AbstractApplicationContext container;
	private static BoardService boardService;
	private static UserService userService;
	private static JdbcTemplateMnger jdbcTemplateMnger = new JdbcTemplateMnger();
	
	private JdbcTemplateMnger() {
		connectTemplate();
	}
	
	private static void connectTemplate() {
	container = new GenericXmlApplicationContext("applicationContext.xml");

	boardService = (BoardService) container.getBean("boardService");
	userService = (UserService) container.getBean("userService");
	}
	
	public static JdbcTemplateMnger getJdbcTemplate() {
		return jdbcTemplateMnger;
	}

	public static BoardService getBoardService() {
		return boardService;
	}

	public static UserService getUserService() {
		return userService;
	}
	
	
}
