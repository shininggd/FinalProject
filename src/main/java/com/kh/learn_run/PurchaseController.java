package com.kh.learn_run;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.member.MemberDTO;
import com.kh.purchase.PurchaseDTO;
import com.kh.purchase.PurchaseService;
import com.kh.study.StudyDTO;

@Controller
@RequestMapping(value="/study/**")
public class PurchaseController {

	@Autowired
	private PurchaseService purchaseService;
		
	@RequestMapping(value="/purchaseDo",method=RequestMethod.POST)
	public void purchaseDo(PurchaseDTO purchaseDTO, Model model) throws Exception{
		//System.out.println(purchaseDTO.getProduct());
	 model.addAttribute("dto", purchaseDTO);
		
	}
	
	@RequestMapping(value="/payDo", method=RequestMethod.POST)
	public void payDo(PurchaseDTO purchaseDTO, Model model) throws Exception{
		
		purchaseService.payComplete(purchaseDTO);
		purchaseService.addMemberStudy(purchaseDTO);
		model.addAttribute("dto", purchaseDTO);
		
	}
	
	@RequestMapping(value="/cardNumCheck")
	public String cardNumCheck(HttpServletRequest request, Model model) throws Exception{
		
		 String result= purchaseService.cardNumCheck(request);
		 model.addAttribute("message", result);
		
		 return "common/resultMessage"; 		
	}
	
	@RequestMapping(value="/payComplete")
	public void payComplete() throws Exception{
		
	}
	
	
	
	@RequestMapping(value="/smartCheck")
	public String smartCheck(HttpServletRequest request, Model model) throws Exception{
		String message = "false";
		
		System.out.println("birth"+request.getParameter("birth"));
		System.out.println("phone"+request.getParameter("phone"));
		
		System.out.println("result="+purchaseService.paySmart(request));
		
		if(purchaseService.paySmart(request) != null){
			message = "true";			
		}
		
		model.addAttribute("message", message);
		return "common/resultMessage";
	}
	
	@RequestMapping(value="/callReceipt", method=RequestMethod.GET)
	public ModelAndView callReceipt(HttpServletRequest request, int num) throws Exception{
	
		PurchaseDTO purchaseDTO = purchaseService.callReceipt(num);
		ModelAndView mv = new ModelAndView();
		mv.addObject("pdto", purchaseDTO);
		return mv;
	}
	
}
