package com.kh.learn_run;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import com.kh.file.FileService;
import com.kh.member.tutor.TutorDTO;
import com.kh.study.StudyDTO;
import com.kh.study.StudyService;
import com.kh.util.FileSaver;
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
	public String regist(StudyDTO studyDTO, MultipartFile f1,MultipartHttpServletRequest request)throws Exception{
		
		String realPath = request.getSession().getServletContext().getRealPath("resources/img/study/upload");
		String fileName = UUID.randomUUID().toString();
		
		
		studyDTO.setOname(f1.getOriginalFilename());;
		studyDTO.setFname(fileName+"_"+studyDTO.getOname());
		int i =studyService.regist(studyDTO);
		if(i>0){
			/*File f2 = new File(realPath,studyDTO.getFname());
			FileCopyUtils.copy(f1.getBytes() , f2);*/
			FileSaver fs = new FileSaver();
			fs.fileSave(f1, realPath);
		}
		return "redirect: /learn_run/";

	}
	
	@RequestMapping(value = "studyUpdate", method=RequestMethod.POST )
	public String update(Model model, Integer num) throws Exception{
		String path = "study/studyUpdate";
		model.addAttribute("dto", studyService.update(num)); 

		return path;
	}
	@RequestMapping(value = "studyView", method = RequestMethod.POST)
	public String update(StudyDTO studyDTO,Model model,MultipartFile f1,MultipartHttpServletRequest request)throws Exception{
		
		String fileName = UUID.randomUUID().toString();
		String realPath = request.getSession().getServletContext().getRealPath("resources/img/study/upload");
		if(!f1.getOriginalFilename().equals("")){
		studyDTO.setOname(f1.getOriginalFilename());;
		studyDTO.setFname(fileName+"_"+studyDTO.getOname());
		}
		
		int i = studyService.update(studyDTO);
		if(i>0 && !f1.getOriginalFilename().equals("")){
			File f2 = new File(realPath,studyDTO.getFname());
			FileCopyUtils.copy(f1.getBytes() , f2);
		}

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
		
		List<String> snums = studyService.myStudyListNum(id);
		
		List<StudyDTO> list = studyService.myStudyList(snums);
		
		model.addAttribute("list", list);
		
		return "member/sub/myStudyList";
	}
	
	@RequestMapping(value="tutorStudyList", method = RequestMethod.POST)
	public String tutorStudy(Model model ,String id) {
		
		List<StudyDTO> list = studyService.tutorStudyList(id);
		
		model.addAttribute("list", list);
		
		return "member/sub/tutorStudyList";
	}
	
	@RequestMapping(value="studyHomeList", method=RequestMethod.GET)
	public void homeStudy(Model model, ListInfo listInfo) throws Exception{
		System.out.println(listInfo.getFind());
		System.out.println(listInfo.getSearch());
		listInfo.setSearch("");
		model.addAttribute("list", studyService.homeList(listInfo));
	}

	@RequestMapping(value="studySlider", method=RequestMethod.GET)
	public void studySlider(Model model) throws Exception{
		
		model.addAttribute("list", studyService.studySlider());
	}

	
	@RequestMapping(value="/studyPurchase", method=RequestMethod.GET)
	public ModelAndView studyPurchase(HttpServletRequest request, int num, String type) throws Exception{
	
		StudyDTO studyDTO = studyService.studydto(num);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", studyDTO);
		return mv;
	} 
	

}
