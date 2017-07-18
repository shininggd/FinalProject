package com.kh.member.tutor;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.member.MemberDTO;
import com.kh.member.MemberService;

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
	public String IdFind(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String PwFind(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String memberIdCheck(String id) throws Exception {
		String result = tutorDAOImpl.memberIdCheck(id);
		return result;
	}
	
	public List<TutorDTO> tutorinfo() throws Exception{
		return tutorDAOImpl.tutorinfo();
	}
	
	
	public int LRUpdate(TutorDTO tutorDTO) throws Exception {
		
		return tutorDAOImpl.LRupdate(tutorDTO);
	}
	
}
	
	


