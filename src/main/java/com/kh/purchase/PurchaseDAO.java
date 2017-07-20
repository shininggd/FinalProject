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
	
	public int purchaseDo(PurchaseDTO purchaseDTO) throws Exception{
		
		return sqlSession.insert(NAMESPACE+"purchaseDo", purchaseDTO);
	}
	
}
