package services;

import java.io.Serializable;



public class ProductDTO implements Serializable{
	private sanpham sanpham;
    private int soLuong;
    
    public ProductDTO() {}
    public ProductDTO(sanpham sanpham) {
    	this.sanpham = sanpham;
    	this.soLuong = 1;
    	
    }

	public sanpham getSanPham() {
		return sanpham;
	}

	public void setSanPham(sanpham sanpham) {
		sanpham = sanpham;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	
    
}
