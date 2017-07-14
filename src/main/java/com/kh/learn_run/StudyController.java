package com.kh.learn_run;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.member.tutor.TutorDTO;
import com.kh.study.StudyDTO;
import com.kh.study.StudyService;
import com.kh.util.ListInfo;

@Controller
@RequestMapping(value = "/study", method = RequestMethod.GET)
public class StudyController {
	
	@Autowired
	private StudyService studyService;
	
	@RequestMapping(value = "studyList", method = RequestMethod.GET)
	public void list(Model model,ListInfo listInfo,String search)throws Exception {
		String [] ar = search.split(",");
		
		model.addAttribute("totalCount", studyService.count(listInfo));
		model.addAttribute("list",studyService.list(listInfo));
		model.addAttribute("listInfo", listInfo);
		model.addAttribute("category",ar[0]);
		
		
	}
	@RequestMapping(value = "studyView", method = RequestMethod.GET)
	public void studyView(Model model, Integer num,String tid)throws Exception{
		
		HashMap<Object, Object> ar =studyService.studyView(num, tid);
		StudyDTO dto = (StudyDTO) ar.get("study");
		TutorDTO tutor = (TutorDTO)ar.get("tutor");
		model.addAttribute("dto", dto);
		model.addAttribute("tutor",tutor);
	}
	@RequestMapping(value = "studyRegist", method = RequestMethod.GET)
	public void regist(){

	}
	@RequestMapping(value = "studyRegistInsert", method = RequestMethod.POST)
	public void regist(StudyDTO studyDTO)throws Exception{
		studyService.regist(studyDTO);

	}

	
}
