package com.kh.learn_run;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.leveltest.LeveltestDTO;
import com.kh.leveltest.LeveltestService;

@Controller
@RequestMapping(value = "/temp/**")
public class LevelTestController {

	@Autowired
	private LeveltestService leveltestService;

	@RequestMapping(value = "levelTestQuiz", method = RequestMethod.GET)
	public String LtestQuiz() {
		return "temp/LevelTestQuiz";
	}
	@RequestMapping(value = "LTQuestion", method = RequestMethod.GET)
	public String LTQuestion() {
		return "temp/LTQuestion";
	}
	
	@RequestMapping(value="LTQuestion", method = RequestMethod.POST)
	public String LTQuestion(String category,Model model)throws Exception{
		LeveltestDTO dto = leveltestService.TQlist(category);
		List<String[]> ar = new ArrayList<String[]>();
		
		String[] questions = dto.getQuestion().split(",");
		String[] answers = dto.getAnswer().split(",");
		
		ar.add(questions);
		ar.add(answers);
		
		model.addAttribute("ar", ar);
		return "common/resultLevelTest";
	}

}