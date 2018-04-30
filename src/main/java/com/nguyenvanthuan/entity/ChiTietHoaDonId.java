package com.nguyenvanthuan.entity;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable

public class ChiTietHoaDonId implements Serializable {
	int mahoadon;
	int idSanPham;
	public int getMahoadon() {
		return mahoadon;
	}
	public void setMahoadon(int mahoadon) {
		this.mahoadon = mahoadon;
	}
	public int getIdSanPham() {
		return idSanPham;
	}
	public void setIdSanPham(int idSanPham) {
		this.idSanPham = idSanPham;
	}
	
}
