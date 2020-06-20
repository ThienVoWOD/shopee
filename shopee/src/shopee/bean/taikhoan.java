package shopee.bean;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;


@Entity
public class taikhoan {
	@Id
	private String tenTaiKhoan;
	private String matkhau;
	private String email;
	private String quyen;
	private String ghiChu;
	
	@OneToMany(mappedBy="taikhoan",fetch=FetchType.LAZY)
	private Collection <hoadon> hoadon;
	
	public Collection<hoadon> getHoadon() {
		return hoadon;
	}
	public void setHoadon(Collection<hoadon> hoadon) {
		this.hoadon = hoadon;
	}
	public String getTenTaiKhoan() {
		return tenTaiKhoan;
	}
	public void setTenTaiKhoan(String tenTaiKhoan) {
		this.tenTaiKhoan = tenTaiKhoan;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQuyen() {
		return quyen;
	}
	public void setQuyen(String quyen) {
		this.quyen = quyen;
	}
	public String getGhiChu() {
		return ghiChu;
	}
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}
	
	
	
}
