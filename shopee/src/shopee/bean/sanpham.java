package shopee.bean;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class sanpham {
	@Id @GeneratedValue
	private int idSanPham;
	private String tenSanPham;
	private double giaTien;
	private int soLuong;
	private String hinhAnh;
	private Date ngayDang;
	private String mauSac;
	private String kichCo;
	private String motaSanPham;
	
	@ManyToOne
	@JoinColumn(name="idLoaiSanPham")
	private loaisanpham loaisanpham;

	public int getIdSanPham() {
		return idSanPham;
	}

	public void setIdSanPham(int idSanPham) {
		this.idSanPham = idSanPham;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

	public double getGiaTien() {
		return giaTien;
	}

	public void setGiaTien(double giaTien) {
		this.giaTien = giaTien;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public String getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

	public Date getNgayDang() {
		return ngayDang;
	}

	public void setNgayDang(Date ngayDang) {
		this.ngayDang = ngayDang;
	}

	public String getMauSac() {
		return mauSac;
	}

	public void setMauSac(String mauSac) {
		this.mauSac = mauSac;
	}

	public String getKichCo() {
		return kichCo;
	}

	public void setKichCo(String kichCo) {
		this.kichCo = kichCo;
	}

	public String getMotaSanPham() {
		return motaSanPham;
	}

	public void setMotaSanPham(String motaSanPham) {
		this.motaSanPham = motaSanPham;
	}

	public loaisanpham getLoaisanpham() {
		return loaisanpham;
	}

	public void setLoaisanpham(loaisanpham loaisanpham) {
		this.loaisanpham = loaisanpham;
	}
	
	
	
}
