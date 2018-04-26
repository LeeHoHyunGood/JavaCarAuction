package com.springgame.view.auction;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.springgame.biz.admin.AdminService;
import com.springgame.biz.admin.HotAuctionRule;
import com.springgame.biz.admin.TimeExtensionRule;
import com.springgame.biz.board.auction.AuctionBiddingVO;
import com.springgame.biz.board.auction.AuctionService;
import com.springgame.biz.board.auction.AuctionVO;
import com.springgame.biz.board.auction.FileUploadVO;
import com.springgame.biz.board.auction.OptionAuctionVO;
import com.springgame.biz.user.UserService;
import com.springgame.biz.user.UserVO;
import com.springgame.biz.util.AuctionThread;

@Controller
public class AuctionController {
	
	private static final int RESULT_EXCEED_SIZE = -2;
    private static final int RESULT_UNACCEPTED_EXTENSION = -1;
    private static final int RESULT_SUCCESS = 1;
    private static final long LIMIT_SIZE = 10 * 1024 * 1024;
    

	@Autowired
	AuctionService auctionService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private TimeExtensionRule timeExtensionRule;
	@Autowired
	private HotAuctionRule hotAuctionRule;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private AuctionThread auctionThread;
//	@RequestMapping("/auction/insertAuction.do")
//	public String insertAuction(AuctionVO aucVO,DetailAuctionVO daVO, HttpSession session) {
//		System.out.println(aucVO.getAuc_title());
//		return "../insertauction.jsp";
//	}
	
    
	@RequestMapping("/")
    public String main() {
        return "index";
    }
 
    //로직은 언제나 Service에서 짜도록 하자.
    //중간실패시 rollback은 고려하지 않았음.
    @ResponseBody
    @RequestMapping(value="/insertAuction.do", method=RequestMethod.POST)
    public int multiImageUpload(@RequestParam("files")List<MultipartFile> images,@RequestParam(value="oa_option", required=false)Integer[] option_type,
    		AuctionVO aucVO, MultipartHttpServletRequest multi, HttpSession sess) {
    	System.out.println("온다");
        long sizeSum = 0;
        String[] fsext = {"Bytes", "KB", "MB", "GB"};
        String fileSize = null;
        List<OptionAuctionVO> optionList = new ArrayList<OptionAuctionVO>();
        List<FileUploadVO> fileList = new ArrayList<FileUploadVO>();
        for(MultipartFile image : images) {
            String originalName = image.getOriginalFilename();
            //확장자 검사
            if(!isValidExtension(originalName)){
                return RESULT_UNACCEPTED_EXTENSION;
            }
            
            //용량 검사
            sizeSum += image.getSize();
            if(sizeSum >= LIMIT_SIZE) {
                return RESULT_EXCEED_SIZE;
            }
            int i = 0;
            
            while(sizeSum>900){
            	sizeSum/=1024;
            	i++;
            }
            fileSize = (Math.round(sizeSum*100)/100)+""+fsext[i];
            //TODO 저장..
            String path = multi.getSession().getServletContext().getRealPath("/") + "resources/upload/";
            String newFileName = "";
            System.out.println(path);
                           
            File dir = new File(path);
            if(!dir.isDirectory()){
                dir.mkdir();
            }
            
              String fileName = image.getOriginalFilename();
              System.out.println("실제 파일 이름 : " +fileName);
              newFileName = System.currentTimeMillis()+"."
                      +fileName.substring(fileName.lastIndexOf(".")+1);
              FileUploadVO fileVO = new FileUploadVO();
              fileVO.setFile_name(newFileName);
              fileVO.setFile_size(fileSize);
              fileList.add(fileVO);
              try {
            	  image.transferTo(new File(path+newFileName));
              } catch (Exception e) {
                  e.printStackTrace();
              }

        }
        for (Integer option : option_type) {
        	OptionAuctionVO oaVO = new OptionAuctionVO();
        	oaVO.setOa_option(option);
        	optionList.add(oaVO);
        }
        System.out.println(aucVO.getAuc_startvalue());
        auctionService.insertAuction(aucVO, optionList, fileList);
        AuctionVO auctionVo = auctionService.getAuction(aucVO);
        auctionThread.addThread(auctionVo);
//        sess.setAttribute("imgss", "resources/img/thumb/cS-1.jpg");
        //실제로는 저장 후 이미지를 불러올 위치를 콜백반환하거나,
        //특정 행위를 유도하는 값을 주는 것이 옳은 것 같다.
        return RESULT_SUCCESS;
    }
    
