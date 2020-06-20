package shopee.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class kichco {
	@Id @GeneratedValue
	private int idKichCo;
	private String size1;
	private String size2;
	private String size3;
	private String size4;
	private String size5;
	
	@ManyToOne
	@JoinColumn(name="idSanPham")
	private sanpham sanpham;

	public int getIdKichCo() {
		return idKichCo;
	}

	public void setIdKichCo(int idKichCo) {
		this.idKichCo = idKichCo;
	}

	public String getSize1() {
		return size1;
	}

	public void setSize1(String size1) {
		this.size1 = size1;
	}

	public String getSize2() {
		return size2;
	}

	public void setSize2(String size2) {
		this.size2 = size2;
	}

	public String getSize3() {
		return size3;
	}

	public void setSize3(String size3) {
		this.size3 = size3;
	}

	public String getSize4() {
		return size4;
	}

	public void setSize4(String size4) {
		this.size4 = size4;
	}

	public String getSize5() {
		return size5;
	}

	public void setSize5(String size5) {
		this.size5 = size5;
	}

	public sanpham getSanpham() {
		return sanpham;
	}

	public void setSanpham(sanpham sanpham) {
		this.sanpham = sanpham;
	}
	
	
}
