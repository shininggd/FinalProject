package com.kh.study.test;


import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;


import com.kh.feedback.FeedBackDAOImpl;
import com.kh.feedback.FeedBackDTO;
import com.kh.feedback.FeedBackService;



public class TestClass extends MyAbstarctTestUnit{

	@Autowired
	private FeedBackService feedBackDAO; 
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
		
		backDTO.setContents("2답글2");
		backDTO.setWriter("user22");
		backDTO.setCategory("자유게시판");
		backDTO.setTitle("2답글2");
		backDTO.setSnum(62);
		backDTO.setRef(2);
		backDTO.setDepth(0);
		backDTO.setStep(0);
		
		feedBackDAO.reply(backDTO);
		
	}

}
