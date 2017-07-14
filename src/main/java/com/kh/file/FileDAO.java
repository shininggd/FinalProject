package com.kh.file;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.member.MemberDTO;

@Repository
public class FileDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "FileMapper.";
	
	public int upload(MemberDTO memberDTO) {
		
		
		int result = sqlSession.insert(NAMESPACE+"memberProfile", memberDTO);
		return result;
	}
}
