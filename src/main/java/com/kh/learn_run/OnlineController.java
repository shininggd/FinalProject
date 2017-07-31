package com.kh.learn_run;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.FlashMap;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

@Controller
@RequestMapping(value="/study/online/**")
public class OnlineController {

	@RequestMapping(value="/subject/onlineStudyPrograming")
	public void goOnlineStudy(String room_id,Model model) {
	
		model.addAttribute("room_id", room_id);
		
	}
	

	@RequestMapping(value="subject/onlineStudyVocal")
	public void vocalTemp(){
		
	}
	
}
