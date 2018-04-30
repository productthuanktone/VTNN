package com.nguyenvanthuan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nguyenvanthuan.dao.ChiTietHoaDonDAO;
import com.nguyenvanthuan.daoImp.ChiTietHoaDonImp;
import com.nguyenvanthuan.entity.ChiTietHoaDon;

@Service
public class ChiTietHoaDonService implements ChiTietHoaDonImp{
	@Autowired
	ChiTietHoaDonDAO chitiethoadonDAO;
	@Override
	public boolean ThemChiTietHD(ChiTietHoaDon chiTietHoaDon) {
		
		return chitiethoadonDAO.ThemChiTietHD(chiTietHoaDon);
	}

}
