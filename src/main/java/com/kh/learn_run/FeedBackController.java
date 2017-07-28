package com.kh.learn_run;

import java.io.File;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kh.board.BoardDTO;
import com.kh.feedback.FeedBackDTO;
import com.kh.feedback.FeedBackService;
import com.kh.feedback.FeedBack_UploadDTO;
import com.kh.study.StudyDTO;
import com.kh.util.ListInfo;

@Controller
@RequestMapping(value = "/feedback")
public class FeedBackController {
	
	@Autowired
	private FeedBackService feedBackService; 
	
	//처음 화면 보기용 
	@RequestMapping(value="studyPage")
	public void feedPage(Integer snum, Model model){
		HashMap<Object, Object> map =  feedBackService.studyPage(snum);
		model.addAttribute("dto", map.get("dto"));
		model.addAttribute("fname", map.get("fname"));
		
	}
	//처음 화면 보기용끝
	//리스트 보기용
	@RequestMapping(value="feedbackList")
	public void list(ListInfo listInfo,Model model,String kind, String searchText,String find)throws Exception{
		String getSnum []  = listInfo.getSearch().split(",");
		HashMap<Object, Object> map =  feedBackService.studyPage(Integer.valueOf(getSnum[0]));
		model.addAttribute("category",getSnum[1]);
		model.addAttribute("dto", map.get("dto"));
		model.addAttribute("fname", map.get("fname"));
		model.addAttribute("list", feedBackService.list(listInfo));
		model.addAttribute("kind",kind);
		model.addAttribute("searchText",searchText);
		
		
	}
	@RequestMapping(value="feedbackOurList")
	public void ourList(ListInfo listInfo,Model model)throws Exception{
		model.addAttribute("list", feedBackService.homeList(listInfo));
	}
	@RequestMapping(value="feedbackFreeList")
	public void freeList(ListInfo listInfo,Model model)throws Exception{
		model.addAttribute("list", feedBackService.homeList(listInfo));
	}
	
	//리스트 보기용끝
	//글보기용
	@RequestMapping(value="feedbackView")
	public void view(Integer snum, Integer num, Model model)throws Exception{
		HashMap<Object, Object> map =  feedBackService.studyPage(snum);
		model.addAttribute("dto", map.get("dto"));
		model.addAttribute("fname", map.get("fname"));
		model.addAttribute("view", feedBackService.view(num));	
		model.addAttribute("file", feedBackService.checkUpload(num));
	}
	//글보기용 끝
	//글수정용
	@RequestMapping(value="feedbackUpdate")
	public void update(Integer num, Model model)throws Exception{
		model.addAttribute("dto", feedBackService.view(num));	
	}
	@RequestMapping(value="feedbackView",method=RequestMethod.POST)
	public void update(FeedBackDTO feedBackDTO, Model model ,MultipartFile feedUp,MultipartHttpServletRequest request) throws Exception{
		int i = feedBackService.update(feedBackDTO);
		if(i>0 && !feedUp.getOriginalFilename().equals("")){
			String realPath = request.getSession().getServletContext().getRealPath("resources/img/feedback/upload");
			String fileName = UUID.randomUUID().toString();
			FeedBack_UploadDTO feedBack_UploadDTO = new FeedBack_UploadDTO();
			feedBack_UploadDTO.setOname(feedUp.getOriginalFilename());;
			feedBack_UploadDTO.setFname(fileName+"_"+feedBack_UploadDTO.getOname());
			feedBack_UploadDTO.setNum(feedBackDTO.getNum());
			if(feedBackService.checkUpload(feedBackDTO.getNum())==null){
				feedBackService.feedback_upload(feedBack_UploadDTO);
			}else{
				feedBackService.feedback_upload_update(feedBack_UploadDTO);
				
			}
			File f2 = new File(realPath,feedBack_UploadDTO.getFname());
			FileCopyUtils.copy(feedUp.getBytes() , f2);
			model.addAttribute("file", feedBackService.checkUpload(feedBackDTO.getNum()));
		}
		
		HashMap<Object, Object> map =  feedBackService.studyPage(feedBackDTO.getSnum());
		model.addAttribute("dto", map.get("dto"));
		model.addAttribute("fname", map.get("fname"));
		model.addAttribute("view", feedBackService.view(feedBackDTO.getNum()));
	}
	//글 답글
	@RequestMapping(value="feedbackReply")
	public void reply(Integer num, Model model)throws Exception{
		model.addAttribute("dto", feedBackService.view(num));	
		
	}
	
	//글 답글 끝
	//글쓰기용
	@RequestMapping(value="feedbackWrite")
	public void write(int snum, Model model){
		model.addAttribute("snum", snum);
		
	}
	//글쓰기용 끝
	//쓰고 답글달기용
	@RequestMapping(value="studyPage", method = RequestMethod.POST)
	public void write(FeedBackDTO feedBackDTO, Model model, String kind,MultipartFile feedUp,MultipartHttpServletRequest request)throws Exception{
		int i = 0;
		System.out.println(feedUp.getOriginalFilename());
		String realPath = request.getSession().getServletContext().getRealPath("resources/img/feedback/upload");
		String fileName = UUID.randomUUID().toString();
		FeedBack_UploadDTO feedBack_UploadDTO = new FeedBack_UploadDTO();
		if(!feedUp.getOriginalFilename().equals("")){
			feedBack_UploadDTO.setOname(feedUp.getOriginalFilename());;
			feedBack_UploadDTO.setFname(fileName+"_"+feedBack_UploadDTO.getOname());
			}
		if(kind.equals("write")){
			i =feedBackService.write(feedBackDTO);
			
		}else{
			i = feedBackService.reply(feedBackDTO);
		}
		
		feedBack_UploadDTO.setNum(feedBackService.feedback_max()); 
		if(i>0 && !feedUp.getOriginalFilename().equals("")){
			feedBack_UploadDTO.setNum(feedBackService.feedback_max());
			feedBackService.feedback_upload(feedBack_UploadDTO);
			File f2 = new File(realPath,feedBack_UploadDTO.getFname());
			FileCopyUtils.copy(feedUp.getBytes() , f2);
		}
		HashMap<Object, Object> map =  feedBackService.studyPage(feedBackDTO.getSnum());
		model.addAttribute("dto", map.get("dto"));
		model.addAttribute("fname", map.get("fname"));
	}
	@RequestMapping(value="fileDown")
	public ModelAndView fileDown(String filename, String oriname, HttpSession session) throws Exception{
		String realPath = session.getServletContext().getRealPath("resources/img/feedback/upload");
		ModelAndView mv = new ModelAndView();
		File file = new File(realPath, filename);
		mv.setViewName("download");
		mv.addObject("downloadFile",file);
		mv.addObject("oriName",oriname);
		return mv;
		
		
	}
	

}
