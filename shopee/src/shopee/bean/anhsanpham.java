package shopee.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class anhsanpham {
	@Id @GeneratedValue
	private int idAnhSanPham;
	private String anh1;
	private String anh2;
	private String anh3;
	
	@ManyToOne
	@JoinColumn(name="idSanPham")
	private sanpham sanpham;

	public int getIdAnhSanPham() {
		return idAnhSanPham;
	}

	public void setIdAnhSanPham(int idAnhSanPham) {
		this.idAnhSanPham = idAnhSanPham;
	}

	public String getAnh1() {
		return anh1;
	}

	public void setAnh1(String anh1) {
		this.anh1 = anh1;
	}

	public String getAnh2() {
		return anh2;
	}

	public void setAnh2(String anh2) {
		this.anh2 = anh2;
	}

	public String getAnh3() {
		return anh3;
	}

	public void setAnh3(String anh3) {
		this.anh3 = anh3;
	}

	public sanpham getSanpham() {
		return sanpham;
	}

	public void setSanpham(sanpham sanpham) {
		this.sanpham = sanpham;
	}

	
}
