package com.springgame.view.board;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.springgame.biz.board.BoardCategoryService;
import com.springgame.biz.board.BoardCategoryVO;
import com.springgame.biz.board.BoardService;
import com.springgame.biz.board.BoardVO;
import com.springgame.biz.board.ReplyService;
import com.springgame.biz.board.ReplyVO;
import com.springgame.biz.user.UserVO;

@Controller
@SessionAttributes("board")
public class BoardController {
	@Autowired
	private BoardService boardService; 
	@Autowired
    private ReplyService replyService;
	@Autowired
    private BoardCategoryService bcService;
	//글 등록
	@RequestMapping(value="/insertBoard.do", method=RequestMethod.POST)
	public String insertBorad(BoardVO vo, UserVO uvo,Model model, BoardCategoryVO bvo, @RequestParam(value="file",required=false) MultipartFile file,MultipartHttpServletRequest multi) throws IOException{
		
		String strReferer = multi.getHeader("referer");
		 
		 if(strReferer == null){
		  return "redirect:getBoardList.do?category_idx="+vo.getCategory_idx();
		 }
		
		vo.setWriter_idx(uvo.getAcc_idx());
		System.out.println(vo.getCategory_idx() + "히히히");
		System.out.println(bvo);
		if(vo.getCategory_idx()!=1) {
			if(!file.isEmpty()) {
		String FileName=file.getOriginalFilename();
		String path = multi.getSession().getServletContext().getRealPath("/")+"resources/upload/";
		String RandomName = "";
		RandomName = System.currentTimeMillis()+"."+FileName.substring(FileName.lastIndexOf(".")+1);
		 File f = new File(path);
		 if(!f.isDirectory()) {
			 f.mkdirs();
		 }
	     file.transferTo(new File(path + RandomName) );
	     System.out.println(file.getName());
	     System.out.println(file.getOriginalFilename());
	     vo.setFilename(RandomName);
			}
		}
	     boardService.insertBoard(vo);
	     return "redirect:getBoardList.do?category_idx="+vo.getCategory_idx();
	}

	//글 수정
	@RequestMapping("/updateBoard.do")
	public String updateBoard(@ModelAttribute("board") BoardVO vo, UserVO uvo, @RequestParam(value="file",required=false) MultipartFile file,MultipartHttpServletRequest multi)throws IOException {
		vo.setWriter_idx(uvo.getAcc_idx());
		String strReferer = multi.getHeader("referer");
		 
		 if(strReferer == null){
		  return "redirect:getBoardList.do?category_idx="+vo.getCategory_idx();
		 }
		
		if(vo.getCategory_idx()!=1) {
			if(!file.isEmpty()) {
		String FileName=file.getOriginalFilename();
		String path = multi.getSession().getServletContext().getRealPath("/")+"upload/";
		String RandomName = "";
		RandomName = System.currentTimeMillis()+"."+FileName.substring(FileName.lastIndexOf(".")+1);
		 File f = new File(path);
		 if(!f.isDirectory()) {
			 f.mkdirs();
		 }
	     file.transferTo(new File(path + RandomName) );
	     System.out.println(file.getName());
	     System.out.println(file.getOriginalFilename());
	     vo.setFilename(RandomName);
			}
		}
		boardService.updateBoard(vo);
		return "redirect:getBoard.do?seq="+vo.getSeq()+"&writer_idx="+vo.getWriter_idx()+"&category_idx="+vo.getCategory_idx();
	}
	//글 삭제
	@RequestMapping(value="/deleteBoard.do")
	public String deleteBoard(BoardVO vo, UserVO uvo, HttpServletRequest req) {
		vo.setWriter_idx(uvo.getAcc_idx());
		System.out.println(uvo.getAcc_idx()+"히히히");
		 String strReferer = req.getHeader("referer");
		 
		 if(strReferer == null){
		  return "redirect:getBoardList.do?category_idx="+vo.getCategory_idx();
		 }
		
		replyService.deleteReplyList(vo);
		boardService.deleteBoard(vo);
		return "redirect:getBoardList.do?category_idx="+vo.getCategory_idx();
	}

	//글 상세 조회
	@RequestMapping("/getBoard.do")
	public String getBoard(BoardVO vo,  Model model,UserVO uvo) {
		if(!vo.getModify()) {
			boardService.updateCnt(vo);
		}
		BoardVO readBoard = boardService.getBoard(vo);
		model.addAttribute("board", readBoard);	//Model 정보 저장
		vo.setWriter_idx(uvo.getAcc_idx());
		//		readBoard.setWriter_idx(vo.getWriter_idx());
		System.out.println(readBoard.getWriter_idx());
		List<ReplyVO> list = replyService.list(vo);
	    model.addAttribute("replylist", list);
		return "getBoard";	//View 이름 리턴
	}

	//검색 조건 목록 설정
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String,String>();
		conditionMap.put("제목", "TITLE");
		conditionMap.put("내용", "CONTENT");
		return conditionMap;
	}

	//글 목록 검색
	@RequestMapping("/getBoardList.do")
	public String getBoardList(BoardVO vo, Model model) {
//		//Null Check
//		if(vo.getSearchCondition() == null) {
//			vo.setSearchCondition("TITLE");
//		}
//		if(vo.getSearchKeyword() == null) {
//			vo.setSearchKeyword("");
//		}
		
		//Model 정보 저장
		int boardCount = boardService.getBoardCount(vo);
		model.addAttribute("keywolrd",vo);
		int start = ((int)Math.ceil((double)vo.getPageNumber()/5)*5-5)+1;
		int end = ((int)Math.ceil((double)boardCount/10));
		int realendpage = end;
		if(start+4<end) {
			end = start+4;
		} 
		BoardCategoryVO bvo = new BoardCategoryVO();
		bvo.setIdx(vo.getCategory_idx());
		model.addAttribute("totalcount", boardCount);
		model.addAttribute("board", vo);
		model.addAttribute("time",new Date(System.currentTimeMillis()).getTime());
		model.addAttribute("category", bcService.getBoardCategory(bvo));
		model.addAttribute("startPage", start);
		model.addAttribute("endPage", end);
		model.addAttribute("realEndPage", realendpage);
		List<BoardVO> listBoard = boardService.getBoardList(vo);
		model.addAttribute("boardList", listBoard);	//Model 정보 저장
		return "getBoardList";	//View 이름 리턴
	}
}