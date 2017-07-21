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
import com.kh.study.StudyDTO;

@Controller
public class PurchaseController {

	@Autowired
	private PurchaseDAO purchaseDAO;
	
	@RequestMapping(value="/study/purchaseDo")
	public void purchaseDo(PurchaseDTO purchaseDTO,Model model){
		//System.out.println(purchaseDTO.getPrice());
		model.addAttribute("dto", purchaseDTO);
		
	}
	
	
}
