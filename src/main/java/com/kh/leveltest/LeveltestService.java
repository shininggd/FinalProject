package com.kh.leveltest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LeveltestService {
	
	@Autowired
	LeveltestDAO leveltestDAO;
	
	public String [] TQlist(String category,int step) throws Exception{
		LeveltestDTO dto = leveltestDAO.TQlist(category);
		String [] questions = dto.getQuestion().split(",");
		String [] answers = dto.getAnswer().split(",");
		String [] answersopt = dto.getAnswers().split(",");
		String ar[] = new String[3]; 
		ar[0] = questions[step-1];
		ar[1] = answers[step-1];
		ar[2] = answersopt[step-1];
				
		return ar;
	}
}
