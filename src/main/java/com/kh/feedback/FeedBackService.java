package com.kh.feedback;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.board.BoardDTO;
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
		listInfo.makePage(this.count(listInfo));
		return feedBackDAOImpl.list(listInfo);
	}
	public int reply(BoardDTO boardDTO) throws Exception{
		
		feedBackDAOImpl.replyUpdate(boardDTO);
		return feedBackDAOImpl.reply(boardDTO);
	}


}
