package com.kh.learn_run;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.member.tutor.TutorDTO;
import com.kh.study.StudyDTO;
import com.kh.study.StudyService;
import com.kh.util.ListInfo;

@Controller
@RequestMapping(value = "/study")
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
		model.addAttribute("profile",ar.get("profile"));
		
	}
	@RequestMapping(value = "studyRegist", method = RequestMethod.GET)
	public void regist(){

	}
	@RequestMapping(value = "studyPage", method = RequestMethod.GET)
	public void page(){

	}

	@RequestMapping(value = "studyRegistInsert", method = RequestMethod.POST)
	public String regist(StudyDTO studyDTO)throws Exception{
		System.out.println(studyDTO.getContents());
		studyService.regist(studyDTO);
		return "redirect: /learn_run/";

	}
	
	@RequestMapping(value = "studyUpdate", method=RequestMethod.POST )
	public String update(Model model, Integer num) throws Exception{
		String path = "study/studyUpdate";
		model.addAttribute("dto", studyService.update(num)); 

		return path;
	}
	@RequestMapping(value = "studyView", method = RequestMethod.POST)
	public String update(StudyDTO studyDTO,Model model)throws Exception{
		
		
		studyService.update(studyDTO);

		HashMap<Object, Object> ar =studyService.studyView(studyDTO.getNum(), studyDTO.getTid());
		StudyDTO dto = (StudyDTO) ar.get("study");
		TutorDTO tutor = (TutorDTO)ar.get("tutor");
		model.addAttribute("dto", dto);
		model.addAttribute("tutor",tutor);
		model.addAttribute("profile",ar.get("profile"));
	
		return "redirect: /learn_run/";

	}

	@RequestMapping(value="myStudyList", method = RequestMethod.POST)
	public String myStudy(Model model ,String id) {
		System.out.println("studyList");
		System.out.println(id);
		List<String> snums = studyService.myStudyListNum(id);
		
		List<StudyDTO> list = studyService.myStudyList(snums);
		
		model.addAttribute("list", list);
		
		return "member/sub/myStudyList";
	}
	@RequestMapping(value="studyHomeList", method=RequestMethod.GET)
	public void homeStudy(Model model, ListInfo listInfo) throws Exception{
		System.out.println(listInfo.getFind());
		System.out.println(listInfo.getSearch());
		model.addAttribute("list", studyService.homeList(listInfo));
	}
	
	@RequestMapping(value="/studyPurchase", method=RequestMethod.GET)
	public ModelAndView studyPurchase(HttpServletRequest request, int num, String type) throws Exception{
		//System.out.println(num);
		StudyDTO studyDTO = studyService.studydto(num);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", studyDTO);
		return mv;
	} 
	

}
