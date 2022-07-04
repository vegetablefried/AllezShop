<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<script>
 		src="https://code.jquery.com/jquery-3.4.1.js"
 		integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
 		crossorigin="anonymous"></script>
</head>  
<body>
    <h1>회원가입 예제5</h1>
 
    <table>
        <thead>
            <tr>
                <th>아이디</th>
                <th>비밀번호</th>
                <th>이름</th>
                <th>닉네임</th>
                <th>주소</th>
                <th>성별</th>
                <th>가입날짜</th>
                <th>관리자</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${memberList}" var="member">
                <tr>
                    <td>${member.id}</td>
                    <td>${member.pw}</td>
                    <td>${member.name}</td>
                    <td>${member.nickname}</td>
                    <td>${member.address}</td>
                    <td>${member.sex}</td>
                    <td>${member.sign_day}</td>
                    <td>${member.is_admin}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
 
	<a href="sign"><button>회원가입</button></a>
	<a href="main"><button>메인화면</button></a>
	<a href="list"><button>내 정보</button></a>
</body>
</html>
