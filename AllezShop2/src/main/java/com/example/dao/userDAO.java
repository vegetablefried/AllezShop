package com.example.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class userDAO {
	  
	private Connection conn;
	 private PreparedStatement pstmt;
	 private ResultSet rs;

	 public userDAO() {
	  try {
	   String dbURL = "jdbc:log4jdbc:mysql://123.215.188.229:3306/allez_shop?useSSL=false&amp;serverTimezone=UTC";
	   String dbID = "eunsang";
	   String dbPassword = "eunsang";
	   Class.forName("com.mysql.cj.jdbc.Driver");
	   conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

	  } catch (Exception e) {
	   e.printStackTrace();
	  }
	 }

	 public int login(String id, String pw) {
	  String SQL = "SELECT id FROM users WHERE id=?";
	  try {
	   pstmt = conn.prepareStatement(SQL);
	   pstmt.setString(1, id);
	   rs = pstmt.executeQuery();
	   if(rs.next()) {
	    if(rs.getString(1).equals(pw))
	     return 1;  // 로그인 성공
	    else
	     return 0;  // 비밀번호 불일치
	   }
	   return -1;  // 아이디가 없음
	   
	  } catch(Exception e) {
	   e.printStackTrace();
	  }
	  return -2; // 데이터 베이스 오류

	 }
}
