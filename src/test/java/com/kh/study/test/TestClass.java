package com.kh.study.test;


import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;


import com.kh.feedback.FeedBackDAOImpl;
import com.kh.feedback.FeedBackDTO;


public class TestClass extends MyAbstarctTestUnit{

	@Autowired
	private FeedBackDAOImpl feedBackDAO; 
	@Test
	public void test()throws Exception {
	/*	ListInfo listInfo = new ListInfo();
		listInfo.setFind("snum,category,title");
		listInfo.setSearch("62,자유게시판,");
		
		List<BoardDTO> ar = new ArrayList<BoardDTO>();
		ar = feedBackDAO.list(listInfo);
		for(int i = 0 ; i < ar.size() ; i ++){
			System.out.println(ar.get(i).getTitle());
			System.out.println(((FeedBackDTO)ar.get(i)).getCategory());
		}
		System.out.println(feedBackDAO.count(listInfo));*/
	
		FeedBackDTO backDTO = new FeedBackDTO();
		
		backDTO.setContents("다시한다2");
		backDTO.setNum(4);
		backDTO.setTitle("엿같다..2");
		
		feedBackDAO.update(backDTO);
	}

}
