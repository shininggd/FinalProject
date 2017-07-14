package com.kh.file;

import org.springframework.stereotype.Component;

@Component
public class MUploadDTO extends FileDTO {

	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
}
