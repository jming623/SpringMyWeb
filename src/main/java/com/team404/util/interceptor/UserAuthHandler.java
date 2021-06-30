package com.team404.util.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.team404.command.UserVO;

public class UserAuthHandler extends HandlerInterceptorAdapter {

	// 1.HandlerInterceptorAdapter를 상속받고 prehandler, posthandler메서드를 오버라이딩
	// 2. 메서드 오버라이딩이 완료되면 스프링 설정파일에서  이 클래스를 bean으로 등록하고 적용시켜야 함.
	//controller진입 전에 요청 핸들링
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//request로 session을 얻어올 수 있다.
		HttpSession session = request.getSession();//현재의 세션을 얻는다
		
		//세션에서 userVO를 얻는다. (로그인될때 생성)
		UserVO userVO = (UserVO)session.getAttribute("userVO");
				
		//리턴에 true가 들어가면 컨트롤러를 그대로 실행, false가 들어가면 컨트롤러를 실행하지 않는다.
		if(userVO == null) {//userVO가 없다는것은 로그인이 안됐다는 의미
			
			response.sendRedirect( request.getContextPath() + "/user/userLogin");			
			return false;			
		}else {			
			return true;
		}
				
//		return super.preHandle(request, response, handler);//메서드를 오버라이딩하면 기본적으로 생성된 구문
	}

	
	
	
}
