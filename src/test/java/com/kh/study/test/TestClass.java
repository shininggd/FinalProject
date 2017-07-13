package com.kh.study.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.study.StudyDAO;
import com.kh.study.StudyDTO;
import com.kh.util.ListInfo;

public class TestClass extends MyAbstarctTestUnit{

	@Autowired
	private StudyDAO dao; 
	@Test
	public void test()throws Exception {
		
		ListInfo listInfo = new ListInfo();
		listInfo.setFind("category/location/lv");
		listInfo.setSearch("영어회화/none/none");
		List<StudyDTO> ar = dao.list(listInfo);
		
		
	}

}
