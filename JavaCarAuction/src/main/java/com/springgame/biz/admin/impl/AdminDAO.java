package com.springgame.biz.admin.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springgame.biz.admin.HotAuctionRule;
import com.springgame.biz.admin.TimeExtensionRule;
import com.springgame.biz.admin.UserRatingRule;
import com.springgame.biz.user.UserVO;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	public void timeExtension(TimeExtensionRule timeExtension) {
		// TODO Auto-generated method stub
		mybatis.update("AdminDAO.timeExtension", timeExtension);
	}

	public TimeExtensionRule getTimeExtension(TimeExtensionRule timeExtension) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("AdminDAO.getTimeExtension", timeExtension);
	}

	public void hotAuction(HotAuctionRule hotAuction) {
		// TODO Auto-generated method stub
		mybatis.update("AdminDAO.hotAuction", hotAuction);
	}

	public HotAuctionRule getHotAuction(HotAuctionRule hotAuction) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("AdminDAO.getHotAuction", hotAuction);
	}

	public List<UserRatingRule> getUserReating() {
		// TODO Auto-generated method stub
		return mybatis.selectList("AdminDAO.getUserReating");
	}

	public void userGrade(UserRatingRule userRatingRule) {
		// TODO Auto-generated method stub
		mybatis.update("AdminDAO.userGrade", userRatingRule);
	}

	public List<UserVO> logUser(java.lang.Integer logUser2) {
		// TODO Auto-generated method stub
		return mybatis.selectList("AdminDAO.logUser", logUser2);
	}

	public void upDataCertification(UserVO userVO) {
		// TODO Auto-generated method stub
		mybatis.update("AdminDAO.upDataCertification", userVO);
	}

}
