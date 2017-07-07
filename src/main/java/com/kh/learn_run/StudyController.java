package com.kh.learn_run;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/study", method = RequestMethod.GET)
public class StudyController {
	
	@RequestMapping(value = "studyList", method = RequestMethod.GET)
	public void home(Locale locale, Model model) {
		
		
	}

}
