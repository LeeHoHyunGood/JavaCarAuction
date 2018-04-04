package com.springgame.biz.board;

import java.util.List;

import com.springgame.biz.board.ReplyVO;

public interface ReplyService {
	// ��� ���
    public List<ReplyVO> list(BoardVO vo);
    // ��� �Է�
    public void create(ReplyVO vo);
    // ��� ����
    public void updateReply(ReplyVO vo);
    // ��� ����
    public void deleteReply(ReplyVO vo);
    // �� ��ü ����
    public void deleteReplyList(BoardVO vo);
    // ��� ��������
	public ReplyVO getReply(ReplyVO vo);
}
