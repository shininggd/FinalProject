package com.kh.member.tutor;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kh.member.MemberDTO;
import com.kh.member.MemberService;
import com.kh.member.student.StudentDTO;
import com.kh.util.ListInfo;

@Service
public class TutorServiceImpl implements MemberService{

	@Autowired
	private TutorDAOImpl tutorDAOImpl;

	@Override
	public int memberJoin(MemberDTO memberDTO, HttpServletRequest request) throws Exception {
		
		return tutorDAOImpl.memberJoin(memberDTO);
	}

	@Override
	public int memberUpdate(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberDTO memberLogin(MemberDTO memberDTO, HttpSession session) throws Exception {
		
		return tutorDAOImpl.memberLogin(memberDTO, session);
	}


	@Override
	public String memberIdCheck(String id) throws Exception {
		String result = tutorDAOImpl.memberIdCheck(id);
		return result;
	}
	

	public List<TutorDTO> tutorinfo(ListInfo listInfo) throws Exception{
		listInfo.makePage(tutorDAOImpl.Tcount(listInfo));
		listInfo.makeRow();
		return tutorDAOImpl.tutorinfo(listInfo);
	}
	
	public int LRUpdate(TutorDTO tutorDTO) throws Exception {
		return tutorDAOImpl.LRupdate(tutorDTO);
	}
	public int Tcount(ListInfo listInfo) throws Exception{
		return tutorDAOImpl.Tcount(listInfo);

	}
	@Override
	public int pointGC(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;

	}
	public int tutorDelete(TutorDTO tutorDTO){
		return tutorDAOImpl.tutorDelete(tutorDTO);
	}
	
	public List<String> GPstudentList(String tid) {
		return tutorDAOImpl.GPstudentList(tid);
	}
	
}
	
	


