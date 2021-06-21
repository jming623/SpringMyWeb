package com.team404.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //getter,setter
@NoArgsConstructor //기본생성자
@AllArgsConstructor //모든멤버변수를 파라미터로 받아 초기화하는 생성자
public class FreeBoardVO {
	
	private int bno;
	private String title;
	private String writer;
	private String content;
	private Timestamp regdate;
	private Timestamp updatedate;
}
