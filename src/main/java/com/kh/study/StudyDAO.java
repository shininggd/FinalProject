package com.kh.study;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.bind.ParseConversionEvent;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.purchase.PurchaseDTO;
import com.kh.util.ListInfo;

@Repository
public class StudyDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "StudyMapper.";
	private final String TUTORSPACE = "TutorMapper.";
	
	public List<StudyDTO> list(ListInfo listInfo)throws Exception{
		String find =  listInfo.getFind();
		String search = listInfo.getSearch();
		String [] far = find.split(",");
		String [] sar = search.split(",");	
		if(sar[1].equals("all")){
			sar[1] = "";
		}
		if(sar[2].equals("all")){
			sar[2] = "";
		}
		
		List<StudyDTO> ar = new ArrayList<StudyDTO>();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("find1", far[0]);
		map.put("find2", far[1]);
		map.put("find3", far[2]);
		map.put("search1", sar[0]);
		map.put("search2", sar[1]);
		map.put("search3", sar[2]);
		
		map.put("startRow",listInfo.getStartRow());
		map.put("lastRow",listInfo.getLastRow());
		ar = sqlSession.selectList(NAMESPACE+"searchList", map);
		return ar;
		
	}
	public int count(ListInfo listInfo)throws Exception{
		String find =  listInfo.getFind();
		String search = listInfo.getSearch();
		String [] far = find.split(",");
		String [] sar = search.split(",");	
		if(sar[1].equals("all")){
			sar[1] = "";
		}
		if(sar[2].equals("all")){
			sar[2] = "";
		}
		
		List<StudyDTO> ar = new ArrayList<StudyDTO>();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("find1", far[0]);
		map.put("find2", far[1]);
		map.put("find3", far[2]);
		map.put("search1", sar[0]);
		map.put("search2", sar[1]);
		map.put("search3", sar[2]);
		int num = sqlSession.selectOne(NAMESPACE+"studyCount", map);
		return num;
		
	}
	
	public List<StudyDTO> homeList(ListInfo listInfo)throws Exception{
		System.out.println(listInfo.getFind()+"222");
		System.out.println(listInfo.getSearch()+"222");
		
		if(listInfo.getFind()==null||listInfo.getFind()==""){
			listInfo.setFind("category");
		}
		
		if(listInfo.getSearch()==null||listInfo.getSearch()==""){
			listInfo.setSearch("영어회화");
		}
		System.out.println(listInfo.getFind()+"3");
		System.out.println(listInfo.getSearch()+"3");
		List<StudyDTO> ar = new ArrayList<StudyDTO>();
		ar = sqlSession.selectList(NAMESPACE+"homeList",listInfo);
		return ar;
		
	}
	public int regist(StudyDTO studyDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"studyRegist",studyDTO);
	}
	public HashMap<Object, Object> studyView(Integer num, String tid)throws Exception{
		HashMap<Object, Object> ar = new HashMap<Object, Object>();
		ar.put("study", sqlSession.selectOne(NAMESPACE+"studyView", num));
		ar.put("tutor",sqlSession.selectOne(TUTORSPACE+"tutorStudyInfo",tid));
		
		return ar;
	}
	
	public List<String> myStudyListNum(String id) {
		return sqlSession.selectList(NAMESPACE+"myStudyListNum", id);
	}
	
	public List<StudyDTO> myStudyList(List<String> snums) {
		
		List<StudyDTO> list = new ArrayList<StudyDTO>();
		StudyDTO studyDTO = null;
		for(int i=0; i< snums.size(); i++) {
			int num = Integer.parseInt(snums.get(i));
			System.out.println(num);
			studyDTO = sqlSession.selectOne(NAMESPACE+"myStudyList", num);
			System.out.println(studyDTO.getOnOff());
			list.add(studyDTO);
		}
		
		return list;
	}
	

}
