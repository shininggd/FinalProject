package com.kh.learn_run;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

	@RequestMapping(value = "jsontest", produces="application/json")
	public void TQlist(HttpServletResponse response, @RequestParam("category") String category) throws Exception{
		  ObjectMapper mapper = new ObjectMapper();
		List<LeveltestDTO> ar = leveltestService.TQlist();
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(mapper.writeValueAsString(ar));
	}
}