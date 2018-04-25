package com.nguyenvanthuan.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.nguyenvanthuan.entity.GioHang;

@Controller
@RequestMapping("giohang/")
public class GioHangController {
	@GetMapping
	public String Default(ModelMap modelMap, HttpSession httpSession) {
		if (null != httpSession.getAttribute("giohang")) {
			List<GioHang> giohangs = (List<GioHang>) httpSession.getAttribute("giohang");
			modelMap.addAttribute("soluonggiohang", giohangs.size());
			modelMap.addAttribute("giohang", giohangs);
		}
		return "NewGioHang";
	}
}
