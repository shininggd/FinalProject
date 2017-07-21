package com.kh.feedback;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.board.BoardDAO;
import com.kh.board.BoardDTO;
import com.kh.study.StudyDTO;
import com.kh.util.ListInfo;

@Repository
public class FeedBackDAOImpl implements BoardDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "FeedBackMapper.";
	
	
	@Override
	public BoardDTO view(int num) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"view", num);
	}

	@Override
	public int write(BoardDTO boardDTO) throws Exception {

		return sqlSession.insert(NAMESPACE+"write",(FeedBackDTO)boardDTO);
	}

	@Override
	public int update(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE+"update",(FeedBackDTO)boardDTO);
	}

	@Override
	public int delete(int num) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int count(ListInfo listInfo) throws Exception {
		String find =  listInfo.getFind();
		String search = listInfo.getSearch();
		String [] far = find.split(",");
		String [] sar = search.split(",");	
		HashMap<String, Object> map = new HashMap<String, Object>();
		for(int i = 0 ; i < sar.length ; i ++){
			map.put("search"+i, sar[i]);
		}
		for(int i = 0 ; i < far.length ; i ++){
			map.put("find"+i, far[i]);
			;
		}
		int num = sqlSession.selectOne(NAMESPACE+"count", map);
		return num;
	}

	@Override
	public List<BoardDTO> list(ListInfo listInfo) throws Exception {
		String find =  listInfo.getFind();
		String search = listInfo.getSearch();
		String [] far = find.split(",");
		String [] sar = search.split(",");	
		HashMap<String, Object> map = new HashMap<String, Object>();
		for(int i = 0 ; i < sar.length ; i ++){
			map.put("search"+i, sar[i]);
		}
		for(int i = 0 ; i < far.length ; i ++){
			map.put("find"+i, far[i]);
			;
		}
		List<BoardDTO> ar = sqlSession.selectList(NAMESPACE+"list", map); 
			
		return ar;
	}

}
