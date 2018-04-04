package com.springgame.biz.user.impl;

import java.util.Collection;
import java.util.Enumeration;
import java.util.Hashtable;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

public class LoginManager implements HttpSessionBindingListener {

	private static LoginManager loginManager = null;
	private static Hashtable loginUsers = new Hashtable();
	
	public static synchronized LoginManager getInstance(){
        if(loginManager == null){
            loginManager = new LoginManager();
        }
        return loginManager;
    }
	
	@Override
	public void valueBound(HttpSessionBindingEvent event) {
		//session���� put�Ѵ�.
        loginUsers.put(event.getSession(), event.getName());
        System.out.println(event.getName() + "���� �α��� �ϼ̽��ϴ�.");
        System.out.println("���� ������ �� : " +  getUserCount());
	}

	@Override
	public void valueUnbound(HttpSessionBindingEvent event) {
        loginUsers.remove(event.getSession());
        System.out.println("  " + event.getName() + "���� �α׾ƿ� �ϼ̽��ϴ�.");
        System.out.println("���� ������ �� : " +  getUserCount());
	}
	
	/*
     * �Է¹��� ���̵� �ؽ����̺��� ����. 
     * @param userID ����� ���̵�
     * @return void
     */ 
    public void removeSession(String userId){
         Enumeration e = loginUsers.keys();
         HttpSession session = null;
         while(e.hasMoreElements()){
              session = (HttpSession)e.nextElement();
              if(loginUsers.get(session).equals(userId)){
                  //������ invalidate�ɶ� HttpSessionBindingListener�� 
                  //�����ϴ� Ŭ������ valueUnbound()�Լ��� ȣ��ȴ�.
                  session.invalidate();
              }
         }
    }
    
    /*
     * ����ڰ� �Է��� ID, PW�� �´��� Ȯ���ϴ� �޼ҵ�
     * @param userID ����� ���̵�
     * @param userPW ����� �н�����
     * @return boolean ID/PW�� ��ġ�ϴ� �� ����
     */
    public boolean isValid(String userId, String userPw){
        /*
         * �̺κп� Database ������ ����.
         */
        return true;
    }
    
    /*
     * �ش� ���̵��� ���� ����� �������ؼ� 
     * �̹� ������� ���̵������� Ȯ���Ѵ�.
     * @param userID ����� ���̵�
     * @return boolean �̹� ��� ���� ��� true, ������� �ƴϸ� false
     */
    public boolean isUsing(String userID){
        return loginUsers.containsValue(userID);
    }
    
    /*
     * �α����� �Ϸ��� ������� ���̵� ���ǿ� �����ϴ� �޼ҵ�
     * @param session ���� ��ü
     * @param userID ����� ���̵�
     */
    public void setSession(HttpSession session, String userId){
        //�̼����� Session Binding�̺�Ʈ�� �Ͼ�� ����
        //name������ userId, value������ �ڱ��ڽ�(HttpSessionBindingListener�� �����ϴ� Object)
        session.setAttribute(userId, userId);//login�� �ڱ��ڽ��� ����ִ´�.
    }
    
    /*
     * �Է¹��� ����Object�� ���̵� �����Ѵ�.
     * @param session : ������ ������� session Object
     * @return String : ������ ���̵�
    */
   public String getUserID(HttpSession session){
       return (String)loginUsers.get(session);
   }
    
    
   /*
    * ���� ������ �� ����� ��
    * @return int  ���� ������ ��
    */
   public int getUserCount(){
       return loginUsers.size();
   }
    
    
   /*
    * ���� �������� ��� ����� ���̵� ���
    * @return void
    */
   public void printloginUsers(){
       Enumeration e = loginUsers.keys();
       HttpSession session = null;
       System.out.println("===========================================");
       int i = 0;
       while(e.hasMoreElements()){
           session = (HttpSession)e.nextElement();
           System.out.println((++i) + ". ������ : " +  loginUsers.get(session));
       }
       System.out.println("===========================================");
    }
    
   /*
    * ���� �������� ��� ����ڸ���Ʈ�� ����
    * @return list
    */
   public Collection getUsers(){
       Collection collection = loginUsers.values();
       return collection;
   }

}
