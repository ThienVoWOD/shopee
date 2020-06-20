package shopee.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import services.Cartbean;
import services.ProductDTO;
import shopee.bean.*;

@Transactional
@Controller
public class checkoutcontroller {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("thanhtoan")
	public String checkout(ModelMap model) {
		model.addAttribute("check", "ok");
		model.addAttribute("hoadon", new hoadon());
		model.addAttribute("khachhang", new khachhang());
			
		if (accountcontroller.Username.equalsIgnoreCase("")) {
			return "redirect:home/dangnhap.htm";
		}else {
			Session session = factory.getCurrentSession();
			String hql = "FROM khachhang where tenTaiKhoan = '" + accountcontroller.Username + "'";
			Query query = session.createQuery(hql);
			khachhang khachhang = (khachhang) query.uniqueResult();
			try {
				khachhang.getHoVaTen();
				model.addAttribute("khachhang", khachhang);
			} catch (Exception e) {
				model.addAttribute("khachhang", new khachhang());
				model.addAttribute("check", "no");
			}
		}
		return "home/thanhtoan";
	}
	
	@RequestMapping(value = "checkkh", method = RequestMethod.POST)
	public String checkkh(ModelMap model, @ModelAttribute("khachhang") khachhang customer) {
		  
		Session session = factory.getCurrentSession();
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		String hql = "FROM khachhang where tenTaiKhoan = '"+ accountcontroller.Username +"'";
		Query query = session.createQuery(hql);
		khachhang kh = (khachhang) query.uniqueResult();
		
		try {			
			customer.setIdKhachHang(kh.getIdKhachHang());
			try {
				ss.update(customer);
				t.commit();
				return "redirect:/thanhtoan.htm";
			} catch (Exception e) {
				t.rollback();
			} finally {
				ss.close();
			}
		} catch (Exception e) {		
			try {			
				ss.save(customer);
				t.commit();
				return "redirect:/thanhtoan.htm";
			} catch (Exception a) {
				t.rollback();
			} finally {
				ss.close();
			}
		}
		return "home/thanhtoan";

	}
	
	@RequestMapping("hoadon")
	public String hoadon(ModelMap model, HttpSession ss, @ModelAttribute("hoadon") hoadon hd) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			// thêm hóa đơn
			hd.setNgayLap(new Date());
			session.save(hd);
			t.commit();
			// lấy id hóa đơn vừa thêm
			String hql = "SELECT p.idHoaDon FROM hoadon p ORDER BY p.idHoaDon DESC";
			Query query = session.createQuery(hql);
			query.setFirstResult(0);
			query.setMaxResults(1);
			Integer idhd = (Integer) query.uniqueResult();
			// thêm cthd
			
			try {
				Cartbean bean = (Cartbean) ss.getAttribute("shop");
				for (ProductDTO sp : bean.values()) {
					cthd cthd = new cthd();
					cthd.setSoLuong(sp.getSoLuong());
					cthd.setGhiChu("Màu sắc: "+sp.getSanPham().getMauSac()+", Size: "+sp.getSanPham().getSize());
					cthd.setThanhTien(sp.getSanPham().getGia() * sp.getSoLuong());
					hoadon h = new hoadon();
					h.setIdHoaDon(idhd);
					sanpham p = new sanpham();
					String idsanpham = sp.getSanPham().getMaSP().substring(0, sp.getSanPham().getMaSP().indexOf("_"));
					p.setIdSanPham(Integer.parseInt(idsanpham));
					cthd.setHoadon(h);					
					cthd.setSanpham(p);;
					session.save(cthd);
					
				}
				t.commit();
			} catch (Exception e) {
			}
			ss.removeAttribute("shop");
			return "redirect:home/shop.htm";
		} catch (Exception e) {
			t.rollback();
			// model.addAttribute("loi","cập nhật thất bại");
		} finally {
			session.close();
		}
		return "home/thanhtoan";
	}
}
