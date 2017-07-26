package com.kh.learn_run;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
}
