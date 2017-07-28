package com.kh.sgroup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SgroupService {
	@Autowired
	private SgroupDAO sgroupDAO;
	
	public int write(SgroupDTO sgroupDTO)throws Exception{
		return sgroupDAO.write(sgroupDTO);
	}
	
}
