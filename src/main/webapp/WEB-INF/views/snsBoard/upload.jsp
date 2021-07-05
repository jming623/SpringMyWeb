<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div style="margin-top:100px; text-align:center;">
		
		<h3>
			Commons-fileupload 라이브러리 추가. <br/>
			스프링설정파일에 최소설정
		</h3>
		
		<h3>단일파일 업로드</h3>
		<form action="upload_ok" method="post" enctype="multipart/form-data"><!-- enctype="multipart/form-data"이부분이 꼭 들어가야함, method post방식 필수 -->
			파일선택: <input type="file" name="file">
			<input type="submit" class="btn btn-default" value="전송">
		</form>
		
		<hr>
		<br/>
		
		<h3>다중파일 업로드1</h3>
		<form action="upload_ok2" method="post" enctype="multipart/form-data">
			파일선택:<input type="file" name="file" multiple="multiple"> <!-- multiple속성을 사용하면 파일을 여러개 받을 수 있습니다. -->
			<input type="submit" class="btn btn-default" value="전송">
		</form>
		
		<hr>
		<br/>
		
		<h3>다중파일 업로드2</h3>
		<form action="upload_ok3" method="post" enctype="multipart/form-data">
			파일선택:<input type="file" name="file">
			파일선택:<input type="file" name="file">
			파일선택:<input type="file" name="file">
			<input type="submit" class="btn btn-default" value="전송">
		</form>
		
		<hr>
		<br/>
		
		<h3>가변적인 폼 형식의 업로드(이 형식은 VO객체가 필요합니다.)</h3>
		<form action="upload_ok4" method="post" enctype="multipart/form-data">
			
			이름:<input type="text" name="List[0].name"> <br/>
			파일선택:<input type="file" name="List[0].file"> <br/>
			
			<!-- 지금은 예제로 보려고 아래 태그를 그냥 선언해 주었지만 실제로는 위에 하나만 지정해두고 태그추가는 버튼을 하나 주고 JS에서 작업하면 됩니다. -->
			
			이름:<input type="text" name="List[1].name"> <br/>
			파일선택:<input type="file" name="List[1].file"> <br/>
			
			이름:<input type="text" name="List[2].name"> <br/>
			파일선택:<input type="file" name="List[2].file"> <br/>
			
						
			<input type="submit" class="btn btn-default" value="전송">
		</form>
		
		
	</div>
	
</body>
</html>