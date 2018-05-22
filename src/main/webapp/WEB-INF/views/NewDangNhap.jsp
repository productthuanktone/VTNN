<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Đăng Nhập</title>
<!-- Bootstrap core CSS-->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href='<c:url value="resources/Style/style.css"/>' />
<!-- Custom fonts for this template-->
<link href="resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Custom styles for this template-->
<link href="resources/css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
	<div class="container">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">
				<span style="cursor: pointer;" class="active" id="dangnhap">Đăng Nhập</span>/<span style="cursor: pointer;" id="dangki">Đăng kí</span>
			</div>
			<div class="card-body divdangnhap">
				<form action="dangnhap" method="post">
					<div class="form-group">
					<c:if test="${error !=null }">
					<span>${error}</span>
					</c:if>
						<label for="exampleInputEmail1">Địa chỉ email</label> <input
							class="form-control" id="exampleInputEmail1" type="email"
							aria-describedby="emailHelp" name="tendangnhap"
							placeholder="Nhập địa chỉ email">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Mật khẩu</label> <input
							class="form-control" id="exampleInputPassword1" type="password"
							placeholder="Nhập mật khẩu" name="matkhau">
					</div>
					<div class="form-group">
						<div class="form-check">
							<label class="form-check-label"> <input
								class="form-check-input" type="checkbox">Nhớ mật khẩu
							</label>
						</div>
					</div>
					<input type="submit" class="btn btn-primary btn-block"
						value="Đăng Nhập">
				</form>
				<div class="text-center">
					<a class="d-block small mt-3" href="register.html">Register an
						Account</a> <a class="d-block small" href="forgot-password.html">Forgot
						Password?</a>
				</div>
			</div>
			<div class="card-body divdangki" style="display: none;">
				<form action="dangnhap" method="post">
					<div class="form-group">
					
						<label for="exampleInputEmail1">Địa chỉ email</label> <input
							class="form-control" id="exampleInputEmail1" type="email"
							aria-describedby="emailHelp" name="tendangnhap"
							placeholder="Nhập địa chỉ email">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Mật khẩu</label> <input
							class="form-control" id="exampleInputPassword1" type="password"
							placeholder="Nhập mật khẩu" name="matkhau">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword2">Nhập lại mật khẩu</label> <input
							class="form-control" id="exampleInputPassword2" type="password"
							placeholder="Nhập lại mật khẩu" name="matkhau">
					</div>
					<input type="submit" class="btn btn-primary btn-block"
						value="Đăng Nhập">
				</form>
				<div class="text-center">
					<a class="d-block small mt-3" href="register.html">Register an
						Account</a> <a class="d-block small" href="forgot-password.html">Forgot
						Password?</a>
				</div>
			</div>
		</div>

	</div>
	<!-- Bootstrap core JavaScript-->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="resources/assets/js/custom.js"></script>
</body>

</html>
