package com.kh.study.test;


import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.board.BoardDTO;
import com.kh.feedback.FeedBackDAOImpl;
import com.kh.feedback.FeedBackDTO;
import com.kh.feedback.FeedBackService;
import com.kh.util.ListInfo;



public class TestClass extends MyAbstarctTestUnit{

	@Autowired
	private FeedBackService feedBackDAO; 
	@Test
	public void test()throws Exception {
		ListInfo listInfo = new ListInfo();
		listInfo.setFind("snum,category,title");
		listInfo.setSearch("62,자유게시판,");
		
		List<BoardDTO> ar = new ArrayList<BoardDTO>();
		ar = feedBackDAO.list(listInfo);
		for(int i = 0 ; i < ar.size() ; i ++){
			System.out.println("번호	"+ar.get(i).getNum()+" ref	"+((FeedBackDTO)ar.get(i)).getRef()+" step	"+((FeedBackDTO)ar.get(i)).getStep()+" 제목"+ ar.get(i).getTitle());
			
		}
		System.out.println(feedBackDAO.count(listInfo));
	
	/*	FeedBackDTO backDTO = new FeedBackDTO();
		
		backDTO.setContents("2답글2");
		backDTO.setWriter("user22");
		backDTO.setCategory("자유게시판");
		backDTO.setTitle("2답글2");
		backDTO.setSnum(62);
		backDTO.setRef(2);
		backDTO.setDepth(0);
		backDTO.setStep(0);
		feedBackDAO.reply(backDTO);*/
		
		
	}

}
