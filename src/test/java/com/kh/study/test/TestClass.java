package com.kh.study.test;


import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.board.BoardDTO;
import com.kh.feedback.FeedBackDAOImpl;
import com.kh.feedback.FeedBackDTO;
import com.kh.feedback.FeedBackService;
import com.kh.sgroup.SgroupDAO;
import com.kh.sgroup.SgroupService;
import com.kh.study.StudyDTO;
import com.kh.util.ListInfo;



public class TestClass extends MyAbstarctTestUnit{

	@Autowired
	private SgroupService service;
	@Test
	public void test()throws Exception {
		
		System.out.println(service.sgroupList().get(0).getNum());

		
	}

}
