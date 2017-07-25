package com.kh.board.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.board.BoardDTO;
import com.kh.util.ListInfo;

@Service
public class NoticeService {

	@Autowired
	private NoticeDAOImpl noticeDAOImpl;
	
	public List<BoardDTO> noticeList(ListInfo listInfo) throws Exception {
		listInfo.makeRow();
		int totalCount = noticeDAOImpl.count(listInfo);
		System.out.println("totalcount="+totalCount);
		listInfo.makePage(totalCount);
		
		return noticeDAOImpl.list(listInfo);
	}
	
	public int noticeWrite(BoardDTO boardDTO) throws Exception {
		return noticeDAOImpl.write(boardDTO);
	}
	
	public BoardDTO noticeView(int num) throws Exception {
		return noticeDAOImpl.view(num);
	}
}
