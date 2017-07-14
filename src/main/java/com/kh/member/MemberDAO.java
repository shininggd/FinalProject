package com.kh.member;

import javax.servlet.http.HttpSession;

public interface MemberDAO {
	
	public int memberJoin(MemberDTO memberDTO) throws Exception;
	
	public int memberUpdate(MemberDTO memberDTO) throws Exception;
	
	public MemberDTO memberLogin(MemberDTO memberDTO, HttpSession session) throws Exception;
	
	public String IdFind(MemberDTO memberDTO) throws Exception;
	
	public String PwFind(MemberDTO memberDTO) throws Exception;
	
	public String memberIdCheck(String id) throws Exception;

}
