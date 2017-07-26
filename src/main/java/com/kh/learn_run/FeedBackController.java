package com.kh.learn_run;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.board.BoardDTO;
import com.kh.feedback.FeedBackDTO;
import com.kh.feedback.FeedBackService;
import com.kh.study.StudyDTO;
import com.kh.util.ListInfo;

@Controller
@RequestMapping(value = "/feedback")
public class FeedBackController {
	
	@Autowired
	private FeedBackService feedBackService; 
	
	//처음 화면 보기용 
	@RequestMapping(value="studyPage")
	public void feedPage(Integer snum, Model model){
		HashMap<Object, Object> map =  feedBackService.studyPage(snum);
		model.addAttribute("dto", map.get("dto"));
		model.addAttribute("fname", map.get("fname"));
		
	}
	//처음 화면 보기용끝
	//리스트 보기용
	@RequestMapping(value="feedbackList")
	public void list(ListInfo listInfo,Model model,String kind, String searchText)throws Exception{
		String getSnum []  = listInfo.getSearch().split(",");
		String getKind []  = listInfo.getFind().split(",");
		HashMap<Object, Object> map =  feedBackService.studyPage(Integer.valueOf(getSnum[0]));
		model.addAttribute("category",getSnum[1]);
		model.addAttribute("dto", map.get("dto"));
		model.addAttribute("fname", map.get("fname"));
		model.addAttribute("list", feedBackService.list(listInfo));
		model.addAttribute("kind",kind);
		model.addAttribute("searchText",searchText);
		System.out.println(kind);
		
	}
	
	//리스트 보기용끝
	//글쓰기용
	@RequestMapping(value="feedbackWrite")
	public void write(int snum, Model model){
		model.addAttribute("snum", snum);

	}
	@RequestMapping(value="studyPage", method = RequestMethod.POST)
	public void write(FeedBackDTO feedBackDTO, Model model)throws Exception{
		
		feedBackService.write(feedBackDTO);
		HashMap<Object, Object> map =  feedBackService.studyPage(feedBackDTO.getSnum());
		model.addAttribute("dto", map.get("dto"));
		model.addAttribute("fname", map.get("fname"));
	}
	//글쓰기용 끝
	
	
	

}
