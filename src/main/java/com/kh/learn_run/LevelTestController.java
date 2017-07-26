package com.kh.learn_run;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.kh.leveltest.LeveltestService;


@Controller
@RequestMapping(value = "/temp/**")
public class LevelTestController {

	@Inject
	LeveltestService leveltestservice;
	
	@RequestMapping(value ="levelTestQuiz", method = RequestMethod.GET)
	public String LtestQuiz() {
		return "temp/LevelTestQuiz";
	}

	@RequestMapping(value ="LevelTestQuizPlay", method = RequestMethod.GET)
	public void  LtestQuizPlay(String category,Model model,int step,int score)throws Exception{
		
		if(step != 0) {
		String ar[] = leveltestservice.TQlist(category,step);  		
		model.addAttribute("question", ar[0]);
		model.addAttribute("answer", ar[1]);
		model.addAttribute("answersopt", ar[2]);
		}
		model.addAttribute("category", category);
		model.addAttribute("step", step);
		model.addAttribute("score", score);
	}

}