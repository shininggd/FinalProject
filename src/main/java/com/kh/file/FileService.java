package com.kh.file;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kh.member.MemberDTO;
import com.kh.util.FileSaver;

@Service
public class FileService {
	
	@Autowired
	private FileDAO fileDAO;

	public int memberProfileUpload(MultipartHttpServletRequest request,HttpSession session) throws Exception {
		MultipartFile file = request.getFile("photo");
		String realPath = request.getSession().getServletContext().getRealPath("resources/img/member/profilePhoto");
		
		System.out.println("realPath="+realPath);
		
		FileSaver fileSaver = new FileSaver();
		String Fname = fileSaver.fileSave(file, realPath);
		
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("jtaeju");
		memberDTO.setFname(Fname);
		memberDTO.setOname(file.getOriginalFilename());
		
		int result = fileDAO.upload(memberDTO);
		return result;
	}
}
