<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="resources/assets/img1/logonn.jpg">
<link rel="icon" type="image/png"
	href="resources/assets/img1/logonn.jpg">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Hoàng Quân</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<link href="resources/assets/bootstrap3/css/bootstrap.css"
	rel="stylesheet" />
<link href="resources/assets/css1/gsdk.css" rel="stylesheet" />
<link href="resources/assets/css1/demo.css" rel="stylesheet" />

<!--     Font Awesome     -->
<link href="resources/assets/bootstrap3/css/font-awesome.css"
	rel="stylesheet">
</head>
<body>
	<div id="navbar-full">
		<div class="container">
			<nav
				class="navbar navbar-ct-blue navbar-transparent navbar-fixed-top"
				role="navigation">

				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a href="3">
							<div class="logo-container">
								<div class="logo">
									<img src="resources/assets/img1/logonn.jpg">
								</div>
								<div class="brand">HOÀNG QUÂN</div>
							</div>
						</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#" class="btn btn-round btn-default">Chăm
									Sóc Khách Hàng</a></li>

							<li><a href="#" class="btn btn-round btn-default">Kiểm
									Tra Đơn Hàng</a></li>
							<li class="nav-item"><a style="color: blue !important"
								href="documentation/tutorial-components.html"
								class="btn btn-round btn-default">Đăng Ký</a></li>
							<li class="nav-item"><a style="color: red !important"
								href="dangnhap" class="btn btn-round btn-default">Đăng Nhập</a></li>
						</ul>

					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
		<!--  end container-->

		<div class='blurred-container'>
			<div class="motto">
				<div>HOÀNG QUÂN</div>
			</div>
			<div class="img-src"
				style="background-image: url('resources/assets/img1/cover_4.jpg')"></div>
			<div class='img-src blur'
				style="background-image: url('resources/assets/img1/cover_4_blur.jpg')"></div>
		</div>

	</div>



	<div class="main">
		<div id="info" class="container">
			<div class="row">
				<div class="col-12 col-sm-4 col-md-4 wow slideInLeft "
					data-wow-duration="2s" style="text-align: center;">
					<img class="iconcl" alt="icon_oval"
						src="resources/assets/img1/icon_chatluong.jpg" /> <br> <span
						class="textcl">CHẤT LƯỢNG</span><br> <span class="textcln">Chúng
						tôi cam kết sẻ mang lại cho bạn sản phẩm tốt nhất.</span>
				</div>
				<div class="col-12 col-sm-4  col-md-4 wow tada"
					style="text-align: center;" data-wow-duration="
        2s">
					<img class="iconcl" alt="icon_oval"
						src="resources/assets/img1/icon_tietkien.jpg" /> <br> <span
						class="textcl">TIẾT KIỆM CHI PHÍ</span><br> <span
						class="textcln">Sản phẩm giá tốt nhất. Tiết kiệm chi phí
						vận chuyển.</span>
				</div>
				<div class="col-12 col-sm-4 col-md-4 wow slideInRight "
					data-wow-duration="1s" style="text-align: center;">
					<img class="iconcl" alt="icon_oval"
						src="resources/assets/img1/icon_vanchuyen.png" /> <br> <span
						class="textcl">VẬN CHUYỂN</span><br> <span class="textcln">Cam
						kết giao hàng tận nơi. Vận chuyển nhanh.</span>
				</div>
			</div>
		</div>
		<hr>
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="column">
					<div>
						<div>Chọn Loại Sản Phẩm</div><br>
						<span>Thuốc Trừ Sâu</span><br>
						<span>Thuốc Trừ Sâu</span><br>
						<span>Thuốc Trừ Sâu</span><br>
						<span>Thuốc Trừ Sâu</span>
					</div>
					<hr>
						<div>
							<div>Chọn màu</div>
							<br>
							<div>
								<span
									class="pick-class-label label-default label-fill label-tooltip"
									data-toggle="tooltip" data-placement="top" title="Default"
									new-class="btn-default"> </span> <span
									class="pick-class-label label-primary label-fill label-tooltip"
									data-toggle="tooltip" data-placement="top" title="Primary"
									new-class="btn-primary"> </span> <span
									class="pick-class-label label-info label-fill label-tooltip"
									data-toggle="tooltip" data-placement="top" title="Info"
									new-class="btn-info"> </span>
							</div>
							<hr>
							<div>
								<span
									class="pick-class-label label-success label-fill label-tooltip"
									data-toggle="tooltip" data-placement="top" title="Success"
									new-class="btn-success"> </span> <span
									class="pick-class-label label-warning label-fill label-tooltip"
									data-toggle="tooltip" data-placement="top" title="Warning"
									new-class="btn-warning"> </span> <span
									class="pick-class-label label-danger label-fill label-tooltip"
									data-toggle="tooltip" data-placement="top" title="Danger"
									new-class="btn-danger"> </span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-9" id="display-buttons" data-class="btn-info">
					<%--                 <c:forEach var="sanpham" items="${listsanpham}"> --%>
					<!-- 								<div class="col-sm-6 col-md-6 col-lg-3"> -->
					<%-- 									<a href="chitiet/${sanpham.getIdSanPham() }"> --%>
					<!-- 										<div class="sanpham wow bounceIn"> -->
					<!-- 											<img alt="hinh" -->
					<%-- 												src='<c:url value="/resources/image/${sanpham.getImage() }"/>' /><br> --%>
					<%-- 											<span>${sanpham.getTenSanPham() }</span> <br> --%>
					<!-- 										</div> -->
					<!-- 									</a> -->

					<!-- 								</div> -->
					<%-- 							</c:forEach> --%>

					<c:forEach var="sanpham" items="${listsanpham}">
					<a href="chitiet/${sanpham.getIdSanPham() }">
						<div class="col-md-3">
							<img style="width: 180px; height: 210px; text-align: center;"
								src='<c:url value="resources/assets/img1/${sanpham.getImage() }"/>'
								alt="Card image cap"> <br> <span>${sanpham.getTenSanPham() }</span><br>
							<span style="color: red;">150.000 VND</span>
							<div class="card-body">
								<a href="#" class="btn btn-primary">Giỏ Hàng</a>
							</div>
						</div>
						</a>
					</c:forEach>


				</div>

			</div>
		</div>
		<!-- end row -->


	</div>
	<!-- end buttons div -->


	<!-- end main -->
	<div class="parallax-pro">
		<div class="img-src"
			style="background-image: url('http://get-shit-done-pro.herokuapp.com/resources/assets/img1/bg6.jpg');"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<h1>
						<small> Don't forget to check our latest release:<a></small>
					</h1>
				</div>
				<div class="col-md-6 col-md-offset-3 col-md-12 text-center">
					<h1 class="hello text-center">
						<a href="http://gsdk.creative-tim.com">Get Shit Done Kit <span
							class="label label-warning"> Pro</span></a> <small>
							<ul class="list-unstyled">
								<li>50+ new elements</li>
								<li>LESS and SASS files</li>
								<li>PSD for designers</li>
								<li>New Font Icons</li>
							</ul>
						</small>
					</h1>
					<div class="actions">
						<a class="btn btn-lg btn-warning btn-fill"
							href="http://gsdk.creative-tim.com/?ref=get-shit-done">Live
							Preview Kit</a>
					</div>
				</div>
			</div>
			<div class="space-30"></div>
			<div class="row">
				<div class="col-md-12 text-center">
					<div class="credits">
						&copy;
						<script>document.write(new Date().getFullYear())</script>
						Get Shit Done Kit by <a href="http://creative-tim.com">
							Creative Tim</a>, made with <i class="fa fa-heart heart" alt="love"></i>
						for a better web.
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

