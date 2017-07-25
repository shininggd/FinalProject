package com.kh.feedback;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.board.BoardDTO;
import com.kh.study.StudyDTO;
import com.kh.util.ListInfo;

@Service
public class FeedBackService {
	
	@Autowired
	private FeedBackDAOImpl feedBackDAOImpl;
	public BoardDTO view(int num) throws Exception {
		
		return feedBackDAOImpl.view(num);
	}

	
	public int write(BoardDTO boardDTO) throws Exception {
		
		return feedBackDAOImpl.write(boardDTO);
	}

	
	public int update(BoardDTO boardDTO) throws Exception {

		return feedBackDAOImpl.update(boardDTO);
	}

	
	public int delete(int num) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	
	public int count(ListInfo listInfo) throws Exception {
			
		return feedBackDAOImpl.count(listInfo);
	}

	
	public List<BoardDTO> list(ListInfo listInfo) throws Exception {

		return feedBackDAOImpl.list(listInfo);
	}
	public List<BoardDTO> homeList(ListInfo listInfo) throws Exception {
		listInfo.setPerPage(9);
		listInfo.makePage(feedBackDAOImpl.count(listInfo));
		listInfo.makeRow();
		
		
		
		return feedBackDAOImpl.list(listInfo);
	}
	public int reply(BoardDTO boardDTO) throws Exception{
		
		feedBackDAOImpl.replyUpdate(boardDTO);
		return feedBackDAOImpl.reply(boardDTO);
	}
	public HashMap<Object, Object> studyPage(int num){
		
		return feedBackDAOImpl.studyPage(num);
	}


}
