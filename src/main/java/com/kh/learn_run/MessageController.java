package com.kh.learn_run;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public List<MemberDTO> messageList(String id, Model model) throws Exception {
		
		List<MessageDTO> list = messageService.messageList(id);
		model.addAttribute("list", list);
		
		
		return null;
	}
}
