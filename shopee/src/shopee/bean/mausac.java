package shopee.bean;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class mausac {
	@Id @GeneratedValue
	private int idMauSac;
	private String mau1;
	private String mau2;
	private String mau3;
	private String mau4;
	private String mau5;
	
	@ManyToOne
	@JoinColumn(name="idSanPham")
	private sanpham sanpham;

	public int getIdMauSac() {
		return idMauSac;
	}

	public void setIdMauSac(int idMauSac) {
		this.idMauSac = idMauSac;
	}

	public String getMau1() {
		return mau1;
	}

	public void setMau1(String mau1) {
		this.mau1 = mau1;
	}

	public String getMau2() {
		return mau2;
	}

	public void setMau2(String mau2) {
		this.mau2 = mau2;
	}

	public String getMau3() {
		return mau3;
	}

	public void setMau3(String mau3) {
		this.mau3 = mau3;
	}

	public String getMau4() {
		return mau4;
	}

	public void setMau4(String mau4) {
		this.mau4 = mau4;
	}

	public String getMau5() {
		return mau5;
	}

	public void setMau5(String mau5) {
		this.mau5 = mau5;
	}

	public sanpham getSanpham() {
		return sanpham;
	}

	public void setSanpham(sanpham sanpham) {
		this.sanpham = sanpham;
	}
	
	
}
