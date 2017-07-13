package com.kh.learn_run;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.member.MemberDTO;
import com.kh.member.MemberService;


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
		String message = "사용자정보 변경 실패";
		if(result>0) {
			message = "사용자정보 변경 성공";
		}
		model.addAttribute("message", message);
		
		return "common/resultMessage";
	}
}
