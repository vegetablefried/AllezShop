<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>�м��� �Ϲ��� ALLEZ</title>
    <link rel="stylesheet" href="././resources/css/login.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
    <!-- autocomplete from jQuery Ui -->
    <script src='{% static "js/jquery-1.11.3.min.js" %}'></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
 		src="https://code.jquery.com/jquery-3.4.1.js"
 		integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
 		crossorigin="anonymous"></script>
</head>
<body>
<c:if test="${result == null}">
	<form action="/LoginPage" method="post">
		<div class="login_container">
        <div class="inner">
            <div class="guidetext">
                <h1>�ȳ��ϼ���:)<br>ALLEZ�Դϴ�.</h1>
                <p>������/�������� ���ο� ������ ��� �������Դϴ�.</p>
            </div>
            <div class="login_contents">
                <div class="input_wrap"><input type="text" name="id" placeholder="���̵� �Է�"></div>
                <div class="input_wrap"><input type="password" name="pw" placeholder="��й�ȣ �Է�"></div>
                <div class="login_btn_area"><input type="submit" class="login_btn" value="�α���"></div>
                <div class="find_area">
                    <a href="#">���̵�ã��</a>
                    <a href="#">��й�ȣ ã��</a>
                    <a href="sign">ȸ������</a>
                </div>
            </div>

            <div class="social_area">
                <h2 class="social_line">
                    <span>���� ������ �α���/ȸ������</span>
                </h2>

                <div class="social_btn_area">
                    <a href="#" role="button" class="btn_kakao">
                        <img src="././resources/img/icon-kakao-login-26-pt.svg" alt="īī���α��ι�ư">
                        īī���� 10�ʸ��� �����ϱ�
                    </a>
                    <a href="#" role="button" class="btn_naver"></a>
                    <a href="#" role="button" class="btn_facebook"></a>
                    <a href="#" role="button" class="btn_google"></a>
                    <a href="#" role="button" class="btn_apple"></a>
                </div>

            </div>


        </div>
       
        
    </div>
	</form>
</c:if>
  
<c:if test="${msg == false}">
	<script>
		alert('ERROR\n���̵� �Ǵ� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.');
	</script>
</c:if>

</body>
</html>