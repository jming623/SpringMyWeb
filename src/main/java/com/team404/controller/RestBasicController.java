package com.team404.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.team404.command.TestVO;

@RestController // 비동기 전용 컨트롤러 (@RequestBody + @ResponseBody)
public class RestBasicController {
	
	/*
	 * 1. RestController는 기본적으로 return에 담기는 값이 뷰 리졸버로 가는게 아니고, 요청된 주소로 반환됩니다.
	 * 2. Rest API에서 produces키워드는 보내는 데이터에 대한 내용.
	 * 				 consumers는 전달받는 데이터에 대한 내용(받아오는 일이 그렇게 많지는 않음).
		
	
	*/
	
//	@RequestMapping(value="/getText", method=RequestMethod.GET) //get방식으로만 받겠다라는 의미, 아래와 같은기능을 함 
	@GetMapping(value="/getText", produces="text/plain")
	//비동기 요청을 받아 데이터를 보내줄때 return에 들어가는 값이 JSON이 아니라면(사실 JSON도 선언해주어야 하지만 암묵적으로 생략 가능) produces값으로 어떤형식인지 기술해 주어야한다.
	//produces속성을 사용하려면 "/getText"도 그냥사용할 수 없으니 value값이라고 명시해주어야 한다.

	public String getTest() {
		
		System.out.println("실행됨");
		
		return "hello world";
	}
	
	//자바에서는 json형식을 받고, json형식으로 보낼때 jackson라이브러리 반드시 필요합니다
	
	//- jackson-databind라이브러리 -
	//자바에서 JSON형식을 만들어주기 힘들기 때문에 JSON으로 값을 넘기려면 일단 String으로 작성해서 객체에 저장하고 객체를 JSON형식으로 자동으로 변환해주는 라이브러리를 사용해야 합니다.
	//mavenrepository -> jackson검색 -> Jackson Databind(2.10.0) -> pom.xml에 추가
	@GetMapping(value="/getObject", produces="application/json") //생략하고 요청값(value값)만 넣어주어도 가능
	public TestVO getObject() {
			
		return new TestVO("홍길동","20","남");
	}
	
	//클라이언트(consumer)에게서 값을 받는 방법
	
	//1. URL경로에 키=값 형태로 파라미터를 줄 수 있다. 
	//예제: 단일값을 받고, 객체를 반환형태
	//get방식은 http://localhost:8181/myweb/getCollection?num=1이렇게 값을 넘겨줄 수 있는 단일값이라면, @RequestParam으로 받을 수 있다.
	//?뒤에 여러값을 넣어주고 @RequestParam을 여러번써서 받아줄 수 도 있다.
	@GetMapping(value = "/getCollection")
	public ArrayList<TestVO> getCollection(@RequestParam("num") String num){
			
		System.out.println("받은값:"+num);
		
		ArrayList<TestVO> list = new ArrayList<>();
		
		for(int i = 1; i <= 10; i++ ) {
			list.add(new TestVO("스폰지밥"+i, i+"세" ,"남성" ));
		}
		return list;
	}
		
	
	//2. @PathVariable -URL경로에 파라미터를 줄 수 있고 URL경로의 값을 추출할 때 사용
	//예제 : 여러값을 받고, 맵형식으로 반환
	@GetMapping("/getPath/{sort}/{rank}/{page}") //주소형태가 getPath/xxx/xxx/xxx 인 요청을 받겠다.
	public HashMap<String, TestVO> getPath(@PathVariable("sort") String sort,
										   @PathVariable("rank") String rank,
										   @PathVariable("page") int page){
		System.out.println("sort값:"+sort);
		System.out.println("rank값:"+rank);
		System.out.println("page값:"+page);
		
		HashMap<String, TestVO> map = new HashMap<>();
		
		TestVO vo = new TestVO("뚱이","3세","남성");
		
		map.put("info",vo);
		
		return map;
	}
	
	//3. rest api에서 post방식은 @PostMapping으로 사용되고 누군가에게 사용하라고 주는것이아니라 스스로 사용하기위해 넘겨주게된다.
	// post방식은 주소에 값을 주는것이아니라 몸체Payload에 JSON형태로 선언해줍니다.
	// @RequestBody의 기능중 1 - 요청값의 키 : 값을 뽑아서 vo에 자동으로 맵핑해준다.
	// consumer를 작성하게 되면, 해당 데이터 타입이 아니라면 요청을 거절 합니다. (consumes로 요청값이 json이라고 명시해주지 않으면 json으로 값을 받을 수 없다)
	@PostMapping(value="/getJson", consumes="application/json")
	public ArrayList<TestVO> getJson(@RequestBody TestVO vo){
		
		System.out.println(vo.toString());
		
		ArrayList<TestVO> list = new ArrayList<>();
		TestVO t = new TestVO("징징이","5세","남성");
		list.add(t);
		
		return list;
	}
}
