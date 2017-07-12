package com.kh.leveltest;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LeveltestService {
	
	@Autowired
	LeveltestDAO leveltestDAO;
	
	public List<LeveltestDTO> TQlist() throws Exception{
		List<LeveltestDTO> ar = leveltestDAO.TQlist();
		return ar;
	}
}
