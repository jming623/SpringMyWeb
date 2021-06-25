package com.team404.reply.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team404.command.FreeReplyVO;
import com.team404.reply.mapper.ReplyMapper;

@Service("replyService") //servlet-context에 component-scan에서 이 서비스어노테이션을 선언했을때 경로를 읽어올 수있도록 선언되있어야함.
public class ReplyServiceImpl implements ReplyService{
	
	@Autowired
	ReplyMapper replyMapper;
	
	
	@Override
	public int regist(FreeReplyVO vo) {
		
		return replyMapper.regist(vo);
	}


	@Override
	public ArrayList<FreeReplyVO> getList(int bno) {
		
		return replyMapper.getList(bno);
	}

}
