package com.example.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
 
import com.example.dao.MemberDAO;
import com.example.dao.loginDAO;
import com.example.dto.LoginDTO;
import com.example.dto.MemberVO;
import com.example.mapper.MemberMapper;


@Service
public class MemberServiceImpl implements MemberService {
 
	@Autowired
	private loginDAO memberDao;
	
	MemberMapper membermapper;
	
    @Inject
    private MemberDAO dao;
    
    
    @Override
    public List<MemberVO> selectMember() throws Exception {
 
        return dao.selectMember();
    }

    

	@Override
	public void joinMember(MemberVO member) throws Exception {
		// TODO Auto-generated method stub
		dao.joinMember(member);
	}

/*
	@Override
	public MemberVO loginMember(MemberVO member) {
		// TODO Auto-generated method stub
		return dao.loginMember(member);
	}
*/
	@Override
	public LoginDTO loginMember(LoginDTO vo) throws Exception{
		return memberDao.loginMember(vo);
	}
	  



	

}
