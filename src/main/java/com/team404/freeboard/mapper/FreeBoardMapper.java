package com.team404.freeboard.mapper;

import java.util.ArrayList;

import com.team404.command.FreeBoardVO;
import com.team404.util.Criteria;

public interface FreeBoardMapper {
	
	//이 패키지는 mapper클래스에 인터페이스를 선언하는 곳입니다.
	
	public int regist(FreeBoardVO vo);//등록
//	public ArrayList<FreeBoardVO> getList(); //일반게시판 조회
//	public int getTotal();//전체 게시글 수 조회
	
	public int getTotal(Criteria cri);//검색+게시판 전체 게시글 수 조회
	public ArrayList<FreeBoardVO> getList(Criteria cri);//검색+게시판 조회
	public FreeBoardVO getDetail(int bno); //상세조회
	public int update(FreeBoardVO vo); //수정
	public int delete(int bno);//삭제
}
