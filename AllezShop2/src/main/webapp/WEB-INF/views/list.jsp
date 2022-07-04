<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<%
	String userNAME = (String) session.getAttribute("userNAME"); 
%>
<script>
 		src="https://code.jquery.com/jquery-3.4.1.js"
 		integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
 		crossorigin="anonymous"></script>
<title>로그인 페이지</title>
</head>
<body>  
	<h1>로그인 성공!</h1>
	<h2>
			
		${userNAME}님 안녕하세요.
		
		
	</h2>
	<a href="LoginPage">로그인 페이지</a>
	<a href="logout">로그아웃</a>
</body>
</html>