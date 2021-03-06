package com.kh.learn_run;


import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kh.member.MemberDTO;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.kh.member.student.StudentDTO;
import com.kh.member.student.StudentServiceImpl;
import com.kh.member.tutor.TutorDTO;
import com.kh.member.tutor.TutorServiceImpl;
import com.kh.message.MessageDTO;
import com.kh.message.MessageService;
import com.kh.purchase.PurchaseDTO;
import com.kh.util.ListInfo;
import com.kh.util.Cupon;


@Controller
@RequestMapping(value="/member/**")
public class MemberController {
	

	
	@Autowired
	private StudentServiceImpl studentServiceImpl;
	@Autowired
	private TutorServiceImpl tutorServiceImpl;
	@Autowired
	private MessageService messageservice;
	
	@RequestMapping(value="/IdCheck", method=RequestMethod.POST)
	public String memberIdCheck(String id, Model model) throws Exception{
		
		//System.out.println("controller="+id);
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
		
		if(memberDTO.getGrade().equals("student")){
			memberDTO = studentServiceImpl.memberLogin(memberDTO, session);
		}else{
			memberDTO = tutorServiceImpl.memberLogin(memberDTO, session);
		}
		String message = "로그인에 실패하였습니다.";
		if(memberDTO != null){
			message = "로그인에 성공하였습니다.";
			session.setAttribute("member", memberDTO);
		}
		String path = "/learn_run/";
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", message);
		mv.addObject("path", path);
		mv.setViewName("common/MLresult");
		
		return mv;
	}
	
	@RequestMapping(value="/tutorLogin", method = RequestMethod.POST)
	public ModelAndView memberLogin(MemberDTO memberDTO, HttpSession session) throws Exception{
		//System.out.println(memberDTO.getId());
		//System.out.println(memberDTO.getPw());
		memberDTO = tutorServiceImpl.memberLogin(memberDTO, session);
		String message = "로그인에 실패하였습니다.";
		if(memberDTO != null){
			message = "로그인에 성공하였습니다.";
			session.setAttribute("member", memberDTO);
		}
		String path = "/learn_run/";
		ModelAndView mv = new ModelAndView();
		mv.addObject("path", path);
		mv.addObject("message", message);
		mv.setViewName("common/MLresult");
		
		return mv;
		}

	@RequestMapping(value="/IdFind")
	public ModelAndView memberIdFind(MemberDTO memberDTO) throws Exception{
		memberDTO = studentServiceImpl.IdFind(memberDTO);
		String message ="";
		String path ="";
		ModelAndView mv = new ModelAndView();
		if(memberDTO != null){
			message = "입력하신 정보가 확인되었습니다.";
			mv.setViewName("member/sub/IdPwResult");
			mv.addObject("dto", memberDTO);
		}else{
			message ="정보를 다시 한 번 확인해주세요.";
			mv.setViewName("/common/MLresult");
			path ="/learn_run/member/find_id";
		}
		mv.addObject("path", path);
		mv.addObject("message", message);
		
		return mv;
	}
	
	@RequestMapping(value="/PwFind")
	public ModelAndView memberPwFind(MemberDTO memberDTO) throws Exception{
		
		//System.out.println("controller");
		//System.out.println(memberDTO.getId());
		//System.out.println(memberDTO.getName());
		
		memberDTO = studentServiceImpl.PwFind(memberDTO);
		String message ="";
		String path ="";
		
		//System.out.println(memberDTO.getId());
		
		ModelAndView mv = new ModelAndView();
		if(memberDTO != null){
			message = "입력하신 정보가 확인되었습니다.";
			mv.setViewName("member/sub/IdPwResult");
			mv.addObject("dto", memberDTO);
		}else{
			message ="정보를 다시 한 번 확인해주세요.";
			mv.setViewName("/common/MLresult");
			path ="/learn_run/member/find_pw";
		}
		mv.addObject("path", path);
		mv.addObject("message", message);
		return mv;
	}
	
	
	
	@RequestMapping(value="/find_id")
	public String goFindId(){
		return "member/sub/find_id";
	}
	
	@RequestMapping(value="/find_pw")
	public String goFindPw(){
		return "member/sub/find_pw";
	}
	
	@RequestMapping(value="/myPage")
	public void goMyPage() {
		
	}
	
	@RequestMapping(value="/myStudy")
	public void goMyStudy() {
		
	}
	
	@RequestMapping(value="/myPurchase")
	public void goMyPurchase(HttpSession session, Model model) throws Exception{
		List<StudentDTO> ar = studentServiceImpl.goMyPurchase((MemberDTO)session.getAttribute("member"));
		model.addAttribute("dto", ar);
	}
	
	@RequestMapping(value="/sub/receipt")
	public void callReceipt(String num, Model model) throws Exception{
		PurchaseDTO purchaseDTO = studentServiceImpl.callReceipt(Integer.parseInt(num));
		model.addAttribute("pdto", purchaseDTO);
		
	}
	
	@RequestMapping(value="/myPoint")
	public void goMyPoint(HttpSession session) {
	}
	
	@RequestMapping(value="/adminPage")
	public void goAdminPage() {
		
	}
	
	@RequestMapping(value="/memberUpdate")
	public String memberUpdate(HttpSession session,Model model,MemberDTO memberDTO) throws Exception {
		int result = studentServiceImpl.memberUpdate(memberDTO);
		String message = "정보수정 실패";
		if(result>0) {
			message = "정보수정 성공";
			session.setAttribute("member", memberDTO);
		}
		model.addAttribute("message", message);
		
		return "common/resultMessage";
	}
	
	@RequestMapping(value="/memberLogout")
	public String memberLogout(HttpSession session){
		session.invalidate();
		return "redirect:/";

	}
	
