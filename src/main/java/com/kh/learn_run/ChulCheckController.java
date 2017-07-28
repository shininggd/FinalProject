package com.kh.learn_run;



import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.chul.ChulDAO;
import com.kh.chul.ChulDTO;
import com.kh.chul.ChulService;
import com.kh.member.MemberDTO;
import com.kh.util.ListInfo;

@Controller
@RequestMapping(value="/chul/**")
public class ChulCheckController {
	@Autowired
	private ChulService chulService;
	@Autowired
	private ChulDAO chulDAO;
	
	@RequestMapping(value="/chulCheck", method=RequestMethod.GET)
	public void goChul() {
		
	}

	@RequestMapping(value="/chulList", method=RequestMethod.POST)
	public String ChulList(Model model,String da, HttpSession httpSession)throws Exception{
		Date date=null;
		
		if(da.equals("0")) {
		date = new Date(System.currentTimeMillis());
		}else {
			date = Date.valueOf(da);
		}
		List<ChulDTO> chul = chulService.Chullist(date);	
		
		model.addAttribute("result", chul);
		return "chul/chulList";
	}
	
	@RequestMapping(value="/chulCheck", method=RequestMethod.POST)
	public ModelAndView ChulWrite( String writer, String contents)throws Exception{
		ModelAndView mv = new ModelAndView();
		ChulDTO chulDTO = new ChulDTO();
		chulDTO.setWriter(writer);
		chulDTO.setContents(contents);
		int result = chulService.ChulWriter(chulDTO);
		String message = "등록실패";
		if(result>0){
			message = "등록성공";
		}
		mv.addObject("message", message);
		mv.setViewName("/chul/chulCheck");
		
		return mv;
	}
	
	@RequestMapping(value="chulDelete")
	public String chulDelete(String num,Model model) throws Exception {
		int result = chulService.cDelete(num);
		String message = "삭제 실패";
		if(result>0) {
			message = "삭제 성공";
		}
		model.addAttribute("message", message);
		
		return "common/resultMessage";
	}
	
}
