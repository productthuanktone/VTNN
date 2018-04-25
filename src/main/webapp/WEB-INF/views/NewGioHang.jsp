<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png"
	href="../resources/assets/img/favicon.ico">
<link rel="apple-touch-icon" sizes="76x76"
	href="../resources/assets/img/apple-icon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Paper Kit 2 by Creative Tim</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<!-- Bootstrap core CSS     -->
<link href="../resources/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet"
	href='<c:url value="../resources/Style/style.css"/>' />
<link href="../resources/assets/css/paper-kit.css?v=2.1.0"
	rel="stylesheet" />

<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="../resources/assets/css/demo.css" rel="stylesheet" />

<!--     Fonts and icons     -->
<link
	href='http://fonts.googleapis.com/css?family=Montserrat:400,300,700'
	rel='stylesheet' type='text/css'>
<link href="../resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="../resources/assets/css/nucleo-icons.css" rel="stylesheet" />

</head>

<body>
	<nav class="navbar navbar-expand-md fixed-top navbar-transparent"
		color-on-scroll="500">
		<div class="container">
			<div class="navbar-translate">
				<button class="navbar-toggler navbar-toggler-right navbar-burger"
					type="button" data-toggle="collapse" data-target="#navbarToggler"
					aria-controls="navbarTogglerDemo02" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-bar"></span> <span
						class="navbar-toggler-bar"></span> <span
						class="navbar-toggler-bar"></span>
				</button>
				<a class="navbar-brand" href="https://www.creative-tim.com">Paper
					Kit 2</a>
			</div>
			<div class="collapse navbar-collapse" id="navbarToggler">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" rel="tooltip"
						title="Follow us on Twitter" data-placement="bottom"
						href="https://twitter.com/CreativeTim" target="_blank"> <i
							class="fa fa-twitter"></i>
							<p class="d-lg-none">Twitter</p>
					</a></li>
					<li class="nav-item"><a
						href="documentation/tutorial-components.html" target="_blank"
						class="nav-link"> Documentation</a></li>
					<li class="nav-item"><a
						href="documentation/tutorial-components.html" target="_blank"
						class="nav-link"> Documentation</a></li>
					<li class="nav-item"><a style="color: blue !important"
						href="documentation/tutorial-components.html" class="nav-link">
							Đăng Ký</a></li>
					<li class="nav-item"><a style="color: red !important"
						href="../quanly" class="nav-link">Đăng Nhập</a></li>
					<li class="nav-item" id="giohang"><a class="nav-link" href=""><i
							class="fa fa-shopping-cart"></i>
						<div class="sogiohang">
								<span>${soluonggiohang}</span>
							</div></a></li>

				</ul>
			</div>
		</div>
	</nav>
	<div class="wrapper">
		<!--         <div class="page-header section-dark" style="background-image: url('assets/img/antoine-barres.jpg')"> -->
		<!--             <div class="filter"></div> -->
		<!--     		<div class="content-center"> -->
		<!--     			<div class="container"> -->
		<!--     				<div class="title-brand"> -->
		<!--     					<h1 class="presentation-title">Paper Kit 2</h1> -->
		<!--     					<div class="fog-low"> -->
		<!--     						<img src="resources/assets/img/fog-low.png" alt=""> -->
		<!--     					</div> -->
		<!--     					<div class="fog-low right"> -->
		<!--     						<img src="resources/assets/img/fog-low.png" alt=""> -->
		<!--     					</div> -->
		<!--     				</div> -->

		<!--     				<h2 class="presentation-subtitle text-center">Make your mark with a Free Bootstrap 4 UI Kit! </h2> -->
		<!--     			</div> -->
		<!--     		</div> -->
		<!--             <div class="moving-clouds" style="background-image: url('assets/img/clouds.png'); "> -->

		<!--             </div> -->
		<!--     		<h6 class="category category-absolute">Designed and coded by -->
		<!--     			<a href="https://www.creative-tim.com" target="_blank"> -->
		<!--     				<img src="assets/img/creative-tim-white-slim2.png" class="creative-tim-logo"> -->
		<!--     			</a> -->
		<!--     		</h6> -->
		<!--     	</div> -->
		<div class="main">
			<div class="container">
			<div class="row">
				<div class="col-md-6" id="trangchitiet">
				<h2 style="color: green;">Danh sach san pham</h2>
					<table class="table">
						<thead>
							<tr>
								<td>Hinh Anh</td>
								<td>Ten San Pham</td>
								<td>Gia</td>
								<td>So Luong</td>
								<td></td>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="giohang" items="${giohang}">
								<tr>
									<td><img class="hinhgiohang" alt="hinh"src='<c:url value="../resources/image/${giohang.getImage() }"/>' /></td>
									<td>${giohang.getTenSanPham() }</td>
									<td style="color: red">${giohang.getGia() }</td>
									<td style="color: blue"><input type="number" value="${giohang.getSoluong() }"></td>
									<td><i class="fa fa-times fa-lg"></i></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<h4>Tong Tien:<span style="color: red">150,000,000</span>VND</h4>
				</div>
				<div class="col-md-6" id="trangchitiet">
				<h2 style="color: green">Thong tin khach Hang</h2>
					<div class="font-group">
					<form action="">
						<label for="tenkh">Ten khach hang:</label>
						<input id="tenkh" class="form-control">
						<label for="sdt">So dien thoai:</label>
						<input id="sdt" class="form-control">
						<div class="radio">
						  <label><input type="radio" name="optradio">Nhan hang tai cua hang</label>
						</div>
						<div class="radio">
						  <label><input type="radio" name="optradio">Nhan hang tai nha</label>
						</div>
						<label for="diachi">Dia chi:</label>
						<input id="diachi" class="form-control">
						<div class="form-group">
						  <label for="comment">Ghi chu:</label>
						  <textarea class="form-control" rows="5" id="comment"></textarea>
						</div>
						<input type="button" class="btn btn-primary" value="Dat Hang">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="container">
			<div class="row">
				<nav class="footer-nav">
					<ul>
						<li><a href="http://www.creative-tim.com">Creative Tim</a></li>
						<li><a href="http://blog.creative-tim.com">Blog</a></li>
						<li><a href="http://www.creative-tim.com/license">Licenses</a></li>
					</ul>
				</nav>
				<div class="credits ml-auto">
					<span class="copyright"> © <script>
						document.write(new Date().getFullYear())
					</script>, made with <i class="fa fa-heart heart"></i> by Creative Tim
					</span>
				</div>
			</div>
		</div>
	</footer>
</body>

<!-- Core JS Files -->
<script src="../resources/assets/js/jquery-3.2.1.js"
	type="text/javascript"></script>
<script src="../resources/assets/js/jquery-ui-1.12.1.custom.min.js"
	type="text/javascript"></script>
<script src="../resources/assets/js/popper.js" type="text/javascript"></script>
<script src="../resources/assets/js/bootstrap.min.js"
	type="text/javascript"></script>

<!-- Switches -->
<script src="../resources/assets/js/bootstrap-switch.min.js"></script>

<!--  Plugins for Slider -->
<script src="../resources/assets/js/nouislider.js"></script>

<!--  Plugins for DateTimePicker -->
<script src="../resources/assets/js/moment.min.js"></script>
<script src="../resources/assets/js/bootstrap-datetimepicker.min.js"></script>

<!--  Paper Kit Initialization and functons -->
<script src="../resources/assets/js/paper-kit.js?v=2.1.0"></script>
<script src="../resources/assets/js/custom.js"></script>
</html>