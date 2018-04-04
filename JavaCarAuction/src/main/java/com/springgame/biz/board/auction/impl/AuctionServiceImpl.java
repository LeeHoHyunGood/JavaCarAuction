package com.springgame.biz.board.auction.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springgame.biz.admin.TimeExtensionRule;
import com.springgame.biz.board.auction.AuctionBiddingVO;
import com.springgame.biz.board.auction.AuctionService;
import com.springgame.biz.board.auction.AuctionVO;
import com.springgame.biz.board.auction.FileUploadVO;
import com.springgame.biz.board.auction.OptionAuctionVO;
import com.springgame.biz.user.FacingVO;
import com.springgame.biz.user.UserVO;
import com.springgame.biz.user.impl.UserDAO;

@Service("auctionService")
public class AuctionServiceImpl implements AuctionService {

	@Autowired
	private AuctionDAO auctionDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	@Override
	public void insertAuction(AuctionVO aucVO, List<OptionAuctionVO> optionList, List<FileUploadVO> fileList) {
		// TODO Auto-generated method stub
		auctionDAO.insertAuction(aucVO);
		for (OptionAuctionVO oaVO : optionList) {
			auctionDAO.insertOption(oaVO);
		}
		for (FileUploadVO fileVO : fileList) {
			auctionDAO.insertFile(fileVO);
		}
	}

	@Override
	public List<AuctionVO> auctionList(AuctionVO aucVO) {
		// TODO Auto-generated method stub
		return auctionDAO.auctionList(aucVO);
	}

	@Override
	public List<AuctionVO> searchAuction(AuctionVO aucVO) {
		// TODO Auto-generated method stub
		return auctionDAO.searchAuction(aucVO);
	}

	@Override
	public int auctionCount(AuctionVO aucVO) {
		// TODO Auto-generated method stub
		System.out.println(":2 " + aucVO.getAuc_type());
		return auctionDAO.auctionCount(aucVO);
	}

	@Override
	public void updataValue(AuctionVO aucVO) {
		// TODO Auto-generated method stub
		aucVO.setAuc_counter(aucVO.getAuc_counter()+1);
		AuctionVO auctionVO = auctionDAO.getAuction(aucVO);
		if (auctionVO.getAuc_value() < aucVO.getAuc_value()) {
			System.out.println("입찰성공돈많아");
			auctionDAO.updateValue(aucVO);
		} else {
			System.out.println("입찰실패너가돈이적어");
			return;
		}
	}

	@Override
	public AuctionVO getAuction(AuctionVO aucVO) {
		// TODO Auto-generated method stub
		AuctionVO auctionVO = auctionDAO.getAuction(aucVO);
		OptionAuctionVO optionVO = new OptionAuctionVO();
		optionVO.setAuc_idx(auctionVO.getAuc_idx());
		List<OptionAuctionVO> optionVOList = auctionDAO.auctionOption(optionVO);
		
		FileUploadVO fileVO = new FileUploadVO();
		fileVO.setAuc_idx(auctionVO.getAuc_idx());
		List<FileUploadVO> fileVOList = auctionDAO.auctionFile(fileVO);
		
		auctionVO.setOptionList(optionVOList);
		auctionVO.setFileList(fileVOList);
		return auctionVO;
	}

	@Override
	public void getAuctionDelete(AuctionVO aucVO) {
		// TODO Auto-generated method stub
		
		AuctionBiddingVO abVO = new AuctionBiddingVO();
		abVO.setAuc_idx(aucVO.getAuc_idx());
		AuctionBiddingVO auctionBiddingVO = auctionDAO.getMaxBidding(abVO);
		if (auctionBiddingVO == null) {
			auctionDAO.getAuctionDelete(aucVO);
		} else {
			UserVO maxUser = new UserVO();
			maxUser.setAcc_idx(auctionBiddingVO.getAcc_max_idx());
			System.out.println(" m "+maxUser.getAcc_idx());
			System.out.println(" mx "+auctionBiddingVO.getAcc_max_idx());
			UserVO sellerUser = new UserVO();
			System.out.println(" s " + aucVO.getAcc_idx());
			sellerUser.setAcc_idx(aucVO.getAcc_idx());
			
			UserVO maxUserVO = userDAO.getUsersByID(maxUser);
			maxUserVO.setAcc_money(maxUserVO.getAcc_money()-auctionBiddingVO.getAb_maxvalue());
			maxUserVO.setAcc_point(maxUserVO.getAcc_point()+50);
			
			UserVO sellerUserVO = userDAO.getUsersByID(sellerUser);
			sellerUserVO.setAcc_money(sellerUserVO.getAcc_money()+auctionBiddingVO.getAb_maxvalue());
			sellerUserVO.setAcc_point(sellerUserVO.getAcc_point()+50);
			
			auctionDAO.getAuctionWinningBid(maxUserVO, sellerUserVO);
			auctionDAO.getAuctionDelete(aucVO);
			
			AuctionBiddingVO biddingVO = auctionDAO.auctionBidding(aucVO);
			FacingVO facingVO = new FacingVO();
			facingVO.setAcc_idx(aucVO.getAcc_idx());
			facingVO.setSender_acc_idx(0);
			facingVO.setFacing_sender("관리자");
			facingVO.setFacing_title("판매완료");
			facingVO.setFacing_content("판매자님 판매가 완료 되었습니다");
			userDAO.sendFacing(facingVO);
			FacingVO facingVO2 = new FacingVO();
			facingVO2.setAcc_idx(biddingVO.getAcc_max_idx());
			facingVO2.setSender_acc_idx(0);
			facingVO2.setFacing_sender("관리자");
			facingVO2.setFacing_title("구매완료");
			facingVO2.setFacing_content("구매자님 구매완료하였습니다");
			userDAO.sendFacing(facingVO2);
		}
	}

	@Override
	public AuctionBiddingVO getMaxBidding(AuctionBiddingVO abVO) {
		// TODO Auto-generated method stub
		return auctionDAO.getMaxBidding(abVO);
	}

	@Override
	public void insertBidding(AuctionBiddingVO abVO) {
		// TODO Auto-generated method stub
		auctionDAO.insertBidding(abVO);
	}

	@Override
	public void updateBidding(AuctionBiddingVO auctionBiddingVO) {
		// TODO Auto-generated method stub
		auctionDAO.updateBidding(auctionBiddingVO);
	}

	@Override
	public List<AuctionVO> auctionAllList() {
		// TODO Auto-generated method stub
		return auctionDAO.auctionAllList();
	}

	@Override
	public void timeExtension(AuctionVO aucVO, TimeExtensionRule timeExtensionRule) {
		// TODO Auto-generated method stub
		auctionDAO.timeExtension(aucVO,timeExtensionRule);
	}

	@Override
	public List<AuctionVO> hotAuctionAllList() {
		// TODO Auto-generated method stub
		return auctionDAO.hotAuctionAllList();
	}

	@Override
	public void addHotAuction(AuctionVO auctionVO) {
		// TODO Auto-generated method stub
		auctionDAO.addHotAuction(auctionVO);
	}

	@Override
	public void getHotAuctionDelete(AuctionVO auctionVO) {
		// TODO Auto-generated method stub
		auctionDAO.getHotAuctionDelete(auctionVO);
	}

	@Override
	public AuctionBiddingVO auctionBidding(AuctionVO aucVO) {
		// TODO Auto-generated method stub
		return auctionDAO.auctionBidding(aucVO);
	}

	@Override
	public int getAdvertising(AuctionVO aucVO) {
		// TODO Auto-generated method stub
		return auctionDAO.getAdvertising(aucVO);
	}


}
