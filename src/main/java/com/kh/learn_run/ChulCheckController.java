package com.kh.learn_run;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/chul/**")
public class ChulCheckController {

	@RequestMapping(value="/chulCheck")
	public void goChul() {
		
	}
}
