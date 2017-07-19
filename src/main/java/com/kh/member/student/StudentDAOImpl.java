package com.kh.member.student;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.member.MemberDAO;
import com.kh.member.MemberDTO;

@Repository
public class StudentDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "StudentMapper.";
	
	@Override
	public int memberJoin(MemberDTO memberDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"studentJoin", memberDTO);
	}
	@Override
	public int memberUpdate(MemberDTO memberDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"studentUpdate", memberDTO);
	}
	@Override
	public MemberDTO memberLogin(MemberDTO memberDTO, HttpSession session) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"studentLogin", memberDTO);
	}
	@Override
	public String IdFind(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String PwFind(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String memberIdCheck(String id) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"IdCheck", id);
		
	}

	public int pointGC(MemberDTO memberDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"pointGC",memberDTO);
	}
	
	public String myPoint(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"myPoint", memberDTO);
	}
	

}
