package com.kh.purchase;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.study.StudyDTO;

@Repository
public class PurchaseDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "PurchaseMapper."; 
	
	public String studyPurchase(StudyDTO studyDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"studyPurchase", studyDTO);
	}
	
}
