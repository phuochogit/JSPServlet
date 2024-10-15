<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ page import="java.lang.Math%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<!--Dropdowns, popovers, or tooltips, -->
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>
</head>
<body>

	<form action="trangDatHang.jsp" method = "get">
	
		<div class="mb-3">
			<label for="hoVaTen" class="form-label">Ho Va Ten</label>
			<input type="text" class="form-control"
				id="hoVaTen" name = "hoVaTen">
		</div>
		
		<div class="mb-3">
			<label for="email" class="form-label">Email</label>
			<input type="email" class="form-control"
				id="email" name = "email">
		</div>
		
		<div class="mb-3">
			<label for="soluong" class="form-label">So luong</label>
			<input type="text" class="form-control"
				id="soluong" name = "soLuong">
		</div>
		
		<button type="submit" class="btn btn-primary">Dat hang</button>
	
	</form>

</body>
</html>