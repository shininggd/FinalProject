package com.kh.chul;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.kh.util.ListInfo;

@Repository
public class ChulDAO {
	@Autowired
	SqlSession sqlSession;
	private final String NAMESPACE = "ChulMapper.";
	
	public List<ChulDTO> Chullist(ListInfo listInfo) throws Exception{
		return sqlSession.selectList(NAMESPACE+"chulList", listInfo);
	};
	public int ChulWrite(ChulDTO chulDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"ChulWrite", chulDTO);
	};
	public int delete(int num) throws Exception{
		return 0;
	};
	public int Ccount(ListInfo listInfo){
		int count = sqlSession.selectOne(NAMESPACE+"Ccount", listInfo);
		return count;
	}
}
