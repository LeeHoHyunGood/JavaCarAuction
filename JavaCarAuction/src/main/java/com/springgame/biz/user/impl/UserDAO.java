package com.springgame.biz.user.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springgame.biz.user.FacingVO;
import com.springgame.biz.user.UserVO;

//DAO(Data Access Object)
@Repository
public class UserDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public UserVO getUser(UserVO user) {
		return (UserVO) mybatis.selectOne("UserDAO.getUser", user);
	}
	
	public int insertUser(UserVO user) {
		System.out.println("회원가입시작");
		System.out.println(" e : " + user.getAcc_email() + " 2 : " + user.getAcc_email2());
		System.out.println("id : " + user.getAcc_id() + " pw : " + user.getAcc_pw() + " name : " + user.getAcc_name() + " email : " + user.getAcc_email() + " hp : " + user.getAcc_hp() + " day : " + user.getAcc_birthday());
		return mybatis.insert("UserDAO.insertUser", user);
	}
	
	public void updateUser(UserVO user) {
		System.out.println("수정 시작");
		mybatis.update("UserDAO.updateUser", user);
	}
	
	public void deleteUser(UserVO user) {
		System.out.println("회원삭제");
		mybatis.delete("UserDAO.deleteUser", user);
	}
	
	public int checkId(UserVO user) {
		System.out.println(user.getAcc_id());
		return (int) mybatis.selectOne("UserDAO.checkId", user);
	}
	
	public int checkNickName(UserVO user) {
		System.out.println(user.getAcc_nickname());
		return (int) mybatis.selectOne("UserDAO.checkNickName", user);
	}
	
	public void authUser(UserVO vo) {
		mybatis.update("UserDAO.authUser", vo);
	}
	
	public UserVO getUsersByID(UserVO userVO) {
		return mybatis.selectOne("UserDAO.getUsersByID", userVO);
	}

	public List<UserVO> userList() {
		// TODO Auto-generated method stub
		return mybatis.selectList("UserDAO.userList");
	}

	public void updateGrade(UserVO userVO) {
		// TODO Auto-generated method stub
		mybatis.update("UserDAO.updateGrade", userVO);
	}

	public UserVO userMoney(UserVO userVO) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("UserDAO.userMoney", userVO);
	}

	public List<FacingVO> getFacingList(FacingVO facingVO) {
		// TODO Auto-generated method stub
		return mybatis.selectList("UserDAO.getFacingList", facingVO);
	}

	public FacingVO getFacing(FacingVO facingVO) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("UserDAO.getFacing", facingVO);
	}

	public void deleteFacing(FacingVO facingVO) {
		// TODO Auto-generated method stub
		mybatis.delete("UserDAO.deleteFacing", facingVO);
	}

	public void deleteAllFacing(FacingVO facingVO) {
		// TODO Auto-generated method stub
		mybatis.delete("UserDAO.deleteAllFacing", facingVO);
	}

	public void sendFacing(FacingVO facingVO) {
		// TODO Auto-generated method stub
		mybatis.insert("UserDAO.sendFacing", facingVO);
	}

	public int facing(FacingVO facingVO) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("UserDAO.facing", facingVO);
	}

	public void loginUser(UserVO userVO) {
		// TODO Auto-generated method stub
		mybatis.update("UserDAO.loginUser", userVO);
	}
}
