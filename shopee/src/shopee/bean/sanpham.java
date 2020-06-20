package shopee.bean;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;


@Entity
public class sanpham {
	@Id @GeneratedValue
	private int idSanPham;
	private String tenSanPham;
	private double giaTien;
	private int soLuong;
	private String hinhAnh;
	private Date ngayDang;
	private String motaSanPham;
	
	@OneToMany(mappedBy="sanpham",fetch=FetchType.LAZY)
	private Collection <cthd> cthd;
	
	public Collection<cthd> getCthd() {
		return cthd;
	}

	public void setCthd(Collection<cthd> cthd) {
		this.cthd = cthd;
	}

	public Collection<mausac> getMausac() {
		return mausac;
	}

	public void setMausac(Collection<mausac> mausac) {
		this.mausac = mausac;
	}

	public Collection<kichco> getKichco() {
		return kichco;
	}

	public void setKichco(Collection<kichco> kichco) {
		this.kichco = kichco;
	}

	@ManyToOne
	@JoinColumn(name="idLoaiSanPham")
	private loaisanpham loaisanpham;
	
	@OneToMany(mappedBy="sanpham",fetch=FetchType.LAZY)
	private Collection <mausac> mausac;
	
	@OneToMany(mappedBy="sanpham",fetch=FetchType.LAZY)
	private Collection <kichco> kichco;

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
