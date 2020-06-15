package shopee.bean;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class loaisanpham {
	@Id @GeneratedValue
	private int idLoaiSanPham;
	private String tenLoaiSanPham;
	private String ghiChu;
	
	@OneToMany(mappedBy="loaisanpham",fetch=FetchType.LAZY)
	private Collection <sanpham> sanpham;

	public int getIdLoaiSanPham() {
		return idLoaiSanPham;
	}

	public void setIdLoaiSanPham(int idLoaiSanPham) {
		this.idLoaiSanPham = idLoaiSanPham;
	}

	public String getTenLoaiSanPham() {
		return tenLoaiSanPham;
	}

	public void setTenLoaiSanPham(String tenLoaiSanPham) {
		this.tenLoaiSanPham = tenLoaiSanPham;
	}

	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

	public Collection<sanpham> getSanpham() {
		return sanpham;
	}

	public void setSanpham(Collection<sanpham> sanpham) {
		this.sanpham = sanpham;
	}
	
	
	
}
