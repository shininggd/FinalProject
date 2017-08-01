package com.kh.learn_run;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.FlashMap;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.kh.study.StudyService;

@Controller
@RequestMapping(value="/study/online/**")
public class OnlineController {
	
	@Autowired
	private StudyService studyService;

	@RequestMapping(value="/onlineStudyPage")
	public String goOnlineStudy(String room_id,Model model,String category) {
		System.out.println("controller="+room_id);
		model.addAttribute("room_id", room_id);
		model.addAttribute("category", category);
		
		String path=null;
		if(category.equals("프로그래밍")) {
			path = "study/online/subject/onlineStudyPrograming";
		}
		
		return path;
	}
	
	@RequestMapping(value="/openStudyPage")
	public String openOnlineStudy(String room_id,Model model,String category,String num) {
		System.out.println("controller="+room_id);
		System.out.println("num="+num);
		model.addAttribute("room_id", room_id);
		model.addAttribute("num", num);
		model.addAttribute("category", category);
		
		if(studyService.onoffStudy(Integer.parseInt(num)).equals("off")) {
			studyService.openStudy(Integer.parseInt(num));
		}
		
		String path=null;
		if(category.equals("프로그래밍")) {
			path = "study/online/subject/onlineStudyPrograming";
		}
		
		return path;
	}
	

	@RequestMapping(value="subject/onlineStudyVocal")
	public void vocalTemp(){
		
	}
	
	@RequestMapping(value="studyClose")
	public String studyClose(String num,Model model) {
		
		System.out.println("studyClose");
		System.out.println("closenum="+num);
		int result = studyService.closeStudy(Integer.parseInt(num));
		String message = "Study Close Fail!";
		if(result>0) {
			message = "Study Close Success";
		}
		model.addAttribute("message", message);
		return "common/resultMessage";
	}
	
}
