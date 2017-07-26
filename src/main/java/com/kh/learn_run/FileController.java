package com.kh.learn_run;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kh.file.FileService;
import com.kh.util.SeDTO;

@Controller
@RequestMapping(value="/file/**")
public class FileController {
	
	@Autowired
	private FileService fileService;

	@RequestMapping(value="photoUpload")
	public String MemberProfileUpload(MultipartHttpServletRequest request,HttpSession session, Model model)throws Exception {
		String Fname = fileService.memberProfileUpload(request,session);
		
		model.addAttribute("Fname", Fname);
		
		return "common/resultFname";
	}
	//스마트 에디터 업로드
	@RequestMapping(value="seUpload", method=RequestMethod.POST)
	public String seUpload(SeDTO seDTO, HttpSession session) throws Exception{
		
		
		FileService fs = new FileService();
		return fs.seUpload(seDTO, session);
		
	/*	System.out.println("테스트");
		//callback 꺼내기
		String callback = seDTO.getCallback();
		//callback_func 꺼내기
		String callback_func = seDTO.getCallback_func();
		//Original Name 꺼내기
		String original_name = seDTO.getFiledata().getOriginalFilename();
		
		//defaultPath 잡기
		String defaultPath = session.getServletContext().getRealPath("resources/upload");
		
		File f = new File(defaultPath);
		//폴더(디렉터리)가 존재 하지 않을경우 디렉터리를 생성하겠습니다. 
		if(!f.exists()){
			f.mkdirs();
		}
		//디렉터리에 저장할 파일 명
		String realName = UUID.randomUUID().toString()+"_"+original_name;
		
		//받아온 파일을 디렉터리에 저장
		seDTO.getFiledata().transferTo(new File(f, realName));
		
		
		//최종적으로 서버에 있는 것을 리턴해준다.
		String file_result = "&bNewLine=true&sFileName="+original_name+"&sFileURL=/learn_run/resources/upload/"+realName;
		System.out.println(defaultPath);
		
		System.out.println(callback+"?callback_func"+callback_func+file_result);
		return "redirect:"+callback+"?callback_func"+callback_func+file_result;*/
		
		
	}
}
