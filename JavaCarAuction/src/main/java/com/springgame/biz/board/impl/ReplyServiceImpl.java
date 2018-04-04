package com.springgame.biz.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springgame.biz.board.BoardVO;
import com.springgame.biz.board.ReplyService;
import com.springgame.biz.board.ReplyVO;

@Service("replyService")
public class ReplyServiceImpl implements ReplyService {    
    @Autowired
    ReplyDAO replyDAO;
    
    // ��� ���
    @Override
    public List<ReplyVO> list(BoardVO vo) {
        return replyDAO.list(vo);
    }
    // ��� �ۼ�
    @Override
    public void create(ReplyVO vo) {
        replyDAO.create(vo);
    }
    // ��� ����
    @Override
    public void updateReply(ReplyVO vo) {
    	replyDAO.updateReply(vo); 
    }
    // ��� ����
    @Override
    public void deleteReply(ReplyVO vo) {
    	replyDAO.deleteReply(vo);
    }
	@Override
	public void deleteReplyList(BoardVO vo) {
		replyDAO.deleteReplyList(vo);
	}
	@Override
	public ReplyVO getReply(ReplyVO vo) {
		return 	replyDAO.getReply(vo);
	}    

}
