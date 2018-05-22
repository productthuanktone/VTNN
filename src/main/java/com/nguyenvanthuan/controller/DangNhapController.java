package com.nguyenvanthuan.controller;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.nguyenvanthuan.service.TaiKhoanService;

@Controller
@RequestMapping("dangnhap")
@SessionAttributes("tendangnhap")
public class DangNhapController {

	@GetMapping
	public String ViewDangNhap() {

		return "NewDangNhap";
	}

	@Autowired
	TaiKhoanService taikhoanService;

	@PostMapping
	@Transactional
	public String XuLyDangNhap(@RequestParam String tendangnhap, @RequestParam String matkhau,ModelMap map) {
		boolean kiemtra = taikhoanService.KiemTraDangNhap(tendangnhap, matkhau);
		if(kiemtra) {
			map.addAttribute("tendangnhap", tendangnhap);
			System.out.println("Success");
			return "redirect:quanly";
		}
		else {
			String error="Lỗi đăng nhập!Sai email hoặc mật khẩu";
			System.out.println("failure");
			map.addAttribute("error", error);
			return "NewDangNhap";
		}

	}
}
