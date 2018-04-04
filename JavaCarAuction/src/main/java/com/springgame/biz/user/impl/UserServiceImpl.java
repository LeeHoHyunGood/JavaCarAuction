package com.springgame.biz.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springgame.biz.user.FacingVO;
import com.springgame.biz.user.UserService;
import com.springgame.biz.user.UserVO;
import com.springgame.biz.util.Crypto;
import com.springgame.biz.util.MailSender;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private MailSender mailSender;
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}


	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
		
	}

	@Override
	public int checkId(UserVO vo) {
		return userDAO.checkId(vo);
	}


	@Override
	public void accountJoin(UserVO vo) {
		String email = vo.getAcc_email() + "@" + vo.getAcc_email2();
		vo.setAcc_email(email);
		if(userDAO.insertUser(vo)==1) {
			mailSender.registerMailSend(vo.getAcc_email(), Crypto.convertSHA256(vo.getAcc_email()));
		}
	}


	@Override
	public void authUser(UserVO vo) {
		userDAO.authUser(vo);
	}


	@Override
	public void updateUser(UserVO vo) {
		userDAO.updateUser(vo);
	}


	@Override
	public int checkNickName(UserVO vo) {
		return userDAO.checkNickName(vo);
	}


	@Override
	public void deleteUser(UserVO vo) {
		userDAO.deleteUser(vo);
	}


	@Override
	public List<UserVO> getUserList() {
		// TODO Auto-generated method stub
		return userDAO.userList();
	}


	@Override
	public void updateGrade(UserVO userVO, int i) {
		// TODO Auto-generated method stub
		userVO.setAcc_grade(i);
		userDAO.updateGrade(userVO);
	}


	@Override
	public UserVO userMoney(UserVO userVO) {
		return userDAO.userMoney(userVO);
	}


	@Override
	public List<FacingVO> getFacingList(FacingVO facingVO) {
		// TODO Auto-generated method stub
		return userDAO.getFacingList(facingVO);
	}


	@Override
	public FacingVO getFacing(FacingVO facingVO) {
		// TODO Auto-generated method stub
		return userDAO.getFacing(facingVO);
	}


	@Override
	public void deleteFacing(FacingVO facingVO) {
		// TODO Auto-generated method stub
		userDAO.deleteFacing(facingVO);
	}


	@Override
	public void deleteAllFacing(FacingVO facingVO) {
		// TODO Auto-generated method stub
		userDAO.deleteAllFacing(facingVO);
	}


	@Override
	public UserVO getUsersByID(UserVO userVO) {
		// TODO Auto-generated method stub
		return userDAO.getUsersByID(userVO);
	}


	@Override
	public void sendFacing(FacingVO facingVO) {
		// TODO Auto-generated method stub
		userDAO.sendFacing(facingVO);
	}


	@Override
	public int facing(FacingVO facingVO) {
		// TODO Auto-generated method stub
		return userDAO.facing(facingVO);
	}


	@Override
	public void loginUser(UserVO userVO) {
		// TODO Auto-generated method stub
		userDAO.loginUser(userVO);
	}


}