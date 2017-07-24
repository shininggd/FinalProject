package com.kh.learn_run;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.purchase.PurchaseDAO;
import com.kh.purchase.PurchaseDTO;
import com.kh.purchase.PurchaseService;
import com.kh.study.StudyDTO;

@Controller
@RequestMapping(value="/study/**")
public class PurchaseController {

	@Autowired
	private PurchaseService purchaseService;
	
	@RequestMapping(value="/purchaseDo")
	public void purchaseDo(PurchaseDTO purchaseDTO,Model model) throws Exception{
		
		
		model.addAttribute("dto", purchaseDTO);

	}
	
	@RequestMapping(value="/payDo")
	public void payDo(PurchaseDTO purchaseDTO, Model model) throws Exception{
		model.addAttribute("dto", purchaseDTO);
	}
	
	@RequestMapping(value="/cardNumCheck")
	public String cardNumCheck(HttpServletRequest request, Model model) throws Exception{
		
		 String result= purchaseService.cardNumCheck(request);
		 model.addAttribute("message", result);
		
		 return "common/resultMessage";
		 		
	}
	
	
}