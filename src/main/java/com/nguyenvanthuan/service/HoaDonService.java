package com.nguyenvanthuan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nguyenvanthuan.dao.HoaDonDAO;
import com.nguyenvanthuan.daoImp.HoaDonImp;
import com.nguyenvanthuan.entity.HoaDon;

@Service
public class HoaDonService implements HoaDonImp {
	@Autowired
	HoaDonDAO hoaDonDAO;

	@Override
	public int ThemHoaDon(HoaDon hoaDon) {
		
		return hoaDonDAO.ThemHoaDon(hoaDon);
	}
	
}
