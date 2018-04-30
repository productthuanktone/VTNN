package com.nguyenvanthuan.entity;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

@Entity(name="chitiethoadon")
public class ChiTietHoaDon {
	@EmbeddedId
	ChiTietHoaDonId chiTietHoaDonId;
	int soluong;
	float giatien;
	public ChiTietHoaDonId getChiTietHoaDonId() {
		return chiTietHoaDonId;
	}
	public void setChiTietHoaDonId(ChiTietHoaDonId chiTietHoaDonId) {
		this.chiTietHoaDonId = chiTietHoaDonId;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public float getGiatien() {
		return giatien;
	}
	public void setGiatien(float giatien) {
		this.giatien = giatien;
	}

	

}
