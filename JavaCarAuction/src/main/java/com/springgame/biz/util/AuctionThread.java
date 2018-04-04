package com.springgame.biz.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springgame.biz.admin.AdminService;
import com.springgame.biz.admin.HotAuctionRule;
import com.springgame.biz.admin.TimeExtensionRule;
import com.springgame.biz.admin.UserRatingRule;
import com.springgame.biz.board.auction.AuctionBiddingVO;
import com.springgame.biz.board.auction.AuctionService;
import com.springgame.biz.board.auction.AuctionVO;
import com.springgame.biz.user.FacingVO;
import com.springgame.biz.user.UserService;
import com.springgame.biz.user.UserVO;

@Service()
public class AuctionThread {

	@Autowired
	AuctionService auctionService;
	
	@Autowired
	private TimeExtensionRule timeExtensionRule;
	@Autowired
	private HotAuctionRule hotAuctionRule;
	@Autowired
	private UserRatingRule userReatingRule;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private UserService userService;
	
	List<AuctionVO> auctionList = new ArrayList<AuctionVO>();
	public static List<AuctionVO> hotAuctionList = new ArrayList<AuctionVO>();
	List<UserVO> userList = new ArrayList<UserVO>();
	public static List<UserRatingRule> userRatingList = new ArrayList<UserRatingRule>();
	
	public AuctionService getAuctionService() {
		return auctionService;
	}
	public void setAuctionService(AuctionService auctionService) {
		this.auctionService = auctionService;
	}
	public List<AuctionVO> getAuctionList() {
		return auctionList;
	}
	public void setAuctionList(List<AuctionVO> auctionList) {
		this.auctionList = auctionList;
	}

