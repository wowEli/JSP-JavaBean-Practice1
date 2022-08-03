<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="mb" class="test.MemberBean"></jsp:useBean> <!-- mb라는 이름으로 MemberBean클래스 타입의 객체를 만듦 -->
<jsp:setProperty property="*" name="mb"/> <!-- mb객체안에 멤버변수들한테 값을 대입 -->

<jsp:useBean id="mmb" class="test.MemberManagerBean" scope="session"></jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

<%
	mmb.insert(mb);
%>
<h1>입력하신 정보</h1>
<h2><%=mb.getUname()%> | <%=mb.getScore()%>점 | <%=mb.getGender()%></h2>


	<a href="main.jsp"><input type="button" value="메인으로 돌아가기"></a>


</body>
</html>