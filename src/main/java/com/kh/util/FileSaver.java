package com.kh.util;

import java.io.File;
import java.util.Calendar;

import org.springframework.web.multipart.MultipartFile;

public class FileSaver {
	
	public String fileSave(MultipartFile file, String realPath) throws Exception {
		String Fname = Calendar.getInstance().getTimeInMillis()+"_"+file.getOriginalFilename();
		
		File f = new File(realPath, Fname);
		file.transferTo(f);
		
		return Fname;
	}
}
