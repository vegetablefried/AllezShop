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
<title>�α��� ������</title>
</head>
<body>  
	<h1>�α��� ����!</h1>
	<h2>
			
		${userNAME}�� �ȳ��ϼ���.
		
		
	</h2>
	<a href="LoginPage">�α��� ������</a>
	<a href="logout">�α׾ƿ�</a>
</body>
</html>