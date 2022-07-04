package com.example.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.dto.LoginDTO;
import com.example.dto.MemberVO;


@Repository
public class loginDAOImpl implements loginDAO{
	@Inject
    private SqlSession sqlSession;
	
	private static final String Namespace = "com.example.mapper.memberMapper";
	@Override
	public LoginDTO loginMember(LoginDTO vo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(Namespace+".loginMember", vo);
	}
} 
