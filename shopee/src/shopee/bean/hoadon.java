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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
public class hoadon {
	@Id @GeneratedValue	
	private int idHoaDon;
	private double tongTien;
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date ngayLap;
	private String ghiChu;
	
	@OneToMany(mappedBy="hoadon",fetch=FetchType.LAZY)
	private Collection <cthd> cthd;
	
	@ManyToOne
	@JoinColumn(name="tenTaiKhoan")
	private taikhoan taikhoan;

	public int getIdHoaDon() {
		return idHoaDon;
	}

	public void setIdHoaDon(int idHoaDon) {
		this.idHoaDon = idHoaDon;
	}

	public double getTongTien() {
		return tongTien;
	}

	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}

	public Date getNgayLap() {
		return ngayLap;
	}

	public void setNgayLap(Date ngayLap) {
		this.ngayLap = ngayLap;
	}

	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

	public Collection<cthd> getCthd() {
		return cthd;
	}

	public void setCthd(Collection<cthd> cthd) {
		this.cthd = cthd;
	}

	public taikhoan getTaikhoan() {
		return taikhoan;
	}

	public void setTaikhoan(taikhoan taikhoan) {
		this.taikhoan = taikhoan;
	}
	
	
}
