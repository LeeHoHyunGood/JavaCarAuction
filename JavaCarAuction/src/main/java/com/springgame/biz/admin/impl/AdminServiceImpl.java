package com.springgame.biz.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springgame.biz.admin.AdminService;
import com.springgame.biz.admin.HotAuctionRule;
import com.springgame.biz.admin.TimeExtensionRule;
import com.springgame.biz.admin.UserRatingRule;
import com.springgame.biz.user.UserVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDAO adminDAO;

	@Override
	public void timeExtension(TimeExtensionRule timeExtension) {
		// TODO Auto-generated method stub
		adminDAO.timeExtension(timeExtension);
	}

	@Override
	public TimeExtensionRule getTimeExtension(TimeExtensionRule timeExtension) {
		// TODO Auto-generated method stub
		return adminDAO.getTimeExtension(timeExtension);
	}

	@Override
	public void hotAuction(HotAuctionRule hotAuction) {
		// TODO Auto-generated method stub
		adminDAO.hotAuction(hotAuction);
	}

	@Override
	public HotAuctionRule gethotAuction(HotAuctionRule hotAuction) {
		// TODO Auto-generated method stub
		return adminDAO.getHotAuction(hotAuction);
	}

	@Override
	public List<UserRatingRule> getUserReating() {
		// TODO Auto-generated method stub
		return adminDAO.getUserReating();
	}

	@Override
	public void userGrade(UserRatingRule userRatingRule) {
		// TODO Auto-generated method stub
		adminDAO.userGrade(userRatingRule);
	}

	@Override
	public List<UserVO> logUser(int logUser) {
		// TODO Auto-generated method stub
		return adminDAO.logUser(logUser);
	}

	@Override
	public void upDataCertification(UserVO userVO) {
		// TODO Auto-generated method stub
		adminDAO.upDataCertification(userVO);
	}


}
