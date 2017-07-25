package com.kh.board.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.board.BoardDAO;
import com.kh.board.BoardDTO;
import com.kh.util.ListInfo;

@Repository
public class NoticeDAOImpl implements BoardDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="BoardMapper.";
	
	@Override
	public BoardDTO view(int num) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"noticeView", num);
	}

	@Override
	public int write(BoardDTO boardDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"noticeWrite", boardDTO);
	}

	@Override
	public int update(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int num) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int count(ListInfo listInfo) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"noticeCount", listInfo);
	}

	@Override
	public List<BoardDTO> list(ListInfo listInfo) throws Exception {
		return sqlSession.selectList(NAMESPACE+"noticeList", listInfo);
	}

	
}
