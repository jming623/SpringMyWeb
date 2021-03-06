package com.team404.util.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.team404.command.UserVO;

public class BoardAuthHandler extends HandlerInterceptorAdapter {
	
	//게시글 변경, 수정, 삭제가 일어날 때 해당 사용자만 처리하도록 실행시키는 핸들러 
	//화면에서 변경, 수정, 삭제가 일어날때 writer가 넘어오도록 처리 
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//세션에 저장된 유저정보, 화면에서 넘어오는 writer정보를 받아온다 일치하면 true 아니면 false
		
		//화면에서 넘어오는 작성자명
		String writer = request.getParameter("writer");
		
		//로그인된 사용자가 가지고 있는 세션정보
		HttpSession session = request.getSession();
		
		UserVO userVO = (UserVO)session.getAttribute("userVO");
		
		
		if(userVO != null) {			
			if(writer != null) {				
				if(userVO.getUserId().equals(writer)) { //세션에 저장된 id와 작성자가 동일하다면
					return true;
				}
			}		
		}
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out =response.getWriter(); //화면에 문자열 형태로 전달할때 사용하는 out객체
		
		out.println("<script>");
		out.println("alert('권한이 없습니다');");
		out.println("history.go(-1);");
		out.println("</script>");
		
		return false;
	}
	
	
}
