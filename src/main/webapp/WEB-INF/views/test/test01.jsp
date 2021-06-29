<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
</head>
<body>
	
	<button type="button" id="btn1">비동기요청</button>
	
	<script>
		$(document).ready(function(){
			
			$("#btn1").click(function(){
				
				$.ajax({
					type:"post",
					url:"http://localhost:8181/myweb/getData",
					dataType:"application/json",
					contentType:"application/xml",
					data: JSON.stringify({"name":"홍길동", "age":"25", "gender":"남"}),
					success: function(data){
						console.log(data);
					},
					error: function(status,error){
						console.log(status,error);
					}
				})
			})
		
		
		})	
	</script>
	
</body>
</html>