package com.kh.learn_run;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.member.MemberDTO;
import com.kh.message.MessageDTO;
import com.kh.message.MessageService;

@Controller
@RequestMapping(value="/message/**")
public class MessageController {

	@Autowired
	private MessageService messageService;
	
	@RequestMapping(value="messagePage")
	public void goMessage() {
		
	}
	
	@RequestMapping(value="messageList")
	public String messageList(String id, Model model) throws Exception {
		
		List<MessageDTO> list = messageService.messageList(id);
		
		if(list != null) {
		model.addAttribute("list", list);
		}
		
		return "message/messageList";
	}
	
	@RequestMapping(value="messageView")
	public String messageView(int num , Model model) {
		MessageDTO messageDTO = messageService.messageView(num);
		messageService.messageRead(num);
		model.addAttribute("dto",messageDTO);
		
		return "/message/messageView";
	}
	
	@RequestMapping(value="messageWrite",method=RequestMethod.GET)
	public void messageWriteForm() {
		
	}
	
	@RequestMapping(value="messageWrite",method=RequestMethod.POST)
	public String messageWrite(MessageDTO messageDTO, Model model) {
		int result = messageService.messageWrite(messageDTO);
		
		String message = "Send Fail!";
		if(result>0) {
			message = "Send Success!";
		}
		model.addAttribute("message", message);
		
		return "common/resultMessage";
	}
}
