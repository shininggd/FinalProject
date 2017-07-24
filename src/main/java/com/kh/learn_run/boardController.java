package com.kh.learn_run;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/board/**")
public class boardController {

	@RequestMapping(value="/noticeList")
	public void noticeList() {
		
	}
}
