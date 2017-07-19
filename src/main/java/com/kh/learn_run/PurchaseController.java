package com.kh.learn_run;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.purchase.PurchaseDAO;
import com.kh.purchase.PurchaseDTO;
import com.kh.study.StudyDTO;

@Controller
public class PurchaseController {

	@Autowired
	private PurchaseDAO purchaseDAO;
	
	@RequestMapping(value="/study/studyPurchase", method=RequestMethod.GET)
	public String studyPurchase(HttpServletRequest request) throws Exception{
		System.out.println("controller");
		StudyDTO studyDTO = new StudyDTO();
		studyDTO.setTitle(request.getParameter("title"));

		return purchaseDAO.studyPurchase(studyDTO);
	} 
	
	
}
