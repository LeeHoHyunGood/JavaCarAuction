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
		System.out.println("[���� �α�] ����Ͻ� ���� ������ ����" + str + " : " + jp.getArgs());
	}
	
	public void afterPrintLog(JoinPoint jp, Object obj) {
		if (obj == null) {
			System.out.println("null �Դϴ�");
		}
		System.out.println("����");
	}
	
	public Object aroundPrintLog(ProceedingJoinPoint pjp) throws Throwable {
		String method = pjp.getSignature().getName();
		
		StopWatch stopWatch = new StopWatch();
		stopWatch.start();
		
		Object obj = pjp.proceed();
		
		stopWatch.stop();
		System.out.println(method + "() �޼ҵ� ���࿡ �ɸ� �ð� : " + stopWatch.getTotalTimeMillis() + " (ms)��");
		return obj;
	}
}