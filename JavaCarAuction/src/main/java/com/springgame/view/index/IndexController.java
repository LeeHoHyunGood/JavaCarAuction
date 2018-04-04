package com.springgame.view.index;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springgame.biz.manage.CategoryService;
import com.springgame.biz.util.AuctionThread;

@Controller
public class IndexController {
	
	@Autowired
	CategoryService cService;
	
	@Autowired
	private AuctionThread auctionThread;
	
	@RequestMapping("index.do")
	public String indexProc(HttpSession session) {
		session.setAttribute("categorylist", cService.getCategoryList());
		return "index";
	}

	@RequestMapping("insertauction.do")
	public String indexPro(HttpSession session) {
		return "insertauction.jsp";
	}

}
