package com.nguyenvanthuan.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.apache.catalina.connector.Request;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nguyenvanthuan.entity.ChiTietHoaDon;
import com.nguyenvanthuan.entity.ChiTietHoaDonId;
import com.nguyenvanthuan.entity.GioHang;
import com.nguyenvanthuan.entity.HoaDon;
import com.nguyenvanthuan.service.ChiTietHoaDonService;
import com.nguyenvanthuan.service.HoaDonService;

@Controller
@RequestMapping("giohang/")
public class GioHangController {
	@Autowired
	HoaDonService hoadonservice;
	@Autowired
	ChiTietHoaDonService chitiethoadonservice;
	@Autowired
	SessionFactory sessionFactory;

	@GetMapping
	public String Default(ModelMap modelMap, HttpSession httpSession) {
		if (null != httpSession.getAttribute("giohang")) {
			List<GioHang> giohangs = (List<GioHang>) httpSession.getAttribute("giohang");
			modelMap.addAttribute("soluonggiohang", giohangs.size());
			modelMap.addAttribute("giohang", giohangs);
		}
		return "NewGioHang";
	}

	@PostMapping
	@Transactional
	public String ThemHoaDon(HttpSession httpSession, @RequestParam String tenkh, @RequestParam int sdt,
			@RequestParam String diachigiaohang, @RequestParam String hinhthucgiaohang, @RequestParam String ghichu) {
		System.out.println("" + tenkh + sdt + diachigiaohang + hinhthucgiaohang + ghichu + "test");
		if (null != httpSession.getAttribute("giohang")) {
			List<GioHang> giohangs = (List<GioHang>) httpSession.getAttribute("giohang");
			// themhoadon
			HoaDon hoaDon = new HoaDon();
			hoaDon.setTenkhachhang(tenkh);
			hoaDon.setSdt(sdt);
			hoaDon.setDiachigiaohang(diachigiaohang);
			hoaDon.setHinhthucgiaohang(hinhthucgiaohang);
			hoaDon.setGhichu(ghichu);
			hoadonservice.ThemHoaDon(hoaDon);
			int idhoadon = hoadonservice.ThemHoaDon(hoaDon);
			System.out.println("" + idhoadon + "   idhoadon");
			if (idhoadon > 0) {
				for (GioHang gioHangs : giohangs) {
					// tao chi tiet hoa don id
					ChiTietHoaDonId chiTietHoaDonId = new ChiTietHoaDonId();
					chiTietHoaDonId.setIdSanPham(gioHangs.getIdSanPham());
					chiTietHoaDonId.setMahoadon(hoaDon.getMahoadon());
					ChiTietHoaDon chiTietHoaDon = new ChiTietHoaDon();
					chiTietHoaDon.setChiTietHoaDonId(chiTietHoaDonId);
					chiTietHoaDon.setSoluong(gioHangs.getSoluong());
					chiTietHoaDon.setGiatien(gioHangs.getGia());
					// add chiet tiet hoa don vao trong hoa don
					chitiethoadonservice.ThemChiTietHD(chiTietHoaDon);
				}
				System.out.println("Them thanh Cong");
				httpSession.removeAttribute("giohang");
			} else {
				System.out.println("Them tb");
			}
			// tao list chi tiet hoa don

		}

		return "NewGioHang";

	}
}
