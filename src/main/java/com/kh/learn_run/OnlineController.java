package com.kh.learn_run;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/study/online/**")
public class OnlineController {

	@RequestMapping(value="onlineStudyPage")
	public void goOnlineStudy(String room_id,Model model) {
		System.out.println("room="+room_id);
		model.addAttribute("room_id", room_id);
	}
}
