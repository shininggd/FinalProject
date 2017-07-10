package com.kh.study;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StudyDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "StudyMapper.";
	
	public List<StudyDTO> list(){
		List<StudyDTO> ar = new ArrayList<StudyDTO>();
		ar = sqlSession.selectList(NAMESPACE+"list");
		return ar;
		
	}
}
