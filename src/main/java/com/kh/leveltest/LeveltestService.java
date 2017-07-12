package com.kh.leveltest;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LeveltestService {
	
	@Autowired
	LeveltestDAO leveltestDAO;
	
	public LeveltestDTO TQlist(String category) throws Exception{
		LeveltestDTO dto = leveltestDAO.TQlist(category);
		return dto;
	}
}
