package com.kh.learn_run;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/study/online/**")
public class OnlineController {

	@RequestMapping(value="onlineStudyPage")
	public String goOnlineStudy(String room_id,Model model,String category) {
		System.out.println("room="+room_id);
		model.addAttribute("room_id", room_id);
		
		String path = null;
		if(category.equals("영여회화")) {
			path = "study/online/subject/onlineStudyEnglish";
		}
		
		return path;
	}
	@RequestMapping(value="subject/onlineStudyVocal")
	public void vocalTemp(){
		
	}
}
