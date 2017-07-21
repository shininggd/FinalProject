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

	public MessageDTO messageView(int num) {
		return messageDAO.messageView(num);
	}

	public int messageRead(int num) {
		return messageDAO.messageRead(num);
	}
	
	public int messageWrite(MessageDTO messageDTO) {
		return messageDAO.messageWrite(messageDTO);
	}
	
	public int messageDelete(int num) {
		return messageDAO.messageDelete(num);
	}
	
	public int messageCount(String id) {
		return messageDAO.messageCount(id);
	}
}
