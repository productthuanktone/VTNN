package com.nguyenvanthuan.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.nguyenvanthuan.daoImp.HoaDonImp;
import com.nguyenvanthuan.entity.HoaDon;

@Repository
@Scope(proxyMode=ScopedProxyMode.TARGET_CLASS)
public class HoaDonDAO implements HoaDonImp{
	@Autowired
	SessionFactory  sessionfactory;
	@Override
	@Transactional
	public int ThemHoaDon(HoaDon hoaDon) {
		Session session=sessionfactory.getCurrentSession();
		int id=(int) session.save(hoaDon);
		if(0<id) {
			return id;
		}else {
			return 0;
		}
		
		
	}

}
