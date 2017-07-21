package com.kh.message;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MessageDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "MessageMapper.";
	
	public List<MessageDTO> messageList(String id) {
		return sqlSession.selectList(NAMESPACE+"messageList", id);
	}
	
	public MessageDTO messageView(int num) {
		return sqlSession.selectOne(NAMESPACE+"messageView",num);
	}
	
	public int messageRead(int num) {
		return sqlSession.update(NAMESPACE+"messageRead",num);
	}
	
	public int messageWrite(MessageDTO messageDTO) {
		return sqlSession.insert(NAMESPACE+"messageWrite",messageDTO);
	}
}
