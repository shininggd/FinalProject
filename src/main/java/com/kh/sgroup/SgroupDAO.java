package com.kh.sgroup;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SgroupDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "SgroupMapper.";
	
	public int write(SgroupDTO sgroupDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"sgroupWrite", sgroupDTO);
	}

	
	
	
	
	
}
