d<%@ page language="java" contentType="text/html; charset=UTF-8"
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

	<h1>Chon cau hinh may tinh ban can mua</h1>
	
	<hr />

	<form action="datMuaMayTinh.jsp">

		<h2>Processor</h2>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="processor"
				id="corei9" value = "Core I9" > <label class="form-check-label" for="corei9">
				Corei9 </label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="processor"
				id="corei7" value = "Core I7"> <label class="form-check-label"
				for="corei7"> Corei7 </label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="processor"
				id="corei5" value = "Core I5"> <label class="form-check-label"
				for="corei5"> Corei5 </label>
		</div>

		<h2>RAM</h2>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="ram" id="ram8gb" value = "8GB">
			<label class="form-check-label" for="ram8gb"> 8GB </label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="ram" id="ram16gb"
				value = "16GB"> <label class="form-check-label" for="ram16gb">
				16GB </label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="ram" id="ram32gb"
				value = "32GB"> <label class="form-check-label" for="ram32gb">
				32GB </label>
		</div>

		<h2>MONITOR</h2>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="Monitor" id="monitor" name = "monitor" value = "Monitor">
			<label class="form-check-label" for="monitor"> Monitor </label>
		</div>

		<h2>ACCESORIES</h2>
		<select class="form-select" multiple aria-label="Default select example" name = "accessories">
			<option selected>Open this select menu</option>
			<option value="camera" >Camera</option>
			<option value="printer">Printer</option>
			<option value="scanner">Scanner</option>
		</select>
		<input class = "btn btn-primary mt-2" type="submit" value="Buy" id="btnBuy"/>
	</form>


</body>
</html>