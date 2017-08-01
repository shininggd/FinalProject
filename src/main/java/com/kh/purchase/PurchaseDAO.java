package com.kh.purchase;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.member.MemberDTO;
import com.kh.study.StudyDTO;

@Repository
public class PurchaseDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "PurchaseMapper."; 
	
	public int payDo(PurchaseDTO purchaseDTO) throws Exception{
	
		int result = sqlSession.insert(NAMESPACE+"payDo", purchaseDTO);
		return result;
	}
	
	public int payComplete(PurchaseDTO purchaseDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"payComplete", purchaseDTO);
	}
	
	public MemberDTO paySmart(MemberDTO memberDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"paySmart", memberDTO);
	}
	
	public int addMemberStudy(PurchaseDTO purchaseDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"addMemberStudy", purchaseDTO);
	}
	
	public PurchaseDTO callReceipt(int num) throws Exception{
		return sqlSession.selectOne("StudentMapper.callReceipt", num);
	}
	
	
	
}
