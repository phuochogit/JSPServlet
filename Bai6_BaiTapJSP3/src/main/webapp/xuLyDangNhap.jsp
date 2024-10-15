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
	String username = request.getParameter("username");

	String password = request.getParameter("password");
	
	
	%>

	<%
	if (username.equalsIgnoreCase("tung") && password.equals("123a")) {
	%>
	<h1>Ban da dang nhap thanh cong</h1>
	<%
	} else {
	%>
	<h1>Khong tim thay tai khoan</h1> getElement
	<%
	}
	%>



</body>
</html>