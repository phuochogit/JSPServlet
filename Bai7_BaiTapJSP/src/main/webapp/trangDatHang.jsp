<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
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
		String hoVaTen = request.getParameter("hoVaTen");
		String email = request.getParameter("email");
		String soLuong = request.getParameter("soLuong");
		
		
		int soLuongSanPham= 0;
		
		try{
			 soLuongSanPham = Integer.parseInt(soLuong);
		}catch(Exception e){
			
		}
		
		
	%>
	
	<h1> Xac nhan don hang </h1>
	<p> Xin cam on ban </p> <%=hoVaTen%> <p> da dat </p> <%=soLuong %> <p> san pham.</p>
	<br/>
	<p> Ban se nhan duoc thong bao qua email: <%=email %>
		So tien ban can thanh toan la <b><%=soLuongSanPham*5 %> $ </b>.
	
	</p>
	
	  

</body>
</html>