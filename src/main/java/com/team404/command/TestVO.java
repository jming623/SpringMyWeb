package com.team404.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //toString,getter,setter 자동생성
@AllArgsConstructor //모든멤버변수를 파라미터로 받아 초기화하는 생성자
@NoArgsConstructor //기본생성자
public class TestVO {

	private String name;
	private String age;
	private String gender;
	
}
