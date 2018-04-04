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
        logger.info("사용자가 입력한 로그인정보입니다. {}", user_id + "/" + user_pw);
        System.out.println(user_id + " : " + user_pw + " ~ " + userVO);
        if(user_id.equals(userVO.getAcc_id())&&user_pw.equals(userVO.getAcc_pw())){
        	if (userVO.getAcc_id().equals("admin")&&userVO.getAcc_pw().equals("admin")) {
        		logger.info("관리자입니다.");
        		List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
                roles.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
                 
                UsernamePasswordAuthenticationToken result = new UsernamePasswordAuthenticationToken(user_id, user_pw, roles);
                result.setDetails(new CustomUserDetails(user_id, user_pw));
                return result; 
        	} else {
            logger.info("정상 로그인입니다.");
            List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
            roles.add(new SimpleGrantedAuthority("ROLE_USER"));
             
            UsernamePasswordAuthenticationToken result = new UsernamePasswordAuthenticationToken(user_id, user_pw, roles);
            result.setDetails(new CustomUserDetails(user_id, user_pw));
            return result; 
        	}
        }else{
            logger.info("사용자 크리덴셜 정보가 틀립니다. 에러가 발생합니다.");
            throw new BadCredentialsException("Bad credentials");
        }
	}

	@Override
	public boolean supports(Class<?> authentication) {
		return authentication.equals(UsernamePasswordAuthenticationToken.class);

	}


}
