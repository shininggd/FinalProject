package com.kh.chul;

import java.sql.Date;
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
	
	public List<ChulDTO> Chullist() throws Exception{
		return sqlSession.selectList(NAMESPACE+"chulList");
	};
	public int ChulWrite(ChulDTO chulDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"ChulWrite", chulDTO);
	};
	public int delete(String num) throws Exception{
		return sqlSession.delete(NAMESPACE+"chulDelete", num);
	};
	public int Ccount(ListInfo listInfo){
		int count = sqlSession.selectOne(NAMESPACE+"Ccount", listInfo);
		return count;
	}
}