	public void auctionThread() {
		System.out.println(22);
		System.out.println(auctionService);
		auctionList = auctionService.auctionAllList();
		hotAuctionList = auctionService.hotAuctionAllList();
		timeExtensionRule = adminService.getTimeExtension(timeExtensionRule);
		hotAuctionRule = adminService.gethotAuction(hotAuctionRule);
		Thread thread = new Thread() {
			@Override
			public void run() {
				boolean hotAuctionAdd = false;
				while (true){
					System.out.println(11);
					for (int i = 0; i < auctionList.size(); i++) {
						System.out.println("경매인덱스"+auctionList.get(i).getAuc_idx());
						String time = auctionList.get(i).getAuc_time();
						String yearTime = time.split(",")[0];
						String ddayTime = time.split(",")[1];
						String dayTime = time.split(",")[2];
						String timeTime = time.split(",")[3];
						String minTime = time.split(",")[4];
						String secTime = time.split(",")[5];
						String tt = yearTime+","+ddayTime+","+dayTime+","+timeTime+","+minTime+","+secTime;
				    	SimpleDateFormat formatType = new SimpleDateFormat("yyyy,MM,dd,HH,mm,ss");
				    	Date now = new Date();
				    	System.out.println("현재시간"+formatType.format(now));
						Date dday = null;
						try {
							dday = formatType.parse(tt);
						} catch (ParseException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						System.out.println("경매시간"+formatType.format(dday));
						
						if (now.before(dday)) {
							System.out.println("시간남은");
						} else {
							System.out.println("시간안남음");
							auctionService.getAuctionDelete(auctionList.get(i));
							auctionService.getHotAuctionDelete(auctionList.get(i));
							deleteHotThread(auctionList.get(i));
							deleteThread(auctionList.get(i));
						}
						
						
						if (!hotAuctionList.isEmpty()) {
							if (hotAuctionList.size() <= 8) {
								if (auctionList.get(i).getAuc_counter() >= hotAuctionRule.getHot_rule()) {
									for (int y = 0; y < hotAuctionList.size(); y++) {
										if (hotAuctionList.get(y).getAuc_idx() != auctionList.get(i).getAuc_idx()) {
											hotAuctionAdd = true;
										} else {
											hotAuctionAdd = false;
											break;
										}
									}
									if (hotAuctionAdd) {
										auctionService.addHotAuction(auctionList.get(i));
										hotAuctionList.add(auctionList.get(i));
									}
								}
							} else {
								for (int y = 0; y < hotAuctionList.size(); y++) {
									if (hotAuctionList.get(y).getAuc_counter() < auctionList.get(i).getAuc_counter()) {
									hotAuctionList.remove(y);
									hotAuctionList.add(auctionList.get(i));
									}
								}
							}
						} else {
							auctionService.addHotAuction(auctionList.get(i));
							hotAuctionList.add(auctionList.get(i));
						}
					}
					
					try {
						Thread.sleep(1000);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		};
		
		thread.start();
	}
	
	public void userThread() {
		userList = userService.getUserList();
		userRatingList = adminService.getUserReating();
		Thread thread = new Thread() {
			@Override
			public void run() {
				for (int i = 0; i < userList.size(); i++) {
					for (int y = 0; y < userRatingList.size(); y++) {
						if (userList.get(i).getAcc_point() >= userRatingList.get(y).getUrr_point()) {
							System.out.println("등급올리기~~~~~~~~~~~" + userList.get(i).getAcc_idx() + " 님도 " + userRatingList.get(y).getUrr_acc_grade());
							userService.updateGrade(userList.get(i), userRatingList.get(y).getUrr_acc_grade());
						}
					}
				}
			}
		};
		
		thread.start();
	}
	//add함수
	public void addThread(AuctionVO aucVO) {
		auctionList.add(aucVO);
	}
	
	public void timeExtension(AuctionVO aucVO) {
		int endMinTime = timeExtensionRule.getTer_end_time();
		System.out.println("z : "+ endMinTime);
		
		for (int i = 0; i < auctionList.size(); i++) {
			if (auctionList.get(i).getAuc_idx() == aucVO.getAuc_idx()) {
				SimpleDateFormat formatType = new SimpleDateFormat("yyyy,MM,dd,HH,mm,ss");
				Date now = new Date();
				int hours = now.getHours();
				int mi = now.getMinutes();
				System.out.println(" mi : " + mi + " hours : " + hours);
				String time = auctionList.get(i).getAuc_time();
				String yearTime = time.split(",")[0];
				String ddayTime = time.split(",")[1];
				String dayTime = time.split(",")[2];
				String timeTime = time.split(",")[3];
				String minTime = time.split(",")[4];
				String secTime = time.split(",")[5];
				String tt = yearTime+","+ddayTime+","+dayTime+","+timeTime+","+minTime+","+secTime;
				
				int dayTime2 = Integer.parseInt(dayTime);
				int timeTime2 = Integer.parseInt(timeTime);
				int minTime2 = Integer.parseInt(minTime);
				
				Date dday = null;
				try {
					dday = formatType.parse(tt);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println(formatType.format(dday));
				if (now.before(dday)) {
					System.out.println("현재날짜이후");
					System.out.println(" s :" +timeTime2+ " : " + hours+" : "+minTime2+ " : " + endMinTime);
					if (timeTime2 == hours && minTime2-mi <= endMinTime) {
						System.out.println("된다");
						minTime2 = minTime2+endMinTime;
						tt = yearTime+","+ddayTime+","+dayTime+","+timeTime+","+minTime2+","+secTime;
						aucVO.setAuc_time(tt);
						auctionService.timeExtension(aucVO,timeExtensionRule);
						AuctionVO auction = auctionService.getAuction(aucVO);
						auctionList.set(i, auction);
						AuctionBiddingVO biddingVO = auctionService.auctionBidding(aucVO);
						FacingVO facingVO = new FacingVO();
						if (biddingVO != null) {
							facingVO.setAcc_idx(biddingVO.getAcc_agomax_idx());
							facingVO.setSender_acc_idx(0);
							facingVO.setFacing_sender("관리자");
							facingVO.setFacing_title("시간연장 알림");
							facingVO.setFacing_content("시간연장이 되었습니다 이전최고입찰자로 밀려나셨습니다");
							userService.sendFacing(facingVO);
							
							FacingVO facingVO2 = new FacingVO();
							facingVO2.setAcc_idx(biddingVO.getAcc_max_idx());
							facingVO2.setSender_acc_idx(0);
							facingVO2.setFacing_sender("관리자");
							facingVO2.setFacing_title("시간연장 알림");
							facingVO2.setFacing_content("최고 입찰자님 시간이 연장되었습니다");
							userService.sendFacing(facingVO2);
						}
					}
				} else {
					System.out.println("현재날짜 이전");
					return;
				}
			}
		}
	}
	//지우는 함수
	public void deleteThread(AuctionVO aucVO) {
		for (int i = 0; i < auctionList.size(); i++) {
			if (auctionList.get(i).getAuc_idx() == aucVO.getAuc_idx()) {
				auctionList.remove(i);
				return;
			}
		}
	}
	public void deleteHotThread(AuctionVO aucVO) {
		for (int i = 0; i < hotAuctionList.size(); i++) {
			if (hotAuctionList.get(i).getAuc_idx() == aucVO.getAuc_idx()) {
				System.out.println(hotAuctionList.size() + " :s " + i);
				hotAuctionList.remove(i);
				return;
			}
		}
	}
	//유저추가
	public void addUserTread(UserVO userVO) {
		userList.add(userVO);
	}
	//유저삭제
	public void deleteUserTread(UserVO userVO) {
		for (int i = 0; i < userList.size(); i++) {
			if (userList.get(i).getAcc_idx() == userVO.getAcc_idx()) {
				userList.remove(i);
				return;
			}
		}
	}
}
