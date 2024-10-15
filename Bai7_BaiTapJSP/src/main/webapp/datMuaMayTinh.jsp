<%@page import="java.util.concurrent.locks.Condition"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<%
	double tongTien = 0;
	double processorPrice = 0;
	double ramPrice = 0;
	double monitorPrice = 0;
	double accessoriesPrice = 0;

	//Radio button name.
	String processor = request.getParameter("processor");

	if (processor != null) {
		if (processor.equals("Core I9"))
			processorPrice = processorPrice + 5000000;
		if (processor.equals("Core I7"))
			processorPrice = processorPrice + 4000000;
		if (processor.equals("Core I5"))
			processorPrice = processorPrice + 3000000;
	}
	tongTien = tongTien + processorPrice;

	String ram = request.getParameter("ram");

	if (ram != null) {
		if (ram.equals("8GB"))
			ramPrice = ramPrice + 5000000;
		if (ram.equals("16GB"))
			ramPrice = ramPrice + 10000000;
		if (ram.equals("32GB"))
			ramPrice = ramPrice + 20000000;
	}
	tongTien = tongTien + ramPrice;

	//Checkbox name.
	String monitor = request.getParameter("monitor");
	if (monitor != null)
		monitorPrice = monitorPrice + 1500000;

	//Select.
	String[] accessories = request.getParameterValues("accessories");
	if (accessories != null)
		for (String luachon : accessories) {
			if (luachon.equals("camera"))
		accessoriesPrice = accessoriesPrice + 800000;
			if (luachon.equals("printer"))
		accessoriesPrice = accessoriesPrice + 1500000;
			if (luachon.equals("scanner"))
		accessoriesPrice = accessoriesPrice + 1500000;
		}
	tongTien = tongTien + accessoriesPrice;
	%>
	<h1>HOA DON</h1>

	<table class="table">
		<thead>
			<tr>
				<th scope="col">Ten san pham</th>
				<th scope="col">Gia tien</th>
			</tr>
		</thead>
		<tbody>
			<%
			if (processor != null)
			%>
			<tr>
				<td><%=processor%></td>
				<td><%=processorPrice%></td>
			</tr>

			<%
			if (ram != null)
			%>
			<tr>
				<td><%=ram%></td>
				<td><%=ramPrice%></td>
			</tr>

			<%
			if (monitor != null)
			%>
			<tr>
				<td><%=monitor%></td>
				<td><%=monitorPrice%></td>
			</tr>


			<%
			if (accessories != null)
				for (String luachon : accessories) {
					if (luachon.equals("camera"))
				accessoriesPrice = accessoriesPrice + 800000;
					if (luachon.equals("printer"))
				accessoriesPrice = accessoriesPrice + 1500000;
					if (luachon.equals("scanner"))
				accessoriesPrice = accessoriesPrice + 1500000;
			%>
			<tr>
				<td><%=luachon%></td>
				<td><%=accessoriesPrice%></td>
			</tr>
			<%
			}
			%>

			<tr>
				<td>Tong tien</td>
				<td><b><%=Math.round(tongTien)%></b></td>
			</tr>


		</tbody>
	</table>

</body>
</html>