	@RequestMapping(value="tutorOversight", method=RequestMethod.POST)
	public String tutorOversightinfo(Model model, ListInfo listInfo) throws Exception {	
		if(listInfo.getCurPage() == null){
			listInfo.setCurPage(1);
		}
		if(listInfo.getFind() == null){
			listInfo.setFind("id");
		}
		if(listInfo.getSearch() == null){
			listInfo.setSearch("");
		}
		
		List<TutorDTO> tutorinfo =tutorServiceImpl.tutorinfo(listInfo);	
		model.addAttribute("totalCount", tutorServiceImpl.Tcount(listInfo));
		model.addAttribute("data", tutorinfo);
		model.addAttribute("listInfo", listInfo);
		return"member/sub/tutorOversight";
	}
	
	@RequestMapping(value="/sub/tutorOversight", method=RequestMethod.POST)
	public String tutorLRupdate(String id_ch, String lv_ch, String ri_ch,Model model)throws Exception{
		TutorDTO tutorDTO = new TutorDTO();
		tutorDTO.setId(id_ch);		
		tutorDTO.setLv(lv_ch);		
		tutorDTO.setRight(ri_ch);
		int result = tutorServiceImpl.LRUpdate(tutorDTO);
		String message ="Change fail";
		if(result>0) {
			message = "Change success";
		}
		
		model.addAttribute("message", message);
		
		return "common/resultMessage";			
	}

	@RequestMapping(value="/pointGC")
	public String pointGC(MemberDTO memberDTO, Model model) throws Exception {
		int result = studentServiceImpl.pointGC(memberDTO);
		
		Cupon Cupon = new Cupon();
		String cupon = Cupon.cuponCreate();
		
		MessageDTO messageDTO = new MessageDTO();
		messageDTO.setId(memberDTO.getId());
		messageDTO.setSender("admin");
		messageDTO.setTitle("도서문화상품권 일련번호 입니다.");
		messageDTO.setContents(cupon);
		
		messageservice.messageWrite(messageDTO);
		
		String message = "Trade Fail";
		if(result>0) {
			message = "Trade Success = ";
		}
		
		model.addAttribute("message", message);
		
		return "common/resultMessage"; 
	}
	
	@RequestMapping(value="GPStudentList")
	public String GPStudentList(String tid,Model model) {
		List<String> list = tutorServiceImpl.GPstudentList(tid);
		model.addAttribute("list", list);
		
		return "member/sub/GPstudentList";
	}
	
	@RequestMapping(value="/pointGive")
	public String pointGive(MemberDTO memberDTO,String sid,Model model) {
		int result = tutorServiceImpl.GP(memberDTO, sid);
		String message = "보내기 실패";
		if(result>1) {
			message = "보내기 성공";
		}
		model.addAttribute("message", message);
		
		return "common/resultMessage";
		
	}
	
	@RequestMapping(value="/myP")
	public String myPoint(MemberDTO memberDTO,Model model,HttpSession session) throws Exception {
		String result = studentServiceImpl.myPoint(memberDTO);
		MemberDTO dto = (MemberDTO)session.getAttribute("member");
		dto.setPoint(Integer.parseInt(result));
		session.setAttribute("member", dto);
		
		model.addAttribute("message", result);
		
		return "common/resultMessage";
	}
	
	@RequestMapping(value="/mygP")
	public String mygPoint(MemberDTO memberDTO,Model model,HttpSession session) throws Exception {
		String result = tutorServiceImpl.mygPoint(memberDTO);
		TutorDTO dto = (TutorDTO)session.getAttribute("member");
		dto.setGpoint(Integer.parseInt(result));
		session.setAttribute("member", dto);
		
		model.addAttribute("message", result);
		
		return "common/resultMessage";
	}
	
	@RequestMapping(value="memberOversight", method=RequestMethod.POST)
	public String memberOversightinfo(Model model, ListInfo listInfo) throws Exception {
		//맨 처음 버튼 눌렀을 때 리스트
		if(listInfo.getCurPage() == null){
			listInfo.setCurPage(1);
		}
		if(listInfo.getFind() == null){
			listInfo.setFind("id");
		}
		if(listInfo.getSearch() == null){
			listInfo.setSearch("");
		}
		
		List<StudentDTO> stuinfo =studentServiceImpl.stuinfo(listInfo);	
		model.addAttribute("totalCount", studentServiceImpl.Scount(listInfo));
		model.addAttribute("data", stuinfo);
		model.addAttribute("listInfo", listInfo);
		System.out.println(listInfo.getPerPage());
		return"member/sub/memberOversight";
	}
	
	//delete
	@RequestMapping(value="student_Delete", method=RequestMethod.POST)
	public String studentDelete(String id, Model model,HttpSession session){
		StudentDTO studentDTO = new StudentDTO();
		studentDTO.setId(id);
		int del = studentServiceImpl.memberDelete(studentDTO);
		String message="삭제 실패";
		if(del>0){
			message="Delete Success";
			session.invalidate();
				}
			model.addAttribute("message", message);	
			return "common/resultMessage";	
	}
	@RequestMapping(value="tutor_Delete", method=RequestMethod.POST)
	public String tutorDelete(String id, Model model,HttpSession session){
			TutorDTO tutorDTO = new TutorDTO();
			tutorDTO.setId(id);
			int del = tutorServiceImpl.tutorDelete(tutorDTO);
			String message="삭제 실패";
			if(del>1){
				message="Delete Success";
				session.invalidate();
					}
				model.addAttribute("message", message);	
				return "common/resultMessage";	
	}
	
	@RequestMapping(value="givePoint")
	public void givePoint() {
		
	}
}
