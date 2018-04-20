package com.springgame.view.admin;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springgame.biz.admin.AdminService;
import com.springgame.biz.admin.HotAuctionRule;
import com.springgame.biz.admin.TimeExtensionRule;
import com.springgame.biz.admin.UserRatingRule;
import com.springgame.biz.user.UserVO;
import com.springgame.biz.util.AuctionThread;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private TimeExtensionRule timeExtensionRule;
	@Autowired
	private HotAuctionRule hotAuctionRule;
	@Autowired
	private UserRatingRule userRatingRule;
	
	@Autowired
	private AuctionThread auctionThread;
	
	@RequestMapping("/adminTimeExtension.do")
	public void timeExtension(TimeExtensionRule timeExtension) {
		System.out.println(" : " + timeExtension.getTer_time_extension() + " : " + timeExtension.getTer_end_time());
		adminService.timeExtension(timeExtension);
		timeExtensionRule = adminService.getTimeExtension(timeExtension);
	}
	
	@RequestMapping("/start.do")
	public String start(TimeExtensionRule timeExtension) {
		auctionThread.auctionThread();
		auctionThread.userThread();
		return "adminModeIndex";
	}
	
	@RequestMapping("/adminHotAuction.do")
	public void adminHotAuction(HotAuctionRule hotAuction) {
		adminService.hotAuction(hotAuction);
		hotAuctionRule = adminService.gethotAuction(hotAuction);
	}
	
	@RequestMapping("/userGrade.do")
	public void userGrade(UserRatingRule userRatingRule) {
		userRatingRule.setUrr_idx(userRatingRule.getUrr_acc_grade());
		adminService.userGrade(userRatingRule);
		auctionThread.userRatingList = adminService.getUserReating();
	}
	
	@ResponseBody
	@RequestMapping("/logUser.do")
	public List<UserVO> logUser(int logUser) throws ParseException {
		List<UserVO> logUserList = adminService.logUser(logUser);
		System.out.println(logUserList.get(0).getCertification());
		return logUserList;
	}
	
	@RequestMapping("/upDataCertification.do")
	public void upDataCertification(UserVO userVO) throws ParseException {
		adminService.upDataCertification(userVO);
	}
}
