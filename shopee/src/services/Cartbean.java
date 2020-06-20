package services;

import java.util.HashMap;

public class Cartbean extends HashMap<String, ProductDTO> {
	public void themSP(ProductDTO sp, int SoLuong) {
		String ma = sp.getSanPham().getMaSP();
		if (this.containsKey(ma)) {
			int soLuongCu = ((ProductDTO) this.get(ma)).getSoLuong();
			((ProductDTO) this.get(ma)).setSoLuong(soLuongCu + SoLuong);
		} else {
			sp.setSoLuong(SoLuong);
			this.put(sp.getSanPham().getMaSP(), sp);
		}
	}

	public void TruSP(ProductDTO sp) {
		String ma = sp.getSanPham().getMaSP();
		
		if (this.containsKey(ma)) {
			int soLuongCu = ((ProductDTO) this.get(ma)).getSoLuong();
			if (soLuongCu != 1) {
				((ProductDTO) this.get(ma)).setSoLuong(soLuongCu - 1);
			}
			
		} else {
			this.put(sp.getSanPham().getMaSP(), sp);
		}
	}

	public boolean xoaSP(sanpham sp) {
		String ma = sp.getMaSP();	
		if (this.containsKey(ma)) {
			this.remove(ma);
			return true;
		}
		return false;
	}
}
