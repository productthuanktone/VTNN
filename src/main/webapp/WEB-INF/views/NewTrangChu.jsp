<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="assets/img/favicon.ico">
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Vật Tư Nông Nghiệp</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<!-- Bootstrap core CSS     -->
<link rel="stylesheet"
	href='<c:url value="resources/assets/css/bootstrap.min.css"/>' />
<link rel="stylesheet" href='<c:url value="resources/Style/style.css"/>' />
<link rel="stylesheet"
	href='<c:url value="resources/assets/css/paper-kit.css?v=2.1.0"/>' />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link rel="stylesheet"
	href='<c:url value="resources/assets/css/demo.css"/>' />
<!--     Fonts and icons     -->
<link href="resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href='<c:url value="resources/assets/css/nucleo-icons.css"/>' />

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
				<a class="navbar-brand" href="/VTNN/">Trang Chủ</a>
			</div>
			<div class="collapse navbar-collapse" id="navbarToggler">
				<ul class="navbar-nav ml-auto">

					<li class="nav-item"><a
						href="documentation/tutorial-components.html" target="_blank"
						class="nav-link"> Chăm sóc khách hàng</a></li>
					<li class="nav-item"><a
						href="documentation/tutorial-components.html" target="_blank"
						class="nav-link"> Liên hệ</a></li>
					<li class="nav-item"><a style="color: blue !important"
						href="documentation/tutorial-components.html" class="nav-link">
							Đăng Ký</a></li>
					<li class="nav-item"><a style="color: red !important"
						href="dangnhap" class="nav-link">${tendangnhap } Đăng Nhập</a></li>
					<li class="nav-item" id="giohang"><a class="nav-link"
						href="giohang/"><i class="fa fa-shopping-cart"></i>
							<div class="sogiohang">
								<span>${soluonggiohang }</span>
							</div></a></li>

				</ul>
			</div>
		</div>
	</nav>
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
		<div class="section section-buttons">
			<div class="container">
				<br />
				<hr>
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 letfct">
						<div>
							<h4>Loại Sản Phẩm</h4>
						</div>
						<div>
							<span class="btn btn-outline-primary btn-round btn-giohang1">Thuốc
								Trừ Sâu</span>
						</div>
						<div>
							<span class="btn btn-outline-primary btn-round btn-giohang1">Thuốc
								Trị bệnh Lúa</span>
						</div>
						<div>
							<span class="btn btn-outline-primary btn-round btn-giohang1">Thuốc
								Dưỡng</span>
						</div>
						<div>
							<span class="btn btn-outline-primary btn-round btn-giohang1">Phân
								Bón</span>
						</div>
					</div>
					<div class="col-lg-9 col-md-9 col-sm-9">
						<div class="row">
							<c:forEach var="sanpham" items="${listsanpham}">
								<div class="col-sm-6 col-md-6 col-lg-3">
									<a href="chitiet/${sanpham.getIdSanPham() }">
										<div class="sanpham wow bounceIn">
											<img alt="hinh"
												src='<c:url value="/resources/image/${sanpham.getImage() }"/>' /><br>
											<span>${sanpham.getTenSanPham() }</span> <br>
										</div>
									</a>

								</div>
							</c:forEach>

							<!-- End San pham -->
						</div>

					</div>
				</div>
			</div>
		</div>
		
	<div id="footer" class="container-fluid">
		<div class="row">
			<div class="col-sm-6 col-md-6 wow tada textfooter">
				<p>
					<span class="title-footer">THÔNG TIN CỬA HÀNG</span>
				</p>
				<span>Hoàng Quân là một công ty uy tín, luôn đảm bảo chất
					lượng sản phẩm tốt nhất cho khách hàng.</span>
			</div>
			<div class="col-sm-6 col-md-6 wow tada textfooter">
				<p>
					<span class="title-footer">LIÊN HỆ</span>
				</p>
				<span>Địa chỉ: 60 Thạnh Lộc, xã Thạnh Phước, uyện Giồng
					Giềng, tỉnh Kiên Giang.</span><br /> <span>Email:
					thuanb1401193@student.ctu.edu.vn</span><<br> <span>Số điện
					thoại: 01263241992</span>
			</div>

		</div>
	</div>
</body>

<!-- Core JS Files -->
<script src="resources/assets/js/jquery-3.2.1.js" type="text/javascript"></script>
<script src="resources/assets/js/jquery-ui-1.12.1.custom.min.js"
	type="text/javascript"></script>
<script src="resources/assets/js/popper.js" type="text/javascript"></script>
<script src="resources/assets/js/bootstrap.min.js"
	type="text/javascript"></script>

<!-- Switches -->
<script src="resources/assets/js/bootstrap-switch.min.js"></script>

<!--  Plugins for Slider -->
<script src="resources/assets/js/nouislider.js"></script>

<!--  Plugins for DateTimePicker -->
<script src="resources/assets/js/moment.min.js"></script>
<script src="resources/assets/js/bootstrap-datetimepicker.min.js"></script>

<!--  Paper Kit Initialization and functons -->
<script src="resources/assets/js/paper-kit.js?v=2.1.0"></script>
<script src="resources/assets/js/custom.js"></script>

</html>
