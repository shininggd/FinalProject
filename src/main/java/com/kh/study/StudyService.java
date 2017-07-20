package com.kh.study;



import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.purchase.PurchaseDTO;
import com.kh.util.ListInfo;

@Service
public class StudyService {
	@Autowired
	private StudyDAO studyDAO;
	

	public List<StudyDTO> list(ListInfo listInfo)throws Exception{
		listInfo.makePage(studyDAO.count(listInfo));
		listInfo.makeRow();
		return studyDAO.list(listInfo);
	}
	public List<StudyDTO> homeList(ListInfo listInfo)throws Exception{
		return studyDAO.homeList(listInfo);
		
	}
	public int regist(StudyDTO studyDTO)throws Exception{
		return studyDAO.regist(studyDTO);
	}
	public  HashMap<Object, Object> studyView(Integer num, String tid)throws Exception{
		return studyDAO.studyView(num, tid);
	}
	public int count(ListInfo listInfo) throws Exception{
		return studyDAO.count(listInfo);
	}
	
	public List<String> myStudyListNum(String id) {
		return studyDAO.myStudyListNum(id);
	}
	
	public List<StudyDTO> myStudyList(List<String> snums) {
		return studyDAO.myStudyList(snums);
	}
	
	public StudyDTO studydto(int num){
		return studyDAO.studydto(num);
	}
	
}
