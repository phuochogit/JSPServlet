<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String title = request.getParameter("title");
		String message = request.getParameter("message");
	%>
	
	<p>Faculty of data science already recived your email <b><%=title%></b> from you, soon reply via your student email.</p>
	
</body>
</html>