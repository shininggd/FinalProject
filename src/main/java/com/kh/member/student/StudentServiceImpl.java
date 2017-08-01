package com.kh.member.student;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kh.member.MemberDAO;
import com.kh.member.MemberDTO;
import com.kh.member.MemberService;
import com.kh.member.tutor.TutorDTO;
import com.kh.purchase.PurchaseDTO;
import com.kh.util.ListInfo;
@Service
public class StudentServiceImpl implements MemberService{
	
	
	@Autowired
	private StudentDAOImpl studentDAOImpl;

	@Override
	public int memberJoin(MemberDTO memberDTO, HttpServletRequest request) throws Exception {
		
		return studentDAOImpl.memberJoin(memberDTO);
	}

	@Override
	public int memberUpdate(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return studentDAOImpl.memberUpdate(memberDTO);
	}

	@Override
	public MemberDTO memberLogin(MemberDTO memberDTO, HttpSession session) throws Exception {
		return studentDAOImpl.memberLogin(memberDTO, session);
	}

	public MemberDTO IdFind(MemberDTO memberDTO) throws Exception {
		
		return studentDAOImpl.IdFind(memberDTO);
	}
	
	public MemberDTO PwFind(MemberDTO memberDTO) throws Exception {
		
		return studentDAOImpl.PwFind(memberDTO);
	}

	@Override
	public String memberIdCheck(String id) throws Exception {
		String result = studentDAOImpl.memberIdCheck(id);
		return result;
	}

	@Override
	public int pointGC(MemberDTO memberDTO) throws Exception {
		return studentDAOImpl.pointGC(memberDTO);
	}
	
	public String myPoint(MemberDTO memberDTO) throws Exception {
		return studentDAOImpl.myPoint(memberDTO);
	}
	public List<StudentDTO> stuinfo(ListInfo listInfo) throws Exception{
		listInfo.makePage(studentDAOImpl.Scount(listInfo));
		listInfo.makeRow();
		return studentDAOImpl.stuinfo(listInfo);
	}
	
	public int Scount(ListInfo listInfo) throws Exception{
		return studentDAOImpl.Scount(listInfo);
	}

	public int memberDelete(StudentDTO studentDTO){
		return studentDAOImpl.memberDelete(studentDTO);
	}
	
	public List<StudentDTO> goMyPurchase(MemberDTO memberDTO) throws Exception{
		return studentDAOImpl.goMyPurchase(memberDTO);
	}
	
	public PurchaseDTO callReceipt(int num) throws Exception{
		return studentDAOImpl.callReceipt(num);
	}
}
		

	
	

