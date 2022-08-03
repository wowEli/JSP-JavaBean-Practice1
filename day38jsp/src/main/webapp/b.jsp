<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="lb" class="test.LoginBean" /> <!-- lb라는 이름의 객체를 생성 -->
<jsp:setProperty property="*" name="lb" /><!-- lb라는 객체의 멤버변수값 자동매핑으로 값 대입 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과 페이지</title>
</head>
<body>

<%
   if(lb.login()){
      out.println("<H1>로그인 성공!</H1>");
   }
   else{
      out.println("<SCRIPT>alert('로그인 실패...');</SCRIPT>");
   }
%>

<!-- 입력한 아이디: <jsp:getProperty property="id" name="lb" /> <br> -->
<!-- 입력한 비밀번호: <jsp:getProperty property="pw" name="lb" /> -->
입력한 아이디: <%=lb.getId() %> <br>
입력한 비밀번호: <%=lb.getPw() %>

</body>
</html>