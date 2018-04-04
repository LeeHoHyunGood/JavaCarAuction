package com.springgame.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.util.StopWatch;

import com.springgame.biz.board.BoardVO;

public class LogAdvice {
	public void printLog(JoinPoint jp) {
		String str = jp.getSignature().getName();
		Object[] args = jp.getArgs();
		for (Object arg : args) {
			if (arg instanceof BoardVO) {
				BoardVO bvo = (BoardVO)arg;
				bvo.getTitle();
			}
		}
		System.out.println("[공통 로그] 비즈니스 로직 수행전 동작" + str + " : " + jp.getArgs());
	}
	
	public void afterPrintLog(JoinPoint jp, Object obj) {
		if (obj == null) {
			System.out.println("null 입니다");
		}
		System.out.println("찍기용");
	}
	
	public Object aroundPrintLog(ProceedingJoinPoint pjp) throws Throwable {
		String method = pjp.getSignature().getName();
		
		StopWatch stopWatch = new StopWatch();
		stopWatch.start();
		
		Object obj = pjp.proceed();
		
		stopWatch.stop();
		System.out.println(method + "() 메소드 수행에 걸린 시간 : " + stopWatch.getTotalTimeMillis() + " (ms)초");
		return obj;
	}
}