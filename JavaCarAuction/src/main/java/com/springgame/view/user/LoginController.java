package com.springgame.view.user;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springgame.biz.manage.CategoryService;
import com.springgame.biz.user.UserService;
import com.springgame.biz.user.UserVO;
import com.springgame.biz.user.impl.CustomUserDetails;
import com.springgame.biz.util.AuctionThread;

@Controller
public class LoginController {

	@Autowired
	private UserService userService;
	
	@Autowired
	CategoryService cService;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@RequestMapping(value = "login", method = RequestMethod.GET)
    public void login(HttpSession session) {
        logger.info("Welcome login! {}", session.getId());
    }
     
    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public void logout(HttpSession session) {
        CustomUserDetails userDetails = (CustomUserDetails)session.getAttribute("userLoginInfo");
         
        logger.info("Welcome logout! {}, {}", session.getId(), userDetails.getUsername());
         
         
        session.invalidate();
    }

	@RequestMapping(value = "/index2.do", method = RequestMethod.GET)
    public String index(HttpSession session)
    {
		CustomUserDetails userDetails = (CustomUserDetails)SecurityContextHolder.getContext().getAuthentication().getDetails();
		UserVO vo = new UserVO();
		vo.setAcc_id(userDetails.getUsername());
		vo.setAcc_pw(userDetails.getPassword());
		UserVO userVO = userService.getUser(vo);
		if (userVO != null) {
			if (userVO.getCertification()==1) {
						session.setAttribute("user", userVO);
						logger.info("Welcome login_success! {}, {}", session.getId(), userDetails.getUsername() + "/" + userDetails.getPassword());
						session.setAttribute("categorylist", cService.getCategoryList());
						userService.loginUser(userVO);
			return "index";
		} else {
			throw new IllegalArgumentException("인증이 되지않은 계정입니다");
		}
		} else {
			throw new IllegalArgumentException("아이디와 비밀번호를 찾을 수가 없습니다");
		}
    }
	
	@RequestMapping(value = "/loginPageError.do", method = RequestMethod.GET)
    public void login_duplicate() {    
        logger.info("Welcome login_duplicate!");
    }

	
	@RequestMapping("/loginProcess.do")
	public String login(UserVO vo, HttpSession session) {
		System.out.println("로그인 처리11");
		System.out.println(vo.getAcc_id());
		if (vo.getAcc_id() == null || vo.getAcc_id().equals("") || vo.getAcc_pw() == null || vo.getAcc_pw().equals("")) {
			throw new IllegalArgumentException("아이디 와 비번은 반드시 입력해야합니다");
		} else {
			UserVO userVO = userService.getUser(vo);
			if (userVO != null) {
				if (userVO.getCertification()==1) {
							session.setAttribute("user", userVO);
				return "index";
			} else {
				throw new IllegalArgumentException("인증이 되지않은 계정입니다");
			}
			} else {
				throw new IllegalArgumentException("아이디와 비밀번호를 찾을 수가 없습니다");
			}
		}
		
	}
	
	@RequestMapping("/loginPage.do")
	public String loginPage(UserVO vo, HttpSession session) {
		return "loginPage";
	}
}
