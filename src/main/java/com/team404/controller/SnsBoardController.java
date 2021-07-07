package com.team404.controller;

import java.io.File;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.team404.command.MultiUploadVO;
import com.team404.command.SnsBoardVO;
import com.team404.command.UploadVO;
import com.team404.command.UserVO;
import com.team404.snsboard.service.SnsBoardService;

@Controller
@RequestMapping("/snsBoard")
public class SnsBoardController {
	
	@Autowired
	@Qualifier("snsBoardService")
	private SnsBoardService snsBoardService;
	
//	//예제화면처리
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
	
	
	///////////////////////////////////////
	//비동기업로드 화면처리
	@RequestMapping("/snsList")
	public void snsList() {
		
	}
	
	//
	@ResponseBody
	@RequestMapping(value="/snsUpload", method=RequestMethod.POST)
	public String snsUpload(@RequestParam("content") String content,
						 @RequestParam("file") MultipartFile file,
						 HttpSession session) {
		
		UserVO userVO = (UserVO)session.getAttribute("userVO");
		
		try {
			String writer = /*userVO.getUserId()*/"test"; //호출시 값이 없다면 바로 nullpointerexception catch구문으로 넘어감
			
			//업로드별 날짜폴더 생성
			Date date = new Date(); //import util로 할것!
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			
			String fileLoca = sdf.format(date);//폴더위치(사용자 폴더명 지정)
			
			File folder = new File(APP_CONSTANT.UPLOAD_PATH + "\\" + fileLoca); //폴더를 만들위치+만들폴더명
			
			if(!folder.exists()) {//존재 하지않으면 생성됨 
				
				folder.mkdir(); //폴더생성
			}
			
			//파일명
			String fileRealName = file.getOriginalFilename();
			long size = file.getSize();
			
			//저장된 전체경로
			String uploadPath = folder.getPath();//현재폴더의 경로 
			
			//중복된파일이올라가지 않는걸(파일유실을) 방지하기위해 수동으로 파일이름을 바꿔줘야한다.
			
			String fileExtention = fileRealName.substring( fileRealName.lastIndexOf(".") , fileRealName.length() ); //확장자 구하기
			
			//
			UUID uuid = UUID.randomUUID(); //16진수 랜덤값
			
			String uuids = uuid.toString().replaceAll("-", ""); //16진수랜덤값 사이 -를 뺀 16자리 문자열을 파일명으로 사용
			
			String fileName = uuids + fileExtention;
			
			System.out.println("폴더위치:" + fileLoca);
			System.out.println("원본파일명:"+ fileRealName);
			System.out.println("사이즈:" + size);
			System.out.println("업로드경로:" + uploadPath);
			System.out.println("업로드파일명:" + fileName);
			
			File saveFile = new File(uploadPath + "\\" + fileName);
			file.transferTo(saveFile);//파일생성
			
			SnsBoardVO vo = new SnsBoardVO(0,writer,content,uploadPath,fileLoca,fileName,fileRealName,null);
			
			int result = snsBoardService.insert(vo);
			
			if(result == 1) {
				return "success";
			}else {
				return "fail";
			}
			
		} catch (NullPointerException e) {
			return "idFail";
		} catch (Exception e) {
			return "fail";
		}
	
	}
	
	//조회요청
	@ResponseBody
	@RequestMapping(value="/getList", method=RequestMethod.GET)
	public ArrayList<SnsBoardVO> getList(){
		
		ArrayList<SnsBoardVO> list = snsBoardService.getList();
		System.out.println(list.toString());
		
		return list;
	}
	
	//이미지데이터 반환요청
//	@ResponseBody
//	@RequestMapping(value="/view/{fileLoca}/{fileName:.+}")//pathVariable에서는 특수문자가 잘려서 들어오게된다. 이떄 특수문자를 허용하게해주는방법 :.+
//	public byte[] view(@PathVariable("fileLoca") String fileLoca,
//					   @PathVariable("fileName") String fileName) { 
//		
//		//System.out.println(fileLoca);
//		//System.out.println(fileName);
//		
//		byte[] result = null;
//		
//		try {
//		//파일데이터를 바이트데이터로 변환해서 반환
//		
//		File file = new File(APP_CONSTANT.UPLOAD_PATH + "\\" + fileLoca + "\\" + fileName);
//				
//		result = FileCopyUtils.copyToByteArray(file);
//						
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//				
//		return result;
//	}
	
	//원래 사용하던 restController에 return값에는 data만넘겨주는것이아니라 데이터에대한 문서정의 까지 같이넘겨주는것이 근본적인 방법이다.
	
	//이미지데이터 반환 2nd
	@ResponseBody
	@RequestMapping(value="/view/{fileLoca}/{fileName:.+}")//pathVariable에서는 특수문자가 잘려서 들어오게된다. 이떄 특수문자를 허용하게해주는방법 :.+
	public ResponseEntity<byte[]> view(@PathVariable("fileLoca") String fileLoca,
									   @PathVariable("fileName") String fileName) { 
		
		//System.out.println(fileLoca);
		//System.out.println(fileName);
		
		ResponseEntity<byte[]> result = null;
		
		try {
		//파일데이터를 바이트데이터로 변환해서 반환
		File file = new File(APP_CONSTANT.UPLOAD_PATH + "\\" + fileLoca + "\\" + fileName);
		
		//반환할 헤더객체
		HttpHeaders header = new HttpHeaders();
		header.add("Content-type", Files.probeContentType(file.toPath())); //매개변수에 들어온 경로파일에 지정된 컨텐츠타입을 지정 (text/html등 직접지정해줄수도있다.)
		//file.toPath())는 File타입의 file변수가 가진 경로를 호출해주는 메서드입니다.
				
		result = new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK); //(바디에 보낼데이터, 헤더의 내용, 상태정보)
				//원래는 바디에 보낼데이터만 return에 담아서 보내주었지만 , 이렇게 사용하면 헤더정보, 상태정보를 함께 전달할 수 있다.
				//HttpStatus에 접근하``````````````````면 상수로 여려 상태들을 불러 올수있다. ex)HttpStatus.NOT_FOUND = 상태 404에러  , HttpStatus.OK = 상태 200성공
						
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/download/{fileLoca}/{fileName:.+}")
	public ResponseEntity<byte[]> download(@PathVariable("fileLoca") String fileLoca,
			   							   @PathVariable("fileName") String fileName){
		
		ResponseEntity<byte[]> result = null;
		
		try {
			
			File file = new File(APP_CONSTANT.UPLOAD_PATH+"\\"+fileLoca+"\\"+fileName);
			
			//반환할 헤더객체(다운로드형식으로 속성을 추가)
			HttpHeaders header = new HttpHeaders();
			header.add("Content-Disposition", "attachment; filename="+ fileName ); //어떤이름으로 다운될지, 이형식은 브라우저별로 조금씩다르다고함 (if else if로 브라우저별 형식으로 사용)
			
			result = new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
				
		return result;
	}
	
	
	
	}
	
