package com.kh.purchase;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kh.member.MemberDTO;


@Service
public class PurchaseService {
	
	@Autowired
	private PurchaseDAO purchaseDAO;

	public int payDo(PurchaseDTO purchaseDTO) throws Exception{
		return purchaseDAO.payDo(purchaseDTO);
	}
	
	public String cardNumCheck(HttpServletRequest request){
	
		String str = request.getParameter("str");
		
		String message="";
		
		int[] ints = new int[str.length()];
		
		for(int i = 0;i< str.length(); i++){
			ints[i] = Integer.parseInt(str.substring(i, i+1));
		}
		for(int i=ints.length-2; i>=0; i=i-2){
			int j = ints[i];
			j = j*2;
			
			if(j > 9){
				j = j%10 + 1;
			}
			ints[i] = j;
		}
		
		int sum = 0;
		
		for(int i = 0;i< ints.length; i++){
			sum+=ints[i];
		}
		
		if(sum%10 == 0){
			message = "true";
		}else{
			message = "false";
		}
		
		return message;
	}
	
	public int payComplete(PurchaseDTO purchaseDTO) throws Exception{
		return purchaseDAO.payComplete(purchaseDTO);
	}
	
	public MemberDTO paySmart(HttpServletRequest request)throws Exception{
		
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setPhone(request.getParameter("phone"));
		Date birth = Date.valueOf(request.getParameter("year")+"-"+request.getParameter("month")+"-"+request.getParameter("day"));
		memberDTO.setBirth(birth);

		return purchaseDAO.paySmart(memberDTO);
	}
	
	public int addMemberStudy(PurchaseDTO purchaseDTO) throws Exception{
		return purchaseDAO.addMemberStudy(purchaseDTO);
	}
	
	
}
