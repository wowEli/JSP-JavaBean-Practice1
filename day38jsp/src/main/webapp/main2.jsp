<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.StudentBean"%>
    <jsp:useBean id="sb" class="test.StudentBean"></jsp:useBean>
    <jsp:useBean id="smb" class="test.StudentManagerBean" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>

<form action="form2.html">
	<input type="submit" value="등록하기">
</form>
<hr>
<%
	for(StudentBean vo:smb.selectAll(sb)){
%>
	<li><%=vo.getSname()+" | "+vo.getScore()+"점 | "+vo.getGender()%></li>
<%
	}
%>


</body>
</html>