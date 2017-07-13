package com.kh.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	public int memberUpdate(MemberDTO memberDTO) {
		int result = memberDAO.memberUpdate(memberDTO);
		return result;
	}
}
