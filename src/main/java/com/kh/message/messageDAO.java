package com.kh.message;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class messageDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "messageMapper.";
	
	public List<String> messageList(String id) {
		return sqlSession.selectList(NAMESPACE+"messageList", id);
	}
}
