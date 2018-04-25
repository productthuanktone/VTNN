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

<title>Paper Kit 2 by Creative Tim</title>

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
<link href="resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
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
						href="quanly" class="nav-link">Đăng Nhập</a></li>
					<li class="nav-item">${soluonggiohan}<i class="fa fa-cart-plus fa-lg" aria-hidden="true"></i></li>

				</ul>
			</div>
		</div>
	</nav>
	<div class="wrapper">