package com.springgame.biz.admin;

import java.util.List;

import com.springgame.biz.user.UserVO;

public interface AdminService {

	void timeExtension(TimeExtensionRule timeExtension);

	TimeExtensionRule getTimeExtension(TimeExtensionRule timeExtension);

	void hotAuction(HotAuctionRule hotAuction);

	HotAuctionRule gethotAuction(HotAuctionRule hotAuction);

	List<UserRatingRule> getUserReating();

	void userGrade(UserRatingRule userRatingRule);

	List<UserVO> logUser(int logUser);

	void upDataCertification(UserVO userVO);


}
