<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="sb" class="test.StudentBean"></jsp:useBean>
    <jsp:setProperty property="*" name="sb"/>
    <jsp:useBean id="smb" class="test.StudentManagerBean" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>입력하신 정보</h1>
<hr>
<%
	smb.insert(sb);
	out.println(sb.getSname()+" | "+sb.getScore()+"점 | "+sb.getGender());
%>
<a href="main2.jsp"><input type="button" value="메인으로 돌아가기"></a>



</body>
</html>