package com.nguyenvanthuan.controller;



import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nguyenvanthuan.entity.NhanVien;
import com.nguyenvanthuan.entity.TaiKhoan;
import com.nguyenvanthuan.service.NhanVienService;

@Controller
@RequestMapping("nhanvien")
public class NhanVienController {

	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	NhanVienService nhanvienservice;
	
	@GetMapping("/danhsachnv")
	@Transactional
	public String ViewNhanVien(ModelMap modelMap) {
		List<NhanVien> listNhanVien=nhanvienservice.LayDangSachNhanVien(0);
		modelMap.addAttribute("listnhanvien",listNhanVien);
		return "NewNhanVien";
	}
	@GetMapping("/themnv")
	@Transactional
	public String ViewThemNV() {
		
		return "NewThemNhanVien";
	}
	@GetMapping("/xoa")
	@Transactional
	public String ViewXoaNV(@RequestParam int id,ModelMap modelMap) {
		nhanvienservice.XoaNV(id);
		return "redirect:/nhanvien/danhsachnv";
		/*if(nhanvienservice.XoaNV(id)==true) {
			return "redirect:/nhanvien/danhsachnv";
		}
		else {
			System.out.println("false");
			return "redirect:/nhanvien/danhsachnv";
		}*/
//		try {
//				nhanvienservice.XoaNV(id);
//				return "redirect:/nhanvien/danhsachnv";
//			
//		} catch (Exception e) {
//			System.out.println("false");
//			String error="Không thể xóa nhân viên này vì nhân viên này đã thêm sản phẩm";
//			modelMap.addAttribute("error", error);
//			return "redirect:/nhanvien/danhsachnv";
//		}
//		
	}
	
	@PostMapping("/them")
	@Transactional
	public String ViewThemNhanVien(@RequestParam String hoten, @RequestParam String gioitinh, @RequestParam int sodienthoai,
			@RequestParam String diachi, @RequestParam String email, @RequestParam String tentaikhoan,
			@RequestParam String matkhau, @RequestParam String loaitaikhoan) {
		Session session = sessionFactory.getCurrentSession();
		NhanVien nv = new NhanVien(hoten, gioitinh, sodienthoai, email, diachi);
		TaiKhoan tk = new TaiKhoan(tentaikhoan, matkhau, loaitaikhoan);
		nv.setTaiKhoan(tk);
		session.saveOrUpdate(nv);
		return "redirect:/nhanvien/danhsachnv";
	}
}
