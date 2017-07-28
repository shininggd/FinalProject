package com.kh.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

public class Download extends AbstractView {

	public Download(){
		setContentType("application/download;charset=UTF-8");
	}
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
	File f = (File)model.get("downloadFile");
		
		response.setCharacterEncoding(getContentType());
		response.setContentLength((int)f.length());// 파일크기
		
		String fileName = URLEncoder.encode(f.getName(),"UTF-8"); // 파일 이름을 UTF-8로
		fileName = fileName.substring(fileName.lastIndexOf("_")+1);
		
		response.setHeader("Content-Disposition", "attachment;filename=\""+fileName+"\"");
		response.setHeader("Content-Transfer-Encoding", "binary");
		OutputStream out = response.getOutputStream();
		
		FileInputStream fi = null;
		fi = new FileInputStream(f);
		FileCopyUtils.copy(fi, out);
		fi.close();
		out.close();
		
	}
	
}
