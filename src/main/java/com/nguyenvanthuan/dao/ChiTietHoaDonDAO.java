package com.nguyenvanthuan.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.nguyenvanthuan.daoImp.ChiTietHoaDonImp;
import com.nguyenvanthuan.entity.ChiTietHoaDon;
import com.nguyenvanthuan.entity.ChiTietHoaDonId;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class ChiTietHoaDonDAO implements ChiTietHoaDonImp{
	@Autowired
	SessionFactory sessionFactory;
	@Override
	@Transactional
	public boolean ThemChiTietHD(ChiTietHoaDon chiTietHoaDon) {
		Session session=sessionFactory.getCurrentSession();
		ChiTietHoaDonId id=(ChiTietHoaDonId) session.save(chiTietHoaDon);
		if(null!=id) {
			return true;
		}
		else {
			return false;
		}
		
	}

}
