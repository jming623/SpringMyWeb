package com.team404.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.team404.command.FreeReplyVO;
import com.team404.reply.service.ReplyService;
import com.team404.util.Criteria;

@RestController// 비동기 전용 컨트롤러 (@RequestBody + @ResponseBody)
@RequestMapping("/reply")
public class ReplyController {
	
	@Autowired
	@Qualifier("replyService")
	ReplyService replyService;
	
	@PostMapping(value="/replyRegist",produces="application/json") //요청주소: ContextPath/reply/replyRegist
	public int replyRegist(@RequestBody FreeReplyVO vo) {
		
		System.out.println(vo.toString());
		
		int result = replyService.regist(vo);
		
		return result;
	}
	
	@GetMapping("/getList/{bno}/{pageNum}")
	public HashMap<String, Object> getList(@PathVariable("bno") int bno,
										   @PathVariable("pageNum") int pageNum){
		
		System.out.println("bno:"+bno);
		System.out.println("pageNum:"+pageNum);
		
		//일반댓글
		/*
		 * ArrayList<FreeReplyVO> list= replyService.getList(bno);
		 * 
		 * System.out.println(list.toString());
		 * 
		 * HashMap<String, Object> map = new HashMap<>();
		 * 
		 * map.put("list",list);
		 */
		
		//2nd - 더보기 처리
		//1. 화면에 더보기 버튼생성
		//2. getList(글번호, criteria)를 매게변수로 받습니다.
		//3. 마이바티스 인터페이스에 글번호와 creteria에 @Param("이름")으로 다중값 처리
		//4. sql변경
		//5. 전체 댓글 수를 화면에 전달
		
		Criteria cri = new Criteria(pageNum,20);//20개씩 데이터 조회
		
		ArrayList<FreeReplyVO> list= replyService.getList(bno,cri);
		
		int total = replyService.getTotal(bno);
		
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("list",list);
		map.put("total",total);
		
		return map;
	}
	
	@PostMapping(value="/update", produces="application/json")
	public int update(@RequestBody FreeReplyVO vo) {
		
		System.out.println(vo.toString());
		
		//화면단에서 값을 검증하긴 하지만 값이 들어오지 않은 상태로 db접근시 심각한 문제를 야기할 수 있음으로 다시한번 값을 검증해주도록한다.
		int count = replyService.pwCheck(vo);
		System.out.println(count); //비밀번호로 들어온값이 맞다면 1반환 아니라면 0반환
		
		if(count == 1) { //비밀번호 일치
			return replyService.update(vo);		
		}else { //실패반환
			return 0;
		}
	}
	
	@PostMapping(value="/delete", produces="application/json")
	public int delete(@RequestBody FreeReplyVO vo) {
		System.out.println(vo.toString());
		
		int count = replyService.pwCheck(vo);
		
		if(count == 1) {
			return replyService.delete(vo);
		}else {
			return 0;
		}

	}
}
