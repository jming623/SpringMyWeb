package com.team404.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.team404.command.MultiUploadVO;
import com.team404.command.UploadVO;

@Controller
@RequestMapping("/snsBoard")
public class SnsBoardController {

	//예제화면처리
	@RequestMapping("/upload")
	public void snsBoard() {
		
	}
	
	//단일 파일 업로드 형식
	@RequestMapping("/upload_ok")
	public String upload_ok(@RequestParam("file") MultipartFile file) {
		
		System.out.println(file);
//		file.메서드는 throw exepction처리가 되있어서 try catch구문안에서 사용해야함.
		
		try {
			String fileRealName = file.getOriginalFilename(); //파일의 실제 이름
			long size = file.getSize(); //파일의 크기
			String contentType = file.getContentType();
			String fileExtention = fileRealName.substring( fileRealName.lastIndexOf(".") , fileRealName.length() ); //확장자 구하기
			
			System.out.println("파일명:"+ fileRealName);
			System.out.println("파일사이즈:"+size);
			System.out.println("파일컨텐츠타입:"+contentType);
			System.out.println("파일확장자:" + fileExtention);
			
			//업로드될 파일 경로를 지정해줄 메서드는 상수형태로 지정해두고 불러오는식으로 한번에 관리를하는편이 편하다고함(컨트롤러 패키지안에 APP_CONSTANT에 지정해둠).
			
			File saveFile = new File(APP_CONSTANT.UPLOAD_PATH + "\\" + fileRealName); //업로드경로
			
			file.transferTo(saveFile); //실제 파일을 로컬환경으로 저장
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return "snsBoard/upload_ok";//결과화면
	}
	
	//다중파일 업로드 1
	@RequestMapping("/upload_ok2")
	public String upload_ok2(MultipartHttpServletRequest files) { //다중파일은 MultipartHttpServletRequest를 이용해 객체형태로 받아올 수 있습니다.
			
		System.out.println(files); //files에는 리스트형태로 들어온 파일들이 들어있습니다.
		
		List<MultipartFile> file = files.getFiles("file");
		
		try {
			
			for(int i = 0; i < file.size(); i++) {
				
				System.out.println(file.get(i));
				
				String fileRealName = file.get(i).getOriginalFilename(); //파일의 실제 이름
				long size = file.get(i).getSize(); //파일의 크기
				String contentType = file.get(i).getContentType();
				String fileExtention = fileRealName.substring( fileRealName.lastIndexOf(".") , fileRealName.length() ); //확장자 구하기
				
				System.out.println("파일명:"+ fileRealName);
				System.out.println("파일사이즈:"+size);
				System.out.println("파일컨텐츠타입:"+contentType);
				System.out.println("파일확장자:" + fileExtention);
				
				//업로드될 파일 경로를 지정해줄 메서드는 상수형태로 지정해두고 불러오는식으로 한번에 관리를하는편이 편하다고함(컨트롤러 패키지안에 APP_CONSTANT에 지정해둠).
				
				File saveFile = new File(APP_CONSTANT.UPLOAD_PATH + "\\" + fileRealName); //업로드경로
				
				file.get(i).transferTo(saveFile); //실제 파일을 로컬환경으로 저장
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
			
		return "snsBoard/upload_ok";
		}
	
	//다중파일 업로드 2 (단일파일로 여러번 받는 방법)
	@RequestMapping("/upload_ok3")
	public String upload_ok3(@RequestParam("file") List<MultipartFile> file) {
		
		try {
						
			for(int i = 0; i < file.size(); i++) {
				String fileRealName = file.get(i).getOriginalFilename(); //파일의 실제 이름
				
				File saveFile = new File(APP_CONSTANT.UPLOAD_PATH+"\\"+fileRealName);
				
				file.get(i).transferTo(saveFile);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return "snsBoard/upload_ok";
	}
	
	//가변적으로 변하는 업로드 형식 
	@RequestMapping("/upload_ok4")
	public String upload_ok4(MultiUploadVO vo) {
		
		ArrayList<UploadVO> list = vo.getList();
		
		try {
			for(int i =0; i<list.size(); i++) {
				
				String fileRealName = list.get(i).getFile().getOriginalFilename(); //파일의 실제 이름
				long size = list.get(i).getFile().getSize(); //파일의 크기
				String contentType = list.get(i).getFile().getContentType();
				String fileExtention = fileRealName.substring( fileRealName.lastIndexOf(".") , fileRealName.length() ); //확장자 구하기
				String name= list.get(i).getName(); //폼에서 작성한 이름
				
				System.out.println("폼에서 작성한 이름:"+name);
				System.out.println("파일명:"+ fileRealName);
				System.out.println("파일사이즈:"+size);
				System.out.println("파일컨텐츠타입:"+contentType);
				System.out.println("파일확장자:" + fileExtention);
				
				//업로드될 파일 경로를 지정해줄 메서드는 상수형태로 지정해두고 불러오는식으로 한번에 관리를하는편이 편하다고함(컨트롤러 패키지안에 APP_CONSTANT에 지정해둠).
				
				File saveFile = new File(APP_CONSTANT.UPLOAD_PATH + "\\" + fileRealName); //업로드경로
				
				list.get(i).getFile().transferTo(saveFile); //실제 파일을 로컬환경으로 저장
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return "snsBoard/upload_ok";
	}
	
	
	
	
	}
	
