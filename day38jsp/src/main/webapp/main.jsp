<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.MemberBean"%>
    <!-- 아래 for문에서 클래스를 사용하기 위해 임포트 -->
<jsp:useBean id="mb" class="test.MemberBean" scope="session"></jsp:useBean> <!-- mb라는 이름으로 MemberBean클래스 타입의 객체를 만듦 -->
<jsp:useBean id="mmb" class="test.MemberManagerBean" scope="session"></jsp:useBean> <!-- mmb라는 이름으로 MemberBean클래스 타입의 객체를 만듦 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>

<a href="form.html"><input type="button" value="등록하기"></button></a>
<hr>
<%
	for(MemberBean mb2:mmb.selectAll(mb)){
%>
		<h2><%=mb2.getUname()%> | <%=mb2.getScore()%>점 | <%=mb2.getGender()%></h2>
<%
	}
%>


</body>
</html>