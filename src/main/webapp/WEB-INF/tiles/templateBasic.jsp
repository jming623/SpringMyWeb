<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
	<link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
    <link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
    <link href="${pageContext.request.contextPath }/resources/css/sns.css" rel="stylesheet">
    
</head>
<body>
	<!-- //header -->
	<tiles:insertAttribute name="header"/>
	<tiles:insertAttribute name="left"/>
	<!-- //section -->
	<tiles:insertAttribute name="body"/>
	<!-- //footer -->
	<tiles:insertAttribute name="footer"/>
</body>
</html>