package com.kh.file;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kh.member.MemberDTO;
import com.kh.util.FileSaver;
import com.kh.util.SeDTO;

@Service
public class FileService {
	
	@Autowired
	private FileDAO fileDAO;

	public String memberProfileUpload(MultipartHttpServletRequest request,HttpSession session) throws Exception {
		MultipartFile file = request.getFile("photo");
		String realPath = request.getSession().getServletContext().getRealPath("resources/img/member/profilePhoto");
		
		System.out.println("realPath="+realPath);
		
		FileSaver fileSaver = new FileSaver();
		String Fname = fileSaver.fileSave(file, realPath);
		
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		memberDTO.setFname(Fname);
		memberDTO.setOname(file.getOriginalFilename());
		
		int result = fileDAO.upload(memberDTO);
		if(result>0) {
			session.setAttribute("member", memberDTO);
		}
		return Fname;
	}
	//SeUpload
		public String seUpload(SeDTO seDTO, HttpSession session) throws Exception{
			String file_result = "";
			
			if(seDTO.getFiledata() != null && seDTO.getFiledata().getOriginalFilename() != null && !seDTO.getFiledata().getOriginalFilename().equals("")){
				FileSaver fileSaver = new FileSaver();
				String defaultPath = session.getServletContext().getRealPath("resources/upload");
				String realName = fileSaver.fileSave(seDTO.getFiledata(),defaultPath);
			
				System.out.println(defaultPath);
				
				file_result = "&bNewLine=true&sFileName="+seDTO.getFiledata().getOriginalFilename()+"&sFileURL=/learn_run/resources/upload/"+realName;
			
			}else {
				file_result = "&errstr=error";
			}
			
			
			return "redirect:"+seDTO.getCallback()+"?callback_func="+seDTO.getCallback_func()+file_result;
			
			
		}
}
