package com.kh.purchase;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.study.StudyDTO;

@Repository
public class PurchaseDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "PurchaseMapper."; 
	
	
	
	
	public int payDo(PurchaseDTO purchaseDTO) throws Exception{
	
		int result = sqlSession.insert(NAMESPACE+"payDo", purchaseDTO);
		int result2 = sqlSession.update(NAMESPACE+"addValue",purchaseDTO);
		return result+result2;
	}
	
}
