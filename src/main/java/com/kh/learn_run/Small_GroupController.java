package com.kh.learn_run;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kh.sgroup.SgroupDTO;
import com.kh.study.StudyDTO;

@Controller
@RequestMapping(value = "/small_group", method = RequestMethod.GET)
public class Small_GroupController {
	@RequestMapping(value = "sgroup", method = RequestMethod.GET)
	public void sgroup() throws Exception{
		
	}
	@RequestMapping(value = "sgroupView", method = RequestMethod.GET)
	public void sgroupView() throws Exception{
		
	}
	@RequestMapping(value = "sgroupWrite", method = RequestMethod.GET)
	public void sgroupWrite() throws Exception{
		
	}
	@RequestMapping(value = "sgroupWriteInsert", method = RequestMethod.POST)
	public void sgroupWriteInsert(SgroupDTO sgroupDTO, MultipartFile f1, MultipartHttpServletRequest) throws Exception{
		
	}
}
