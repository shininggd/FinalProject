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
	public void test() {
		ListInfo listInfo = new ListInfo();
		List<StudyDTO> ar = dao.homeList(listInfo);
		System.out.println(ar.size());
		System.out.println(dao.homeList(listInfo).get(1).getNum());
		System.out.println(dao.homeList(listInfo).get(2).getNum());
		System.out.println(ar.get(0).getNum());
		
	}

}
