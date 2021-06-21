package com.team404.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data //toString,getter,setter 자동생성
@AllArgsConstructor
@NoArgsConstructor
public class TestVO {

	private String name;
	private String age;
	private String date;
	
}
