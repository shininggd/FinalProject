package com.kh.learn_run;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/message/**")
public class MessageController {

	@RequestMapping(value="messagePage")
	public void goMessage() {
		
	}
	
	public List<String> messageList(String id) {
		
		
		
		return null;
	}
}
