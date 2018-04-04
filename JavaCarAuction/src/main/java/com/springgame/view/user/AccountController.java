package com.springgame.view.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springgame.biz.user.FacingVO;
import com.springgame.biz.user.UserService;
import com.springgame.biz.user.UserVO;
import com.springgame.biz.util.AuctionThread;
import com.springgame.biz.util.Crypto;

@Controller
public class AccountController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private AuctionThread auctionThread;
	
	@RequestMapping("/account/checkId.do")
	public @ResponseBody int checkId(UserVO vo, HttpSession session) {
		System.out.println("아이디중복처리");
		return userService.checkId(vo);
	}
	
	@RequestMapping("/account/checknickname.do")
	public @ResponseBody int checkNickName(UserVO vo, HttpSession session) {
		System.out.println("닉네임중복처리");
		return userService.checkNickName(vo);
	}
	
	@RequestMapping("/accountjoin.do")
	public String accountJoin(UserVO vo, HttpSession session) {
		System.out.println("회원가입처리");
		vo.setAcc_money(0);
		vo.setAcc_grade(1);
		vo.setAcc_point(0);
		userService.accountJoin(vo);
		auctionThread.addUserTread(vo);
		return "index";
	}
	
	@RequestMapping("/account/registerAuth_proc.do")
	public String registerAutoProc(UserVO uvo,
			@RequestParam(value="key") String key)
	{
		System.out.println("인증요청은된다");
		System.out.println("uvo : " + uvo.getAcc_email() + " key : " + key);
		if(Crypto.convertSHA256(uvo.getAcc_email()).equals(key)) {
			System.out.println("되냐");
			userService.authUser(uvo);
			System.out.println("되냐2");
			return "authSuccess";
		} else
			throw new IllegalArgumentException("인증을 실패하였습니다");
	}
	
	@RequestMapping("/updateUser_proc.do")
	public String updateUserProc(UserVO userVO, HttpSession session) {
		System.out.println(userVO.getAcc_idx()+" pw : " + userVO.getAcc_pw() + " hp : " + userVO.getAcc_hp());
		UserVO sessionUserVO = (UserVO)session.getAttribute("user");
		userVO.setAcc_idx(sessionUserVO.getAcc_idx());
		System.out.println(userVO.getAcc_idx()+" pw222 : " + userVO.getAcc_pw() + " hp : " + userVO.getAcc_hp());
		userService.updateUser(userVO);
		
		sessionUserVO.setAcc_nickname(userVO.getAcc_nickname());
		sessionUserVO.setAcc_hp(userVO.getAcc_hp());
		session.setAttribute("user", sessionUserVO);
		
		return "mypage";
	}
	
	@RequestMapping("/deleteUser_proc.do")
	public String deleteUserProc(UserVO userVO, HttpSession session) {
		userService.deleteUser(userVO);
		session.invalidate();
		auctionThread.deleteUserTread(userVO);
		return "index";
	}
	
	@RequestMapping("/userMoney.do")
	public @ResponseBody long userMoney(UserVO userVO, HttpSession session) {
		UserVO uvo = userService.userMoney(userVO);
		
		return uvo.getAcc_money();
	}
	
	@RequestMapping("/getFacingList.do")
	public String getFacingList(FacingVO facingVO, HttpSession session) {
		List<FacingVO> fvo = userService.getFacingList(facingVO);
		session.setAttribute("facingList", fvo);
		return "getMyFacing";
	}
	
	@RequestMapping("/getFacing.do")
	public String getFacing(FacingVO facingVO, HttpSession session) {
		FacingVO fvo = userService.getFacing(facingVO);
		System.out.println(fvo.getFacing_time());
		session.setAttribute("getFacing", fvo);
		return "myFacing";
	}
	
	@RequestMapping("/deleteFacing.do")
	public String deleteFacing(FacingVO facingVO, HttpSession session) {
		if (facingVO.getFacing_idx() != 0 && facingVO.getAcc_idx() != 0) {
			userService.deleteFacing(facingVO);
		} else if (facingVO.getFacing_idx() == 0 && facingVO.getAcc_idx() != 0) {
			userService.deleteAllFacing(facingVO);
		}
		List<FacingVO> fvo = userService.getFacingList(facingVO);
		session.setAttribute("facingList", fvo);
		return "getMyFacing";
	}
	
	@RequestMapping("/sendFacingPage.do")
	public String sendFacingPage(FacingVO facingVO, HttpSession session) {
		UserVO userVO = new UserVO();
		userVO.setAcc_idx(facingVO.getAcc_idx());
		UserVO uvo = userService.getUsersByID(userVO);
		facingVO.setFacing_sender(uvo.getAcc_name());
		session.setAttribute("sendFacing", facingVO);
		return "sendFacing";
	}
	
	@RequestMapping("/sendFacing.do")
	public String sendFacing(FacingVO facingVO, HttpSession session) {
		userService.sendFacing(facingVO);
		return "index";
	}
	
	@RequestMapping("/facing.do")
	public @ResponseBody int facing(FacingVO facingVO, HttpSession session) {
		int facing = userService.facing(facingVO);
		return facing;
	}
}
