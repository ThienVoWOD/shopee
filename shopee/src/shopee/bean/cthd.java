package shopee.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class cthd {
	@Id @GeneratedValue	
	private int idcthd;
	private int soLuong;
	private double thanhTien;
	private String ghiChu;
	
	@ManyToOne
	@JoinColumn(name="idHoaDon")
	private hoadon hoadon;
	
	@ManyToOne
	@JoinColumn(name="idSanPham")
	private sanpham sanpham;

	public int getIdcthd() {
		return idcthd;
	}

	public void setIdcthd(int idcthd) {
		this.idcthd = idcthd;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public double getThanhTien() {
		return thanhTien;
	}

	public void setThanhTien(double thanhTien) {
		this.thanhTien = thanhTien;
	}

	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

	public hoadon getHoadon() {
		return hoadon;
	}

	public void setHoadon(hoadon hoadon) {
		this.hoadon = hoadon;
	}

	public sanpham getSanpham() {
		return sanpham;
	}

	public void setSanpham(sanpham sanpham) {
		this.sanpham = sanpham;
	}
	
	
}
