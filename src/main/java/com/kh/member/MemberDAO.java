package com.kh.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="MemberMapper.";

	public int memberUpdate(MemberDTO memberDTO) {
		int result = sqlSession.update(NAMESPACE+"memberUpdate", memberDTO);
		
		System.out.println(memberDTO.getId());
		System.out.println(memberDTO.getPw());
		System.out.println(memberDTO.getEmail());
		System.out.println(memberDTO.getPhone());
		return result;
	}
}
