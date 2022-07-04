package com.example.dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.example.mapper.MemberMapper;

public class LoginDTO {
	 
	public static LoginDTO instance;
	public String id;
	public String pw;
	public String name;
	public String nickname;
	public String address;
	public String sex;
	public String sign_day;
	public int is_admin;
      
  //생성자 2개 : 기본생성자, 멤버변수를 인자로 전부를 가진 생성자
  	public LoginDTO() {}
 
  	public LoginDTO(String id, String pw, String name, String nickname, String address, String sex, String sign_day, int is_admin) {
  		super();
  		this.id = id;
  		this.pw = pw;
  		this.name = name;
  		this.nickname = nickname;
  		this.address = address;
  		this.sex = sex;
  		this.sign_day = sign_day;
  		this.is_admin = is_admin;
  	}

    public String getid() {
        return id;
    }
 
    public void setid(String id) {
        this.id = id;
    }
 
    public String getpw() {
        return pw;
    }
 
    public void setpw(String pw) {
        this.pw = pw;
    }
 
    public String getname() {
        return name;
    }
 
    public void setname(String name) {
        this.name = name;
    }
    public String getnickname() {
        return nickname;
    }
 
    public void setnickname(String nickname) {
        this.nickname = nickname;
    }
    public String getaddress() {
        return address;
    }
 
    public void setaddress(String address) {
        this.address = address;
    }
    public String getsex() {
        return sex;
    }
 
    public void setsex(String sex) {
        this.sex = sex;
    }
    public String getsign_day() {
        return sign_day;
    }
 
    public void setsign_day(String sign_day) {
        this.sign_day = sign_day;
    }
    
    public int getis_admin() {
        return is_admin;
    }
 
    public void setis_admin(int is_admin) {
        this.is_admin = is_admin;
    }

 
    //to String
    @Override
    public String toString() {
    	return "LoginDTO [id=" + id + ", pw=" + pw + "]";
    }

}