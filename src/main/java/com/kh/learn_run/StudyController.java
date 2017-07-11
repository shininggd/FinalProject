package com.kh.learn_run;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.kh.study.StudyService;
import com.kh.util.ListInfo;

@Controller
@RequestMapping(value = "/study", method = RequestMethod.GET)
public class StudyController {
	
	@Autowired
	private StudyService studyService;
	
	@RequestMapping(value = "studyList", method = RequestMethod.GET)
	public void list(Model model,ListInfo listInfo) {
		
		model.addAttribute("list",studyService.list(listInfo));
		
		
		
	}
	
}
