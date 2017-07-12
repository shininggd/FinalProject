package com.kh.learn_run;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/temp/**")
public class LevelTestController {
	
	@RequestMapping(value="levelTestQuiz", method= RequestMethod.GET)
	public String LtestQuiz(){
		return "temp/LevelTestQuiz";
	}
	
}
