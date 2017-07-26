package com.kh.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import com.kh.member.tutor.TutorDTO;

public class InsertInterceptor extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		if((request.getSession().getAttribute("member") == null) || ((TutorDTO)(request.getSession().getAttribute("member"))).getRight().equals("f")){
			modelAndView.setViewName("/common/resultMessage");
			modelAndView.addObject("message", "권한이 없거나 로그아웃 된 상태입니다.");
			modelAndView.addObject("path", "/");
			
		}
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}
	
	
	
	

}
