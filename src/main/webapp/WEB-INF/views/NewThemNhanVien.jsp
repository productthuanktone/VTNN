<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="card card-register mx-auto mt-5">
		<div class="card-header" style="background: cadetblue;">Nhập
			Thông Tin Khi Thêm Nhân Viên</div>
		<div class="card-body">
			<form>
				<div class="form-group">
					<div class="form-row">
						<div class="col-md-6">
							<div>
								<label for="hoten">Họ Tên:</label> <input class="form-control"
									id="hoten" type="text" aria-describedby="nameHelp" name="hoten"
									placeholder="Nhập họ tên">
							</div>
							<div class="form-group">
								<label for="sodienthoai">Số điện thoại:</label> <input
									class="form-control" id="sodienthoai" type="text"
									name="sodienthoai" placeholder="Số điện thoại">
							</div>
							<div>
								<label for="email">Email:</label> <input class="form-control"
									id="email" type="text" name="email" placeholder="Nhập email">
							</div>
							<div>
								<label for="diachi">Địa chỉ:</label> <input class="form-control"
									id="diachi" type="text" name="diachi"
									placeholder="Nhập địa chỉ">
							</div>
							<div class="form-group">
								<label for="gioitinh">Giới Tính:</label> <select
									name="gioitinh" class="gioitinh">
									<option value="Nam">Nam</option>
									<option value="Nu">Nu</option>
								</select>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="tentaikhoa">Tên Tài Khoản:</label> <input
									class="form-control" id="tentaikhoan" type="text"
									name="tentaikhoan" placeholder="nhập tài khoản">
							</div>
							<div class="form-group">
								<label for="matkhau">Mật Khẩu:</label> <input
									class="form-control" id="matkhau" type="text" name="matkhau"
									placeholder="Nhập mật khẩu">
							</div>
							<div class="form-group">
								<label for="matkhaulai">Nhập Lại Mật Khẩu:</label> <input
									class="form-control" id="matkhailai" type="text"
									name="matkhaulai" placeholder="Nhập lại mật khẩu">
							</div>
							<div class="form-group">
								<input type="text" name="loaitaikhoan" value="User" id="loaitaikhoan">
							</div>
							<div>
								<input id="btnthemnv" class="btn btn-primary" value="Thêm">
							</div>
						</div>
					</div>

				</div>


			</form>
		</div>
	</div>
</div>
    <script src="resources/assets/js/custom.js"></script>