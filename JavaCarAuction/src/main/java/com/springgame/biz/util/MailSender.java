package com.springgame.biz.util;

import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailSender {
	
	@Autowired
	private JavaMailSender mailSender;
	
	public void registerMailSend(String email, String key) {
		MimeMessage message = mailSender.createMimeMessage();
		
		try {
			message.addRecipient(RecipientType.TO, new InternetAddress(email));
			message.setSubject("Java RPG Game �̸��� ���� Ȯ��");
			String url = "http://localhost/account/registerAuth_proc.do?acc_email=" + email + "&key=" + key;
			System.out.println(" email : " + email + " key : " + key);
			String sendText = 
					"<h1>Java RPG Game �̸��� ���� Ȯ��</h1>" +
					"<h3><a href=\"http://localhost/index.jsp\">Java RPG Game ���� Ȩ������ ����</a></h3>" +
					"<h3>�̸��� ������ �ؾ߸� �α����� �Ҽ� �ֽ��ϴ�</h3>" + 
					"<a href=\"" + url + "\">" + "<img src=\"http://localhost/resources/img/jrg-logo.jpg\"></a>";
			message.setText(sendText, "utf-8", "html");
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		mailSender.send(message);
	}
}
