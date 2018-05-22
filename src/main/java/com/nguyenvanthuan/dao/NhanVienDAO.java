package com.nguyenvanthuan.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.nguyenvanthuan.daoImp.NhanVienImp;
import com.nguyenvanthuan.entity.NhanVien;
import com.nguyenvanthuan.entity.TaiKhoan;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class NhanVienDAO implements NhanVienImp {

	@Autowired
	SessionFactory sessionFactory;

	public List<NhanVien> LayDangSachNhanVien(int nhanvienbatdau) {
		Session session = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<NhanVien> listNhanViens = (List<NhanVien>) session.createQuery("from nhanvien")
				.setFirstResult(nhanvienbatdau).setMaxResults(20).getResultList();
		return listNhanViens;
	}

	@Override
	public boolean XoaNV(int id) {
		Session session = sessionFactory.getCurrentSession();

		NhanVien nhanvien = new NhanVien();
		nhanvien.setIdNhanVien(id);
		session.delete(nhanvien);

		return false;

	}
}
