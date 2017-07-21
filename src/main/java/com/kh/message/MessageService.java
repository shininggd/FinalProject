package com.kh.message;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MessageService {

	@Autowired
	private MessageDAO messageDAO;
	

	public List<MessageDTO> messageList(String id) throws Exception {
		return messageDAO.messageList(id);
	}


	
}
