package com.kh.learn_run;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.board.BoardDTO;
import com.kh.board.notice.NoticeDTO;
import com.kh.board.notice.NoticeService;
import com.kh.util.ListInfo;

@Controller
@RequestMapping(value="/board/**")
public class boardController {
	
	@Autowired
	private NoticeService noticeService;

	@RequestMapping(value="/noticePage")
	public void noticePage() {
		
	}
	
	@RequestMapping(value="/noticeList")
	public String noticeList(ListInfo listInfo, Model model) throws Exception {
		
		if(listInfo.getCurPage() == null) {
			listInfo.setCurPage(1);
		}
		
		if(listInfo.getFind() == null || listInfo.getFind() == "") {
			listInfo.setFind("writer");
		}
		
		if(listInfo.getSearch() == null || listInfo.getSearch() == "") {
			listInfo.setSearch("");
		}
		
		
		List<BoardDTO> list = noticeService.noticeList(listInfo);
		
		model.addAttribute("list", list);
		model.addAttribute("listInfo", listInfo);
		
		return "board/noticeList";
	}
	
	@RequestMapping(value="noticeWriteForm")
	public void noticeWriteForm() {
		
	}
	
	@RequestMapping(value="noticeWrite")
	public String noticeWrite(NoticeDTO noticeDTO,Model model) throws Exception {
		int result = noticeService.noticeWrite(noticeDTO);
		String message = "작성 실패";
		if(result > 0) {
			message = "작성 성공";
		}
		
		model.addAttribute("message", message);
		model.addAttribute("path", "/learn_run/board/noticePage");
		
		return "common/MLresult";
	}
	
	@RequestMapping(value="noticeView")
	public void noticeView(String num, Model model) throws Exception {
		BoardDTO boardDTO = noticeService.noticeView(Integer.parseInt(num));
		noticeService.noticeHit(Integer.parseInt(num));
		model.addAttribute("dto", boardDTO);
		
	}
	
	@RequestMapping(value="noticeUpdateForm")
	public void noticeUpdateForm(String num,Model model) throws Exception {
		BoardDTO boardDTO = noticeService.noticeView(Integer.parseInt(num));
		model.addAttribute("dto", boardDTO);
	}
	
	@RequestMapping(value="noticeUpdate")
	public String noticeUpdate(BoardDTO boardDTO,Model model) throws Exception {
		
		int result = noticeService.noticeUpdate(boardDTO);
		String message = "수정 실패";
		if(result>0) {
			message = "수정 성공";
		}
		
		model.addAttribute("message", message);
		model.addAttribute("path", "/learn_run/board/noticePage");
				
		return "common/MLresult";
	}
	
	@RequestMapping(value="noticeDelete")
	public String noticeDelete(int num,Model model) throws Exception {
		int result = noticeService.noticeDelete(num);
		String message = "삭제 싥패";
		if(result>0) {
			message = "삭제 성공";
		}
		
		model.addAttribute("message", message);
		model.addAttribute("path", "/learn_run/board/noticePage");
		return "common/MLresult";
	}
}
