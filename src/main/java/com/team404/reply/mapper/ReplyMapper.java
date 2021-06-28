package com.team404.reply.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.team404.command.FreeReplyVO;
import com.team404.util.Criteria;

public interface ReplyMapper {
//db-context에 mybatis-spring:scan에서 이 인터페이스에 경로를 읽어올 수있도록 선언되있어야함.
	public int regist(FreeReplyVO vo);//등록
//	public ArrayList<FreeReplyVO> getList(int bno); //조회
	public ArrayList<FreeReplyVO> getList(@Param("bno")int bno, @Param("cri")Criteria cri); //댓글 + 조회
	//(두개값을 넘겨주면 받을때 어떤키의 어떤값인지 모호해져 에러가 발생한다. 이때 @Param키워드로 값을 사용할 이름을 지정해주면 됩니다. )
	public int getTotal(int bno);//총 댓글수 
	public int pwCheck(FreeReplyVO vo); //비밀번호 확인
	public int update(FreeReplyVO vo); //수정
	public int delete(FreeReplyVO vo); //삭제
}
