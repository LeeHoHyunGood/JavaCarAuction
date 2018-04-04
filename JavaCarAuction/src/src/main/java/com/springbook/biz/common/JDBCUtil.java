package com.springbook.biz.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCUtil {
//	public static Connection getConnection() {
//		
//		Connection conn = null;
//		
//		try {
//			Class.forName("driverClassName");
//			System.out.println("드라이브완료");
//			conn = DriverManager.getConnection("url", "username", "password");
//		} catch (ClassNotFoundException | SQLException e) {
//			e.printStackTrace();
//		}
//		return conn;
//	}
//	public static void close(Connection conn)
//	{
//		try {
//			if(conn!=null && !conn.isClosed())
//				conn.close();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}
//	
//	public static void close(Connection conn, PreparedStatement pstmt)
//	{
//		close(conn);
//		try {
//			if(pstmt!=null && !pstmt.isClosed())
//				pstmt.close();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}
//	
//	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs)
//	{
//		close(conn, pstmt);
//		try {
//			if(rs!=null && !rs.isClosed())
//				rs.close();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}
}
