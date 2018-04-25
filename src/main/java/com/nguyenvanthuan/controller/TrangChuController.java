package com.nguyenvanthuan.controller;


import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Session;
//import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.nguyenvanthuan.entity.GioHang;
import com.nguyenvanthuan.entity.NhanVien;
import com.nguyenvanthuan.entity.SanPham;
import com.nguyenvanthuan.service.SanPhamService;

@Controller
@RequestMapping("/")
@SessionAttributes("giohang")
public class TrangChuController {
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	SanPhamService sanphamsrevice;
	@GetMapping
	@Transactional
	public String TrangChu(ModelMap modelMap,HttpSession httpSession) {
		List<SanPham> listsp=sanphamsrevice.LaydanhsachSanPham(0);
		if(null != httpSession.getAttribute("giohang")){
			List<GioHang> giohangs=(List<GioHang>) httpSession.getAttribute("giohang");
			 modelMap.addAttribute("soluonggiohang", giohangs.size());
			 System.out.println("test gio hang tranh chu "+giohangs.size());
		}
		modelMap.addAttribute("listsanpham", listsp);
		
		return "NewTrangChu";
	}

}
