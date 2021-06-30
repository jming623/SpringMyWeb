package com.team404.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team404.command.UserVO;
import com.team404.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	@Qualifier("userService")
	UserService userService;
	
	//로그인화면
	@RequestMapping("/userLogin")
	public String userLogin() {
		return "user/userLogin";
	}
	
	//가입화면
	@RequestMapping("/userJoin")
	public String userJoin() {
		return "user/userJoin";
	}
	
	//마이페이지화면
	@RequestMapping("/userMypage")
	public String userMypage(HttpSession session, Model model) {
		
//		if(session.getAttribute("userVO") == null) { //로그인이 안된상태
//			
//			return "redirect:/user/userLogin"; 
//			//이렇게 일일이 작업할 수있지만, 만약 작업해야할 페이지가 50~100개가 된다면 일일이 처리 할 수만은 없다. 이떄 intercepter사용
//		}
		
		UserVO userVO = (UserVO)session.getAttribute("userVO");
		String userId = userVO.getUserId();
		
		UserVO userInfo = userService.getInfo(userId);
				
		model.addAttribute("userInfo", userInfo);
				
		return "user/userMypage";
	}
	
	//비동기요청을 받을때 restController는 @ResponseBody를 포함하고 있어서 return값이 비동기 요청을 보낸측으로 돌아가지만,
	//일반 컨트롤러로 비동기 요청을 보낸측으로 값을 보내주려면 @ResponseBody를 사용해 주어야 한다.	
	
	//중복처리 메서드
	@ResponseBody
	@PostMapping(value="/idCheck", produces="application/json")
	public int idCheck(@RequestBody UserVO vo) {
		
		System.out.println(vo.toString());
		
		int result = userService.idCheck(vo);
		
		return result;//일반컨트롤러에서 @ResponseBody를 선언해주면 이결과는 뷰리졸버로 가지않고 요청받은 측으로 넘어가게된다. 
	}
	
	//회원가입
	@RequestMapping(value="/joinForm", method= RequestMethod.POST)
	public String joinForm(UserVO vo, RedirectAttributes RA) {
		
		System.out.println(vo.toString());
		int result = userService.join(vo);
		
		if(result == 1) {//가입성공			
			RA.addFlashAttribute("msg","가입을 축하합니다.");
		} else { //가입실패
			RA.addFlashAttribute("msg","가입에 실패했습니다. 다시 시도하세요");
		}
				
		return "redirect:/user/userLogin";		
	}
	
//	//로그인
//	@RequestMapping(value="loginForm", method=RequestMethod.POST)
//	public String loginForm(UserVO vo, HttpSession session, Model model) { //spring에서 세션은 매게변수에 HttpSession을 넣어주면 사용할 수있다.
//		
//		//로그인 처리
//		UserVO userVO = userService.login(vo);
//		
//		if(userVO != null) {//로그인 성공
//			System.out.println(userVO.toString());
//			session.setAttribute("userVO", userVO); //세션에 회원정보 저장
//			
//			return "redirect:/";
//			
//		}else {//로그인 실패
//			System.out.println("로그인실패");
//			model.addAttribute("msg", "아이디 비빌번호를 확인하세요");
//			
//			return "user/userLogin";
//		}
//						
//	}
	
	//postHandler를 사용해서 로그인 요청
	@RequestMapping(value="loginForm", method=RequestMethod.POST)
	public ModelAndView loginForm(UserVO vo) {
		
		//로그인 처리
		UserVO userVO = userService.login(vo);
		
		ModelAndView mv = new ModelAndView();
		
		if(userVO != null) { //로그인 성공
			mv.addObject("login", userVO);						
		}else { //로그인 실패
			mv.addObject("msg", "아이디 비밀번호를 확인하세요");
		}
		
		
		return mv; //디스패쳐 서블릿으로 반환 
	}
	
	
	//로그아웃
	@RequestMapping("/logout")
	public String userLogout(HttpSession session) {
		
		session.invalidate(); //세션전체삭제
		
		return "redirect:/"; //홈
	}
	
}