    @RequestMapping("/auctionList.do")
    public String auctionList(AuctionVO aucVO, HttpSession sess) {
    	sess.setAttribute("hotAuctionList", auctionThread.hotAuctionList);
    	System.out.println(aucVO.getAuc_type());
    	int page = 0+aucVO.getPage();
    	if (page <= 2) {
    		page = 0;
    	} else if (page >= 3) {
    		page = page-2;
    	}
    	int pageCount = auctionService.auctionCount(aucVO)/8;
    	int pagebolak = pageCount%1+5+page-1;
    	System.out.println(" s " + page);
    	System.out.println(pagebolak);
    	sess.setAttribute("auctionList", auctionService.auctionList(aucVO));
    	sess.setAttribute("pageCount", pageCount);
    	sess.setAttribute("pageGo", page);
    	sess.setAttribute("auction", aucVO);
    	sess.setAttribute("pagebolak", pagebolak);
    	System.out.println(" : " + pageCount);
    	return "auctionList";
    }
    
    @RequestMapping("/searchAuction.do")
    public String searchAuction(AuctionVO aucVO, HttpSession sess) {
    	sess.setAttribute("hotAuctionList", auctionThread.hotAuctionList);
    	System.out.println(" : " + aucVO.getAuc_maker() + " : " + aucVO.getAuc_model());
    	int page = 0+aucVO.getPage();
    	if (page <= 2) {
    		page = 0;
    	} else if (page >= 3) {
    		page = page-2;
    	}
    	int pageCount = auctionService.auctionCount(aucVO)/8;
    	sess.setAttribute("auctionList", auctionService.searchAuction(aucVO));
    	sess.setAttribute("pageCount", pageCount);
    	sess.setAttribute("pageGo", page);
    	sess.setAttribute("auction", aucVO);
    	System.out.println(" ~ " + pageCount);
    	return "auctionList";
    }
    
    @RequestMapping("/getAuction.do")
    public String getAuction(AuctionVO aucVO, HttpSession sess) {
    	System.out.println(" 경매 : " + aucVO.getAuc_idx());
    	AuctionVO auctionVO = auctionService.getAuction(aucVO);
    	UserVO userVO = new UserVO();
    	userVO.setAcc_idx(auctionVO.getAcc_idx());
    	userVO = userService.getUsersByID(userVO);
    	sess.setAttribute("getAuction", auctionVO);
    	sess.setAttribute("auctionUser", userVO);
    	
    	String time = auctionVO.getAuc_time();
    	String yearTime = time.split(",")[0];
    	String ddayTime = time.split(",")[1];
    	String dayTime = time.split(",")[2];
    	String timeTime = time.split(",")[3];
    	String minTime = time.split(",")[4];
    	String secTime = time.split(",")[5];
    	sess.setAttribute("yearTime", yearTime);
    	sess.setAttribute("ddayTime", ddayTime);
    	sess.setAttribute("dayTime", dayTime);
    	sess.setAttribute("timeTime", timeTime);
    	sess.setAttribute("minTime", minTime);
    	sess.setAttribute("secTime", secTime);
    	
    	sess.setAttribute("auctionOptionList", auctionVO.getOptionList());
    	sess.setAttribute("auctionImgList", auctionVO.getFileList());
    	
    	return "getAuction";
    }
    
