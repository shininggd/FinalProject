package com.kh.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import com.kh.member.tutor.TutorDTO;

public class InsertInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean ftype = true;
		if(((TutorDTO)(request.getSession().getAttribute("member"))).getRight().equals("f")){
			ftype=false;
		}
		return ftype;
	}
	
	
	
	

}
