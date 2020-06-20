package services;

import java.io.Serializable;

public class sanpham implements Serializable{
	private String maSP;
    private String tenSP;
    private double gia;
    private String hinh;
    private String mauSac;
    private String size;
    
	public sanpham(String maSP, String tenSP, double gia, String hinh, String mauSac, String size) {
		super();
		this.maSP = maSP;
		this.tenSP = tenSP;
		this.gia = gia;
		this.hinh = hinh;
		this.size = size;
		this.mauSac = mauSac;
	}
	public String getMaSP() {
		return maSP;
	}
	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}
	public String getTenSP() {
		return tenSP;
	}
	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}
	public double getGia() {
		return gia;
	}
	public void setGia(double gia) {
		this.gia = gia;
	}
	public String getHinh() {
		return hinh;
	}
	public void setHinh(String hinh) {
		this.hinh = hinh;
	}
    
    
    public String getMauSac() {
		return mauSac;
	}

	public void setMauSac(String mauSac) {
		this.mauSac = mauSac;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public sanpham(String maSP) {
        this.maSP = maSP;
    }
}
