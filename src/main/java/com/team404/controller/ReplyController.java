package com.team404.controller;

import java.util.ArrayList;

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
	public ArrayList<FreeReplyVO> getList(@PathVariable("bno") int bno,
										  @PathVariable("pageNum") int pageNum){
		
		System.out.println("bno:"+bno);
		System.out.println("pageNum:"+pageNum);
		
		ArrayList<FreeReplyVO> list= replyService.getList(bno);
		
		System.out.println(list.toString());
		
		return list;
	}
}
