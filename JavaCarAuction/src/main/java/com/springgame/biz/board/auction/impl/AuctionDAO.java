package com.springgame.biz.board.auction.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springgame.biz.admin.TimeExtensionRule;
import com.springgame.biz.board.auction.AuctionBiddingVO;
import com.springgame.biz.board.auction.AuctionVO;
import com.springgame.biz.board.auction.FileUploadVO;
import com.springgame.biz.board.auction.OptionAuctionVO;
import com.springgame.biz.user.UserVO;

@Repository
public class AuctionDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertAuction(AuctionVO aucVO) {
		mybatis.insert("AuctionDAO.insertAuction",aucVO);
	}
	
	public void insertOption(OptionAuctionVO oaVO) {
		mybatis.insert("AuctionDAO.insertOption",oaVO);
	}
	
	public void insertFile(FileUploadVO fileVO) {
		mybatis.insert("AuctionDAO.insertFile", fileVO);
	}
	
	public List<AuctionVO> auctionList(AuctionVO aucVO) {
		return mybatis.selectList("AuctionDAO.auctionList", aucVO);
	}
	
	
	public List<AuctionVO> searchAuction(AuctionVO aucVO) {
		return mybatis.selectList("AuctionDAO.searchAuction", aucVO);
	}
	
	public int auctionCount(AuctionVO aucVO) {
		System.out.println(":3 " + aucVO.getAuc_type());
		return (int) mybatis.selectOne("AuctionDAO.auctionCount", aucVO);
	}

	public void updateValue(AuctionVO aucVO) {
		// TODO Auto-generated method stub
		mybatis.update("AuctionDAO.updateValue", aucVO);
	}

	public AuctionVO getAuction(AuctionVO aucVO) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("AuctionDAO.getAuction", aucVO);
	}

	public List<OptionAuctionVO> auctionOption(OptionAuctionVO optionVO) {
		// TODO Auto-generated method stub
		return mybatis.selectList("AuctionDAO.auctionOption", optionVO);
	}

	public List<FileUploadVO> auctionFile(FileUploadVO fileVO) {
		// TODO Auto-generated method stub
		return mybatis.selectList("AuctionDAO.auctionFile", fileVO);
	}

	public void getAuctionDelete(AuctionVO aucVO) {
		// TODO Auto-generated method stub
		mybatis.update("AuctionDAO.getAuctionDelete", aucVO);
		mybatis.update("AuctionDAO.optionDelete", aucVO);
		mybatis.update("AuctionDAO.fileDelete", aucVO);
		mybatis.update("AuctionDAO.biddingDelete", aucVO);
	}

	public void getAuctionWinningBid(UserVO userVO, UserVO sellerUserVO) {
		// TODO Auto-generated method stub
		mybatis.update("AuctionDAO.buyerUpdata", userVO);
		mybatis.update("AuctionDAO.sellerUpdata", sellerUserVO);
	}

	public AuctionBiddingVO getMaxBidding(AuctionBiddingVO abVO) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("AuctionDAO.getMaxBidding", abVO);
	}

	public void insertBidding(AuctionBiddingVO abVO) {
		// TODO Auto-generated method stub
		mybatis.insert("AuctionDAO.insertBidding", abVO);
	}

	public void updateBidding(AuctionBiddingVO auctionBiddingVO) {
		// TODO Auto-generated method stub
		mybatis.update("AuctionDAO.updateBidding", auctionBiddingVO);
	}

	public List<AuctionVO> auctionAllList() {
		// TODO Auto-generated method stub
		return mybatis.selectList("AuctionDAO.auctionAllList");
	}

	public void timeExtension(AuctionVO aucVO, TimeExtensionRule timeExtensionRule) {
		// TODO Auto-generated method stub
		mybatis.update("AuctionDAO.timeExtension", aucVO);
	}

	public List<AuctionVO> hotAuctionAllList() {
		// TODO Auto-generated method stub
		return mybatis.selectList("AuctionDAO.hotAuctionList");
	}

	public void addHotAuction(AuctionVO auctionVO) {
		// TODO Auto-generated method stub
		mybatis.insert("AuctionDAO.addHotAuction", auctionVO);
	}

	public void getHotAuctionDelete(AuctionVO auctionVO) {
		// TODO Auto-generated method stub
		mybatis.delete("AuctionDAO.getHotAuctionDelete", auctionVO);
	}

	public AuctionBiddingVO auctionBidding(AuctionVO aucVO) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("AuctionDAO.auctionBidding", aucVO);
	}

	public int getAdvertising(AuctionVO aucVO) {
		// TODO Auto-generated method stub
		return (int)mybatis.selectOne("AuctionDAO.getAdvertising", aucVO);
	}
}
