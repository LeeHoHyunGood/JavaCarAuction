package com.springgame.view.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springgame.biz.board.BoardService;
import com.springgame.biz.board.BoardVO;
import com.springgame.biz.board.ReplyService;
import com.springgame.biz.board.ReplyVO;

@Controller
public class ReplyController {
    @Autowired
    private ReplyService replyService;
    @Autowired
    private BoardService bService;
    
    // ��� �Է�
    @RequestMapping(value="/insertReply.do", method=RequestMethod.POST)
    public String insert(ReplyVO vo, HttpSession session, Model model, HttpServletRequest req){
    	String strReferer = req.getHeader("referer");
		 
    	System.out.println(vo);    	
    	replyService.create(vo);
    	BoardVO board = new BoardVO();
    	board.setSeq(vo.getParent_idx());
        List<ReplyVO> list = replyService.list(board);
        BoardVO boardVO = bService.getBoard(board);
        if(strReferer == null){
  		  return "redirect:getBoard.do?seq="+vo.getParent_idx()+"&writer_idx="+vo.getReplyer_idx()+"&category_idx="+boardVO.getCategory_idx();
  		 }
        model.addAttribute("replylist", list);
        model.addAttribute("board", boardVO);
        
        
        return "redirect:getBoard.do?seq="+vo.getParent_idx()+"&writer_idx="+vo.getReplyer_idx()+"&category_idx="+boardVO.getCategory_idx();
    }
    
	//�� �� ��ȸ
	@RequestMapping("/getReply.do")
	public String getBoard(ReplyVO vo, Model model) {
		ReplyVO reply = replyService.getReply(vo);
	    // �信 ������ ������ ����
	    model.addAttribute("reply", reply);
		return "updateReply";
	}
   
    //��� ����
  	@RequestMapping("/updateReply.do")
  	public String updateReply(ReplyVO vo, HttpServletRequest req) {
  		String strReferer = req.getHeader("referer");
		 
		 if(strReferer == null){
		  return "redirect:getBoard.do?seq="+vo.getParent_idx()+"&modify=true";
		 }
  		
  		System.out.println("updateReply.do �����մϴ�.");
  		System.out.println(vo);
  		replyService.updateReply(vo);
  		return "redirect:getBoard.do?seq="+vo.getParent_idx()+"&modify=true";
  	}
    
	//��� ����
	@RequestMapping("/deleteReply.do")
	public String deleteReply(ReplyVO vo, HttpServletRequest req) {	
		String strReferer = req.getHeader("referer");
		 
		 if(strReferer == null){
		  return "redirect:getBoard.do?seq="+vo.getParent_idx()+"&modify=true";
		 }
		
		replyService.deleteReply(vo);
		return "redirect:getBoard.do?seq="+vo.getParent_idx()+"&modify=true";	
	}
    
}
