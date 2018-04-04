package com.springgame.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {

	@RequestMapping("account/logout_proc.do")
	public String logout(HttpSession session) {
		System.out.println("로그아웃처리");
		
		session.invalidate();
		return "redirect:../index.do";
	}

}
