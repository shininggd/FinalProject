package com.kh.leveltest;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LeveltestDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "LeveltestMapper.";
	
	public LeveltestDTO TQlist(String category) throws Exception{
		LeveltestDTO dto= sqlSession.selectOne(NAMESPACE+"TQlist", category);
		return dto;
	}
	
}
