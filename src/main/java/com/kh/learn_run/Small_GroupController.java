package com.kh.learn_run;

import java.io.File;
import java.util.HashMap;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kh.member.tutor.TutorDTO;
import com.kh.sgroup.SgroupDTO;
import com.kh.sgroup.SgroupService;
import com.kh.sgroup.Sgroup_UploadDTO;
import com.kh.study.StudyDTO;

@Controller
@RequestMapping(value = "/small_group")
public class Small_GroupController {
	
	@Autowired 
	private SgroupService sgroupService;
	
	@RequestMapping(value = "sgroup", method = RequestMethod.GET)
	public void sgroup(Model model) throws Exception{
		model.addAttribute("sgroupList", sgroupService.sgroupList());
	}
	@RequestMapping(value = "sgroupView", method = RequestMethod.GET)
	public void sgroupView(Model model, Integer num, String tid) throws Exception{
		HashMap<Object, Object> ar = sgroupService.sgroupView(num, tid);
		TutorDTO tutor=(TutorDTO)ar.get("tutor");
		SgroupDTO sgroup = (SgroupDTO)ar.get("sgroup");
		model.addAttribute("sgroup", sgroup);
		model.addAttribute("tutor", tutor);
		model.addAttribute("profile",ar.get("profile"));
		model.addAttribute("sgroup1",ar.get("sgroup1"));
		model.addAttribute("study", ar.get("study"));
	}
	@RequestMapping(value = "sgroupWrite", method = RequestMethod.GET)
	public void sgroupWrite() throws Exception{
		
	}
	@RequestMapping(value = "sgroup", method = RequestMethod.POST)
	public void sgroupWriteInsert(SgroupDTO sgroupDTO, MultipartFile f1, MultipartHttpServletRequest request, Model model) throws Exception{
		String realPath = request.getSession().getServletContext().getRealPath("resources/img/sgroup/upload");
		String fileName = UUID.randomUUID().toString();
		Sgroup_UploadDTO sgroup_UploadDTO = new Sgroup_UploadDTO();
		if(!f1.getOriginalFilename().equals("")){
			sgroup_UploadDTO.setOname(f1.getOriginalFilename());;
			sgroup_UploadDTO.setFname(fileName+"_"+sgroup_UploadDTO.getOname());
			}
		sgroupDTO.setFname(sgroup_UploadDTO.getFname());
		sgroupDTO.setOname(sgroup_UploadDTO.getOname());
		int i = sgroupService.write(sgroupDTO);
		sgroup_UploadDTO.setNum(sgroupService.sgroup_max()); 
		if(!f1.getOriginalFilename().equals("")){
			sgroup_UploadDTO.setNum(sgroupService.sgroup_max());
			sgroupService.sgroup_upload(sgroup_UploadDTO);
			if(i>0){
				File f2 = new File(realPath,sgroup_UploadDTO.getFname());
				FileCopyUtils.copy(f1.getBytes() , f2);
			}
		}
		model.addAttribute("sgroupList", sgroupService.sgroupList());
	}
}
