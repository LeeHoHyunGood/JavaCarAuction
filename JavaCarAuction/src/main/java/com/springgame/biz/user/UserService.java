package com.springgame.biz.user;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public interface UserService {
	
	//CRUD 기능의 메소드 구현
	//회원 등록
	public UserVO getUser(UserVO vo);
	
	public int checkId(UserVO vo);
	
	public void accountJoin(UserVO vo);
	
	public void authUser(UserVO vo);
	
	public void updateUser(UserVO vo);

	public int checkNickName(UserVO vo);
	
	public void deleteUser(UserVO vo);

	public List<UserVO> getUserList();

	public void updateGrade(UserVO userVO, int i);

	public UserVO userMoney(UserVO userVO);

	public List<FacingVO> getFacingList(FacingVO facingVO);

	public FacingVO getFacing(FacingVO facingVO);

	public void deleteFacing(FacingVO facingVO);

	public void deleteAllFacing(FacingVO facingVO);

	public UserVO getUsersByID(UserVO userVO);

	public void sendFacing(FacingVO facingVO);

	public int facing(FacingVO facingVO);

	public void loginUser(UserVO userVO);

}
