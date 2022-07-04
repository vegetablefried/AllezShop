<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/c.css">
    <title>회원가입</title>
    <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>
    <form id = join_form class="wrap" method="post"> 
        <p>아이디</p>
        <div class="ID"><input type="text" class="ID" id="id" name="id"></div>
        <p>비밀번호</p>
        <div class="PW"><input type="password" class="PW" id="pw" name="pw"></div>
        <p>이름</p>
        <div class="NAME"><input type="text" class="NAME" id="name" name="name"></div>
        <p>닉네임</p>
        <div class="NICKNAME"><input type="text" class="NICKNAME" id="nickname" name="nickname"></div>
        <p>성별</p>
        <input type="checkbox" class="MALE" id="sex" name="sex" value="남자">남자
        <input type="checkbox" class="FEMALE" id="sex" name="sex" value="여자">여자
        <p>주소</p>
        <div class="ADDRESS"><input type="text" class="ADDRESS" id="address" name="address"></div>
		<input type="button" class="join_button1" value="확인">
    </form>
    <script>
	
	$(document).ready(function(){
		//회원가입 버튼(회원가입 기능 작동)
		$(".join_button1").click(function(){
			$("#join_form").attr("action", "sign");
			$("#join_form").submit();
		});
	});
</script>  
	<a href="./"><button>HOME</button></a>
</body>
</html>