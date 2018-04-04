package com.springgame.biz.board.auction;

import java.util.List;

import com.springgame.biz.admin.TimeExtensionRule;

public interface AuctionService {
	void insertAuction(AuctionVO aucVO, List<OptionAuctionVO> optionList, List<FileUploadVO> fileList);
	
	List<AuctionVO> auctionList(AuctionVO aucVO);
	
	List<AuctionVO> searchAuction(AuctionVO aucVO);
	
	int auctionCount(AuctionVO aucVO);

	void updataValue(AuctionVO aucVO);

	AuctionVO getAuction(AuctionVO aucVO);

	void getAuctionDelete(AuctionVO aucVO);

	AuctionBiddingVO getMaxBidding(AuctionBiddingVO abVO);

	void insertBidding(AuctionBiddingVO abVO);

	void updateBidding(AuctionBiddingVO auctionBiddingVO);

	List<AuctionVO> auctionAllList();

	void timeExtension(AuctionVO aucVO, TimeExtensionRule timeExtensionRule);

	List<AuctionVO> hotAuctionAllList();

	void addHotAuction(AuctionVO auctionVO);

	void getHotAuctionDelete(AuctionVO auctionVO);

	AuctionBiddingVO auctionBidding(AuctionVO aucVO);

	int getAdvertising(AuctionVO aucVO);

}
