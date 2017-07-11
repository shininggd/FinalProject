package com.kh.study;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.util.ListInfo;

@Repository
public class StudyDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "StudyMapper.";
	
	public List<StudyDTO> list(){
		List<StudyDTO> ar = new ArrayList<StudyDTO>();
		ar = sqlSession.selectList(NAMESPACE+"list");
		return ar;
		
	}
	public List<StudyDTO> homeList(ListInfo listInfo){
		
		if(listInfo.getFind()==null||listInfo.getFind()==""){
			listInfo.setFind("category");
		}
		if(listInfo.getSearch()==null||listInfo.getSearch()==""){
			listInfo.setSearch("영어회화");
		}
		System.out.println(listInfo.getFind());
		System.out.println(listInfo.getSearch());
		
		List<StudyDTO> ar = new ArrayList<StudyDTO>();
		ar = sqlSession.selectList(NAMESPACE+"homeList",listInfo);
		return ar;
		
	}
}