</body>

<script src="resources/jquery/jquery-1.10.2.js" type="text/javascript"></script>
<script src="resources/assets/js/jquery-ui-1.10.4.custom.min.js"
	type="text/javascript"></script>

<script src="resources/assets/bootstrap3/js/bootstrap.js"
	type="text/javascript"></script>
<script src="resources/assets/js/gsdk-checkbox.js"></script>
<script src="resources/assets/js/gsdk-radio.js"></script>
<script src="resources/assets/js/gsdk-bootstrapswitch.js"></script>
<script src="resources/assets/js/get-shit-done.js"></script>
<script src="resources/assets/js/custom.js"></script>

<script type="text/javascript">
         
    $('.btn-tooltip').tooltip();
    $('.label-tooltip').tooltip();
    $('.pick-class-label').click(function(){
        var new_class = $(this).attr('new-class');  
        var old_class = $('#display-buttons').attr('data-class');
        var display_div = $('#display-buttons');
        if(display_div.length) {
        var display_buttons = display_div.find('.btn');
        display_buttons.removeClass(old_class);
        display_buttons.addClass(new_class);
        display_div.attr('data-class', new_class);
        }
    });
    $( "#slider-range" ).slider({
		range: true,
		min: 0,
		max: 500,
		values: [ 75, 300 ],
	});
	$( "#slider-default" ).slider({
			value: 70,
			orientation: "horizontal",
			range: "min",
			animate: true
	});
	$('.carousel').carousel({
      interval: 4000
    });
      
    
</script>
</html>