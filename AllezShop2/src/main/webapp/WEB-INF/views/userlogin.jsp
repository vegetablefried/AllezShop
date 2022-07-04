<%-- 

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.dao.MemberDAO" %>
<%@ page import="com.example.dao.userDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="com.example.dto.MemberVO" scope="page" />
<jsp:setProperty name="user" property="id" />
<jsp:setProperty name="user" property="pw" />
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>
	<%@ include file="../views/login.jsp" %>
	<%
        // 인코딩 처리
        request.setCharacterEncoding("euc-kr"); 
        
        // 로그인 화면에 입력된 아이디와 비밀번호를 가져온다
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        
        // DB에서 아이디, 비밀번호 확인
        userDAO uDAO = new userDAO();
		int result = uDAO.login(user.getid(), user.getpw());
        
        
        if(result == 1)    // 로그인 성공
        { 
            // 세션에 현재 아이디 세팅
            session.setAttribute("sessionID", id);
            PrintWriter script = response.getWriter();
            script.println("<script>");
			script.println("location.href='main.jsp'");
			script.println("</script>");
        }
        else if(result == 0) // 비밀번호가 틀릴경우
        {
        	PrintWriter script = response.getWriter();
        	script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.')");
			script.println("history.back()");
			script.println("</script>");
        }
        else if(result == -1)    // 아이디가 틀릴경우
        {
        	PrintWriter script = response.getWriter();
        	script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
        }
         
        // sendRedirect(String URL) : 해당 URL로 이동
        // URL뒤에 get방식 처럼 데이터를 전달가능
        // response.sendRedirect(msg);
    %>
	
</body>
</html>

--%>