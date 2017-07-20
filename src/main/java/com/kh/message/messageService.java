package com.kh.message;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class messageService {

	@Autowired
	private messageDAO messageDAO;
	
	public List<String> messageList(String id) {
		messageDAO.
	}
	
}
