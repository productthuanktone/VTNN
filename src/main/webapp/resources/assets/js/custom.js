$(document).ready(
		function() {
			$("#cot1").click(function() {
				$(this).addClass("activer");
			});
			$("#cot2").click(function() {
				$(this).addClass("activeb");
			});
			$("#cot3").click(function() {
				$(this).addClass("activeo");
			});
			$("#cot4").click(function() {
				$(this).addClass("activebl");
			});
			$(".btn-giohang").click(
					function() {
						var tensp = $(".tensp").text();
						var tensp = $(".tensp").attr("data-tensp");
						var hinh = $(".hinh").attr("data-hinh");
						var id = $(this).closest("tr").find(".id").text();
						var id = $(this).closest("tr").find(".id").attr(
								"data-id");
						var gia = $(this).closest("tr").find(".gia").text();
						var gia = $(this).closest("tr").find(".gia").attr(
								"data-giatien");
						var soluong = $(this).closest("tr").find(".soluong")
								.text();
						var soluong = $(this).closest("tr").find(".soluong")
								.attr("data-soluong");
						// alert(tensp+" "+id+" "+gia+" "+soluong);
						$.ajax({
							url : "/VTNN/api/themgiohang",
							type : "GET",
							data : {
								tensp : tensp,
								image : hinh,
								idSanPham : id,
								gia : gia,
								soluong : soluong

							},
							success : function(value) {
								$(".sogiohang").html(
										"<span>" + value + "</span>");
							}

						});
						// .done(function(){
						// $.ajax({
						// url:"/VTNN/api/soluonggiohang",
						// type:"GET",
						// success:function(value){
						//					
						// $(".sogiohang").html("<span>" + value + "</span>")
						// }
						// });
						// });
					});
			Gantongtien();
			function Gantongtien(ischange) {
				var tongtiensp = 0;
				$(".giatien").each(
						function() {
							var gia = $(this).text();
							var soluong=$(this).closest("tr").find(".soluongcuagiohang").val();
							var tongtien=parseInt(gia)*soluong;
							var format1 = parseFloat(tongtien).toFixed().replace(
									/(\d)(?=(\d{3})+\.)/g, "$1,").toString();
							
							if (!ischange) {
								$(this).html(format1);
							}
							
							tongtiensp = tongtiensp + parseFloat(tongtien);
						})
						
						var formatsp = tongtiensp.toFixed(3).replace(
								/(\d)(?=(\d{3})+\.)/g, "$1,").toString();
						$("#tongtiensp").html(" " + formatsp + "");
			}

			$(".soluongcuagiohang").change(
					function() {
						var soluong = ($(this).val());
						var gia1 = $(this).closest("tr").find(".giatien").attr(
								"data-giatien");
						var id = $(this).closest("tr").find(".tensp").attr(
								"data-idsanpham");
						var tongtien = soluong * parseFloat(gia1);
						var format = tongtien.toFixed().replace(
								/(\d)(?=(\d{3})+\.)/g, "$1,").toString();
						$(this).closest("tr").find(".giatien").html(format);
						Gantongtien(true);
						 $.ajax({
						url : "/VTNN/api/capnhatgiohang1",
						 type : "GET",
						 data : {
						 soluong:soluong,
						 idsp:id,
						 gia:gia1,
						 },
						 success : function(value) {
						
						 }
						 });
					});
//			$(".soluongcuagiohang").blur(
//					function() {
//						var soluong = ($(this).val());
//						var id = $(this).closest("tr").find(".tensp").attr("data-idsanpham");
//						var gia = $(this).closest("tr").find(".giatien").attr("data-giatien");
//						
//								$.ajax({
//							url :"/VTNN/api/capnhatgiohang",
//							type :"POST",
//							data : {
//								soluong : soluong,
//								idsp : id,
//								gia : gia,
//							},
//							success : function(value) {
//
//							}
//						});
//					});

		});