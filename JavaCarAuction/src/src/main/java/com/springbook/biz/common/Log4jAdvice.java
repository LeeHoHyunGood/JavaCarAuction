package com.springbook.biz.common;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class Log4jAdvice {
	
	@Pointcut("execution(* com.springbook.biz..*lmpl.*(..))")
	public void allPointcut() {}
	
}
