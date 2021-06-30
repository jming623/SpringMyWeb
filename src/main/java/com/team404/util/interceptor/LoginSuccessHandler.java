package com.team404.util.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.team404.command.UserVO;

public class LoginSuccessHandler extends HandlerInterceptorAdapter{
	
	//로그인 이후에 실행되는 PostHandler오버라이딩
	//로그인 요청으로 들어올때 실행되도록 핸들러 요청
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		//preHandle이랑은 다르게  리턴값은 void형이고, 컨트롤러에서 modelAndView를 받아 올 수 있다.
		
		//매개변수 modelAndView에는 컨트롤러에서 반환하는 mv객체가 들어있습니다.		
		//컨트롤러에서 들어온 모델에 값을 꺼내는 방법 getModelMap() map형식으로 나옵니다.;
		ModelMap mv = modelAndView.getModelMap();
		
		UserVO userVO = (UserVO)mv.get("login");//로그인에 실패했다면 userVO는 null, 대신 msg에 실패 메세지가 담겨있다.
		
		if(userVO != null) {//로그인성공
			//세션에 저장
			HttpSession session = request.getSession();
			session.setAttribute("userVO", userVO);
			
			response.sendRedirect(request.getContextPath()); //홈화면으로
		}
			//리다이렉트를 만나더라도 viewname은 지정이 필요합니다. 
			modelAndView.setViewName("user/userLogin");
	
	}

	
}
