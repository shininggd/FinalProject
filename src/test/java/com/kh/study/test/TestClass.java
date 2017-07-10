package com.kh.study.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.study.StudyDAO;

public class TestClass extends MyAbstarctTestUnit{

	@Autowired
	private StudyDAO dao; 
	@Test
	public void test() {
		assertNotNull(dao.list());
		System.out.println(dao.list().get(0).getTid());
	}

}
