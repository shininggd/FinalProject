package com.kh.learn_run;

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
	
	@RequestMapping(value="/chulCheck")
	public void goChul() {
		
	}
	@RequestMapping(value="chulCheck", method=RequestMethod.GET)
	public void Chullist(ListInfo listInfo,Model model, HttpSession httpSession)throws Exception{
		List<ChulDTO> chul = chulService.Chullist(listInfo);
		String cheid = ((MemberDTO)httpSession.getAttribute("member")).getId();
		model.addAttribute("result", chul);
		model.addAttribute("cheid", cheid);
		model.addAttribute("totalCount", chulService.Ccount(listInfo));
		model.addAttribute("listInfo", listInfo);
	}
	
	@RequestMapping(value="chulCheck", method=RequestMethod.POST)
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
}
