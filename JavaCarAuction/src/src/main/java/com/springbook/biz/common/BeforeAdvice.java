package com.springbook.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class BeforeAdvice {

	@After("Log4jAdvice.allPointcut()")
	public void printLogging(JoinPoint jp) {
		String method = jp.getSignature().getName();
		System.out.println("[사전 처리] " + method + "()메소드 리턴값 : ");
	}
}
