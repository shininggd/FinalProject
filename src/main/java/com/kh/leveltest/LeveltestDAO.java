package com.kh.leveltest;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LeveltestDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "LeveltestMapper.";
	
	public List<LeveltestDTO> TQlist() throws Exception{
		List<LeveltestDTO> ar = new ArrayList<LeveltestDTO>();
		ar= sqlSession.selectList(NAMESPACE+"TQlist");
		return ar;
	}
	
}
