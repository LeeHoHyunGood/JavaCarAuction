package com.springgame.biz.user.impl;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Service;

import com.springgame.biz.user.UserVO;
import com.springgame.view.user.LoginController;

@Service("loginService")
public class CustomAuthenticationProvider implements AuthenticationProvider {

	@Autowired
	private UserDAO userDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		String user_id = (String)authentication.getPrincipal();    
        String user_pw = (String)authentication.getCredentials();
        UserVO user = new UserVO();
        user.setAcc_id(user_id);
        user.setAcc_pw(user_pw);
        UserVO userVO = userDAO.getUser(user);
        logger.info("����ڰ� �Է��� �α��������Դϴ�. {}", user_id + "/" + user_pw);
        System.out.println(user_id + " : " + user_pw + " ~ " + userVO);
        if(user_id.equals(userVO.getAcc_id())&&user_pw.equals(userVO.getAcc_pw())){
        	if (userVO.getAcc_id().equals("admin")&&userVO.getAcc_pw().equals("admin")) {
        		logger.info("�������Դϴ�.");
        		List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
                roles.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
                 
                UsernamePasswordAuthenticationToken result = new UsernamePasswordAuthenticationToken(user_id, user_pw, roles);
                result.setDetails(new CustomUserDetails(user_id, user_pw));
                return result; 
        	} else {
            logger.info("���� �α����Դϴ�.");
            List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
            roles.add(new SimpleGrantedAuthority("ROLE_USER"));
             
            UsernamePasswordAuthenticationToken result = new UsernamePasswordAuthenticationToken(user_id, user_pw, roles);
            result.setDetails(new CustomUserDetails(user_id, user_pw));
            return result; 
        	}
        }else{
            logger.info("����� ũ������ ������ Ʋ���ϴ�. ������ �߻��մϴ�.");
            throw new BadCredentialsException("Bad credentials");
        }
	}

	@Override
	public boolean supports(Class<?> authentication) {
		return authentication.equals(UsernamePasswordAuthenticationToken.class);

	}


}
