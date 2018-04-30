package com.nguyenvanthuan.entity;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name="hoadon")
public class HoaDon {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int mahoadon;
	String tenkhachhang;
	int sdt;
	String diachigiaohang;
	Boolean tinhtrang;
	Date ngaylap;
	String hinhthucgiaohang;
	String ghichu;
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="mahoadon")
	Set<ChiTietHoaDon> danhsachchitiethoadon;
	
	public Set<ChiTietHoaDon> getDanhsachchitiethoadon() {
		return danhsachchitiethoadon;
	}
	public void setDanhsachchitiethoadon(Set<ChiTietHoaDon> danhsachchitiethoadon) {
		this.danhsachchitiethoadon = danhsachchitiethoadon;
	}
	public int getMahoadon() {
		return mahoadon;
	}
	public void setMahoadon(int mahoadon) {
		this.mahoadon = mahoadon;
	}
	public String getTenkhachhang() {
		return tenkhachhang;
	}
	public void setTenkhachhang(String tenkhachhang) {
		this.tenkhachhang = tenkhachhang;
	}
	public int getSdt() {
		return sdt;
	}
	public void setSdt(int sdt) {
		this.sdt = sdt;
	}
	public String getDiachigiaohang() {
		return diachigiaohang;
	}
	public void setDiachigiaohang(String diachigiaohang) {
		this.diachigiaohang = diachigiaohang;
	}

	public Boolean getTinhtrang() {
		return tinhtrang;
	}
	public void setTinhtrang(Boolean tinhtrang) {
		this.tinhtrang = tinhtrang;
	}
	public Date getNgaylap() {
		return ngaylap;
	}
	public void setNgaylap(Date ngaylap) {
		this.ngaylap = ngaylap;
	}
	public String getHinhthucgiaohang() {
		return hinhthucgiaohang;
	}
	public void setHinhthucgiaohang(String hinhthucgiaohang) {
		this.hinhthucgiaohang = hinhthucgiaohang;
	}
	public String getGhichu() {
		return ghichu;
	}
	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}
	
}
