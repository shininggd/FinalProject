package com.kh.member.student;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.kh.member.MemberDAO;
import com.kh.member.MemberDTO;
import com.kh.member.MemberService;
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

	}
		

	
	

