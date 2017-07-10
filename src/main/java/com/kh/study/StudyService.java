package com.kh.study;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudyService {
	@Autowired
	private StudyDAO studyDAO;
	public List<StudyDTO> list(){
		return studyDAO.list();
		
	}
	

}