    @RequestMapping("/auctionValue.do")
    public String auctionValue(AuctionVO aucVO, HttpSession sess) {
    	System.out.println("입찰할 돈 : " + aucVO.getAuc_value() + " 입찰한 경매 : " + aucVO.getAuc_idx());
    	
    	System.out.println(timeExtensionRule + " 시간 " + timeExtensionRule.getTer_time_extension() + " # ");

    	auctionThread.timeExtension(aucVO);
    	//    	timeExtensionRule
//    	if (aucVO.getAuc_time() != "") {
//    		if (Integer.parseInt(aucVO.getAuc_time()) <= timeExtensionRule.getTer_end_time()) {
//    			System.out.println("늘려랏");
//    			int minTimeInt = Integer.parseInt(aucVO.getAuc_time()) + timeExtensionRule.getTer_time_extension();
//    			String minTime = Integer.toString(minTimeInt);
//    			sess.setAttribute("endMinTime", minTime);
//    		}
//    	}
    	
    	auctionService.updataValue(aucVO);
    	AuctionBiddingVO abVO = new AuctionBiddingVO();
    	abVO.setAuc_idx(aucVO.getAuc_idx());
    	AuctionBiddingVO auctionBiddingVO = auctionService.getMaxBidding(abVO);
    	if (auctionBiddingVO == null) {
    		abVO.setAcc_max_idx(aucVO.getAcc_idx());
    		abVO.setAb_maxvalue(aucVO.getAuc_value());
    		auctionService.insertBidding(abVO);
    	} else {
    		auctionBiddingVO.setAcc_agomax_idx(auctionBiddingVO.getAcc_max_idx());
    		auctionBiddingVO.setAcc_max_idx(aucVO.getAcc_idx());
    		auctionBiddingVO.setAb_maxvalue(aucVO.getAuc_value());
    		auctionService.updateBidding(auctionBiddingVO);
    	}
    	AuctionVO auctionVO = auctionService.getAuction(aucVO);
    	System.out.println("입찰할 돈 : " + auctionVO.getAuc_value() + " 입찰한 경매 : " + auctionVO.getAuc_idx() + " : " + auctionVO.getAuc_counter());
    	sess.setAttribute("getAuction", auctionVO);
    	return "getAuction";
    }
    
    @RequestMapping(value="/getAuctionTime.do", method=RequestMethod.POST)
    public @ResponseBody AuctionVO getAuctionTime(AuctionVO aucVO, UserVO userVO) {
    	System.out.println("옴");
    	System.out.println(" : " + aucVO.getAuc_idx());
    	UserVO uvo = userService.userMoney(userVO);
    	AuctionVO auctionVO = auctionService.getAuction(aucVO);
    	auctionVO.setAuc_startvalue((int)uvo.getAcc_money());
    	return auctionVO;
    }
    
    @RequestMapping(value="/getAuctionDelete.do", method=RequestMethod.POST)
    public @ResponseBody int getAuctionDelete(AuctionVO aucVO) {
    	System.out.println("옴삭제");
    	System.out.println(" : " + aucVO.getAuc_idx() + " : " + aucVO.getAcc_idx());
    	auctionService.getAuctionDelete(aucVO);
    	return RESULT_SUCCESS;
    }
    
    @RequestMapping(value="/getAdvertising.do", method=RequestMethod.POST)
    public @ResponseBody int getAdvertising(AuctionVO aucVO) {
    	int endConter = auctionService.getAdvertising(aucVO);
    	return endConter;
    }
    
    //required above jdk 1.7 - switch(String)
    private boolean isValidExtension(String originalName) {
        String originalNameExtension = originalName.substring(originalName.lastIndexOf(".") + 1);
        switch(originalNameExtension) {
        case "jpg":
        case "png":
        case "gif":
            return true;
        }
        return false;
    }
}
