package com.kh.study;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.util.ListInfo;

@Service
public class StudyService {
	@Autowired
	private StudyDAO studyDAO;
	
	public List<StudyDTO> list(ListInfo listInfo)throws Exception{
		return studyDAO.list(listInfo);
		
	}
	public List<StudyDTO> homeList(ListInfo listInfo)throws Exception{
		return studyDAO.homeList(listInfo);
		
	}
	public int regist(StudyDTO studyDTO)throws Exception{
		return studyDAO.regist(studyDTO);
	}
	public StudyDTO studyView(Integer num)throws Exception{
		return studyDAO.studyView(num);
	}

}
