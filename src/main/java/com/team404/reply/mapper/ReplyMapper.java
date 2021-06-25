package com.team404.reply.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.team404.command.FreeReplyVO;

public interface ReplyMapper {
//db-context에 mybatis-spring:scan에서 이 인터페이스에 경로를 읽어올 수있도록 선언되있어야함.
	public int regist(FreeReplyVO vo);//등록
	public ArrayList<FreeReplyVO> getList(int bno); //조회
}
