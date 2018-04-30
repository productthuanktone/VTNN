package com.nguyenvanthuan.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="giatheongay")
public class GiaTheoNgay {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int idNgay;
	Date ngay;
	String Gia;
	int idSanPham;
	int soluong;
	
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public Date getNgay() {
		return ngay;
	}
	public void setNgay(Date ngay) {
		this.ngay = ngay;
	}
	public String getGia() {
		return Gia;
	}
	public void setGia(String gia) {
		Gia = gia;
	}
	public int getIdSanPham() {
		return idSanPham;
	}
	public void setIdSanPham(int idSanPham) {
		this.idSanPham = idSanPham;
	}
	
	public int getIdNgay() {
		return idNgay;
	}
	public void setIdNgay(int idNgay) {
		this.idNgay = idNgay;
	}
	public GiaTheoNgay(Date ngay, String gia, int idSanPham) {
		super();
		this.ngay = ngay;
		Gia = gia;
		this.idSanPham = idSanPham;
	}
	public GiaTheoNgay() {
		super();
	}
	public GiaTheoNgay(String gia, int idSanPham) {
		super();
		Gia = gia;
		this.idSanPham = idSanPham;
	}
	
}
