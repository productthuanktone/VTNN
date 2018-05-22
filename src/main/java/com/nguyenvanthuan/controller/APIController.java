package com.nguyenvanthuan.controller;
//Functions:.....
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.nguyenvanthuan.entity.GioHang;

import com.nguyenvanthuan.service.NhanVienService;

@Controller
@RequestMapping("api/")
@SessionAttributes("giohang")
public class APIController {
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	NhanVienService nhanvienservice;

	@GetMapping("danhsachnv")
	@ResponseBody
	public String viewdanhsachnv() {
		// List<NhanVien> listNhanVien=nhanvienservice.LayDangSachSanPham(0);
		// modelMap.addAttribute("listnhanvien",listNhanVien);
		return "DanhSachNhanVien";
	}

	@GetMapping("capnhatgiohang1")
	@ResponseBody
	public void CapNhatGioHang111(@RequestParam int soluong, @RequestParam int idsp, @RequestParam float gia,
			HttpSession httpSession) {
		System.out.println(soluong + "tttt" + idsp + "gggg" + gia);
		if (null != httpSession.getAttribute("giohang")) {
			List<GioHang> listgiohangs = (List<GioHang>) httpSession.getAttribute("giohang");
			int vitri = KiemTraGioHang(listgiohangs, idsp, gia, httpSession);
			System.out.println(listgiohangs.get(vitri).getGia() + "====" + listgiohangs.get(vitri).getSoluong());
			listgiohangs.get(vitri).setSoluong(soluong);
		}
		
	}
	@GetMapping("xoagiohang")
	@ResponseBody
	public void xoaGioHang( @RequestParam int idsp, @RequestParam float gia,HttpSession httpSession) {
		if (null != httpSession.getAttribute("giohang")) {
			List<GioHang> listgiohangs = (List<GioHang>) httpSession.getAttribute("giohang");
			int vitri = KiemTraGioHang(listgiohangs, idsp, gia, httpSession);
			listgiohangs.remove(vitri);
		}
		
	}

	@GetMapping("themgiohang")
	@ResponseBody
	public String ThemGioHang(@RequestParam int idSanPham, @RequestParam String tensp, @RequestParam float gia,
			@RequestParam String image, @RequestParam int soluong, HttpSession httpSession) {
		if (null == httpSession.getAttribute("giohang")) {
			GioHang gioHang = new GioHang();
			List<GioHang> gioHangs = new ArrayList();
			gioHang.setIdSanPham(idSanPham);
			gioHang.setTenSanPham(tensp);
			gioHang.setGia(gia);
			gioHang.setImage(image);
			gioHang.setSoluong(1);
			gioHangs.add(gioHang);
			httpSession.setAttribute("giohang", gioHangs);
			return gioHangs.size() + "";
		} else {
			List<GioHang> listgiohang = (List<GioHang>) httpSession.getAttribute("giohang");
			int vitri = KiemTraGioHang(listgiohang, idSanPham, gia, httpSession);
			// neu kiem tra khong co sp thi them moi vao gio hang
			if (vitri == -1) {
				GioHang gioHang = new GioHang();
				gioHang.setIdSanPham(idSanPham);
				gioHang.setTenSanPham(tensp);
				gioHang.setGia(gia);
				gioHang.setImage(image);
				gioHang.setSoluong(1);
				listgiohang.add(gioHang);
			} else {
				int soluongmoi = listgiohang.get(vitri).getSoluong() + 1;
				listgiohang.get(vitri).setSoluong(soluongmoi);
			}
			return listgiohang.size() + "";
		}
		// List<GioHang> listgiohang = (List<GioHang>)
		// httpSession.getAttribute("giohang");
		// for (GioHang gioHang : listgiohang) {
		// System.out.println(gioHang.getTenSanPham() + " " + gioHang.getGia() + " " +
		// gioHang.getSoluong());
		// }

	}

	private int KiemTraGioHang(List<GioHang> listgiohang, int idSanPham, float gia, HttpSession httpSession) {
		for (int i = 0; i < listgiohang.size(); i++) {
			if (listgiohang.get(i).getIdSanPham() == idSanPham && listgiohang.get(i).getGia() == gia) {
				return i;
			}
		}
		return -1;
	}
	// @GetMapping("soluonggiohang")
	// @ResponseBody
	// public String SoLuongGioHang(HttpSession httpSession,ModelMap modelMap) {
	// if(null!=httpSession.getAttribute("giohang")){
	// List<GioHang> giohangs=(List<GioHang>) httpSession.getAttribute("giohang");
	// System.out.println("test gio hang "+giohangs.size());
	// return giohangs.size()+"";
	// }
	//
	// return "";
	// }

}
