package com.kh.study;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.util.ListInfo;

@Service
public class StudyService {
	@Autowired
	private StudyDAO studyDAO;
	
	public List<StudyDTO> list(ListInfo listInfo){
		return studyDAO.list(listInfo);
		
	}
	public List<StudyDTO> homeList(ListInfo listInfo){
		return studyDAO.homeList(listInfo);
		
	}

}
