package com.kh.learn_run;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kh.file.FileService;

@Controller
@RequestMapping(value="/file/**")
public class FileController {
	
	@Autowired
	private FileService fileService;

	@RequestMapping(value="photoUpload")
	public String MemberProfileUpload(MultipartHttpServletRequest request,HttpSession session, Model model)throws Exception {
		int result = fileService.memberProfileUpload(request,session);
		
		String message = "프로필 사진 변경실패";
		if(result>0) {
			message = "프로필 사진 변경성공";
		}
		model.addAttribute("message", message);
		
		return "common/resultMessage";
	}
}
