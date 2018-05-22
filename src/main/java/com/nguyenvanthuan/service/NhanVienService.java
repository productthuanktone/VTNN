package com.nguyenvanthuan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nguyenvanthuan.dao.NhanVienDAO;
import com.nguyenvanthuan.daoImp.NhanVienImp;
import com.nguyenvanthuan.entity.NhanVien;

@Service
public class NhanVienService implements NhanVienImp {
	@Autowired
	NhanVienDAO nhanVienDAO;
	public List<NhanVien> LayDangSachNhanVien(int sanphambatdau) {
		return nhanVienDAO.LayDangSachNhanVien(sanphambatdau);
	}
	@Override
	public boolean XoaNV(int id) {
		
		return nhanVienDAO.XoaNV(id);
	}

}
