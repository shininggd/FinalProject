package com.kh.learn_run;


import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.kh.member.MemberDTO;
import com.kh.member.MemberService;


import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.member.MemberDTO;
import com.kh.member.MemberService;
import com.kh.member.student.StudentDAOImpl;
import com.kh.member.student.StudentDTO;
import com.kh.member.student.StudentServiceImpl;
import com.kh.member.tutor.TutorDTO;
import com.kh.member.tutor.TutorServiceImpl;


@Controller
@RequestMapping(value="/member/**")
public class MemberController {
	
	@Autowired

	private MemberService memberService;

	@RequestMapping(value="/myPage")
	public void goMyPage() {
		
	}
	
	@RequestMapping(value="/myStudy")
	public void goMyStudy() {
		
	}
	
	@RequestMapping(value="/myPurchase")
	public void goMyPurchase() {
		
	}
	
	@RequestMapping(value="/myPoint")
	public void goMyPoint() {
		
	}
	
	@RequestMapping(value="/memberUpdate")
	public String memberUpdate(Model model,MemberDTO memberDTO,String phone1,String phone2,String phone3) {
		memberDTO.setPhone(phone1+"-"+phone2+"-"+phone3);
		int result = memberService.memberUpdate(memberDTO);
		String message = "��������� ���� ����";
		if(result>0) {
			message = "��������� ���� ����";
		}
		model.addAttribute("message", message);
		
		return "common/resultMessage";
	}

	private StudentServiceImpl studentServiceImpl;
	@Autowired
	private TutorServiceImpl tutorServiceImpl;
	
	@RequestMapping(value="/IdCheck", method=RequestMethod.POST)
	public String memberIdCheck(String id, Model model) throws Exception{
		
		System.out.println("controller="+id);
		String result = studentServiceImpl.memberIdCheck(id);
		if(result == null) {
			result = "true";
		}
		//System.out.println("result="+result);
		model.addAttribute("result", result);
		
		return "common/Idcheck";
	}
	
	@RequestMapping(value="/studentJoin", method=RequestMethod.POST)
	public String studentJoin(MemberDTO memberDTO, Model model, HttpSession session, HttpServletRequest request)throws Exception{
	
		int result = studentServiceImpl.memberJoin(memberDTO, request);
		String message = "가입이 정상적으로 처리되지 않았습니다.";
		if(result>0){
			message="회원 가입을 축하드립니다!";
		}
		session.setAttribute("message", message);
		session.setAttribute("path", "../");
		
		return "common/MLresult";
	}
	
	@RequestMapping(value="/tutorJoin", method=RequestMethod.POST)
	public String tutorJoin(MemberDTO memberDTO, Model model, HttpSession session, HttpServletRequest request)throws Exception{
		
		int result = tutorServiceImpl.memberJoin(memberDTO, request);
		
		String message = "가입이 정상적으로 처리되지 않았습니다.";
		System.out.println("result="+result);
		if(result>1){
			message="회원 가입을 축하드립니다!";
		}
		session.setAttribute("message", message);
		session.setAttribute("path", "../");
		
		return "common/MLresult";
	}
	
	@RequestMapping(value="/studentLogin", method=RequestMethod.POST)
	public ModelAndView studentLogin(MemberDTO memberDTO, HttpSession session)throws Exception{
		
		System.out.println("studentLogin");
		memberDTO = studentServiceImpl.memberLogin(memberDTO, session);
		String message = "로그인에 실패하였습니다.";
		if(memberDTO != null){
			message = "로그인에 성공하였습니다.";
			session.setAttribute("member", memberDTO);
		}
		String path = "../";
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", message);
		mv.addObject("path", path);
		mv.setViewName("common/MLresult");
		
		return mv;
	}
	
	@RequestMapping(value="/tutorLogin", method = RequestMethod.POST)
	public ModelAndView memberLogin(MemberDTO memberDTO, HttpSession session) throws Exception{
		memberDTO = tutorServiceImpl.memberLogin(memberDTO, session);
		String message = "로그인에 실패하였습니다.";
		if(memberDTO != null){
			message = "로그인에 성공하였습니다.";
			session.setAttribute("member", memberDTO);
		}
		String path = "../";
		ModelAndView mv = new ModelAndView();
		mv.addObject("path", path);
		mv.addObject("message", message);
		mv.setViewName("common/MLresult");
		
		return mv;
		}


}
