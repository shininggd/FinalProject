package com.kh.study;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.bind.ParseConversionEvent;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.util.ListInfo;

@Repository
public class StudyDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "StudyMapper.";
	
	public List<StudyDTO> list(ListInfo listInfo){
		String find =  listInfo.getFind();
		String search = listInfo.getSearch();
		String [] far = find.split("/");
		String [] sar = search.split("/");	
		if(sar[1].equals("all")){
			sar[1] = "";
		}
		if(sar[2].equals("all")){
			sar[2] = "";
		}
		System.out.println(sar[0]);
		System.out.println(sar[1]);
		System.out.println(sar[2]);
		List<StudyDTO> ar = new ArrayList<StudyDTO>();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("find1", far[0]);
		map.put("find2", far[1]);
		map.put("find3", far[2]);
		map.put("search1", sar[0]);
		map.put("search2", sar[1]);
		map.put("search3", sar[2]);
		ar = sqlSession.selectList(NAMESPACE+"list", map);
		return ar;
		
	}
	
	public List<StudyDTO> homeList(ListInfo listInfo){
		
		if(listInfo.getFind()==null||listInfo.getFind()==""){
			listInfo.setFind("category");
		}
		if(listInfo.getSearch()==null||listInfo.getSearch()==""){
			listInfo.setSearch("영어회화");
		}
		List<StudyDTO> ar = new ArrayList<StudyDTO>();
		ar = sqlSession.selectList(NAMESPACE+"homeList",listInfo);
		return ar;
		
	}
}
