package com.kh.purchase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.study.StudyDTO;

@Service
public class PurchaseService {
	
	@Autowired
	private PurchaseDAO purchaseDAO;
	
/*	public String studyPurchase(StudyDTO studyDTO) throws Exception{
		return purchaseDAO.studyPurchase(studyDTO);
	}
	*/
	
}
