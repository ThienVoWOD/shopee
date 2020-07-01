package shopee.controller;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import shopee.bean.*;

@Transactional
@Controller
@RequestMapping("/home/")
public class homecontroller {
	@Autowired
	SessionFactory factory;
	String TenLoaiSanPham = "No";
	
	@RequestMapping("giohang")
	public String giohang(ModelMap model) {
	//	model.addAttribute("taikhoan", new taikhoan());
		return "home/giohang";
	}
	
	@RequestMapping("dangky")
	public String dangky(ModelMap model) {
		model.addAttribute("taikhoan", new taikhoan());
		return "home/dangky";
	}
	
	@RequestMapping("dangnhap")
	public String dangnhap(ModelMap model) {
		model.addAttribute("taikhoan", new taikhoan());
		return "home/dangnhap";
	}
	
	
	
	@RequestMapping("shop")
	public String shop(ModelMap model,@ModelAttribute("TenLoaiSP") String TenLoaiSP,@ModelAttribute("idlsp") String idlsp,
			@ModelAttribute("page") String page) {
		
		if (TenLoaiSanPham.equals("No")) {
			if (TenLoaiSP.isEmpty()) {
				TenLoaiSanPham = "Thời Trang Nam";
			}
		}else {
			if (!TenLoaiSP.isEmpty()) {
				TenLoaiSanPham=TenLoaiSP;
			}			
		}
		Session session = factory.getCurrentSession();
		String hql = "From loaisanpham where ghiChu = '"+TenLoaiSanPham+"'";
		Query query = session.createQuery(hql);
		List<loaisanpham> loaisanpham = query.list();
		model.addAttribute("loaisanpham", loaisanpham);
		model.addAttribute("TenLoaiSP", TenLoaiSanPham);
		int trang = 1;
		if (idlsp.isEmpty()) {
			try {
				if (!page.isEmpty()) {
					trang = Integer.parseInt(page);
				}
			} catch (Exception e) {
				trang = 1;
			}

			String hql1 = "From sanpham where loaisanpham = " + loaisanpham.get(0).getIdLoaiSanPham()
					+ " and soLuong > 0 ";
			Query query1 = session.createQuery(hql1);
			int SoSP = query1.list().size();
			int SoTrang = 0;
			query1.setFirstResult(20 * trang - 20);
			query1.setMaxResults(20 * trang);
			List<sanpham> dsshop = query1.list();
			if (SoSP % 20 == 0) {
				SoTrang = SoSP / 20;
			} else {
				SoTrang = SoSP / 20 + 1;
			}

			model.addAttribute("trang", trang);
			model.addAttribute("dsshop", dsshop);
			model.addAttribute("SoTrang", SoTrang);
			model.addAttribute("iidlsp", loaisanpham.get(0).getIdLoaiSanPham());
		} else {
			try {
				if (!page.isEmpty()) {
					trang = Integer.parseInt(page);
				}
			} catch (Exception e) {
				trang = 1;
			}
			String hql1 = "From sanpham where loaisanpham = " + idlsp + " and soLuong > 0 ";
			Query query1 = session.createQuery(hql1);
			int SoSP = query1.list().size();	
			query1.setFirstResult(20 * trang - 20);
			query1.setMaxResults(20);
			List<sanpham> dsshop = query1.list();
			
			int SoTrang = 0;
			if (SoSP % 20 == 0) {
				SoTrang = SoSP / 20;
			} else {
				SoTrang = SoSP / 20 + 1;
			}

			model.addAttribute("trang", trang);
			model.addAttribute("iidlsp", idlsp);
			model.addAttribute("SoTrang", SoTrang);
			model.addAttribute("dsshop", dsshop);
		}
		return "home/shop";
	}
	@RequestMapping("ctsp")
	public String ctsp(ModelMap model,@ModelAttribute("idsp") String idsp) {
		Session session = factory.getCurrentSession();
		String hql = "FROM sanpham where idSanPham = " + idsp + "";
		Query query = session.createQuery(hql);
		sanpham sanpham = (sanpham) query.uniqueResult();
		
		String hql1 = "FROM sanpham where loaisanpham = " + sanpham.getLoaisanpham().getIdLoaiSanPham() + "";
		Query query1 = session.createQuery(hql1);
		query1.setMaxResults(10);
		List<sanpham> dsshop = query1.list();
		
		String hql2 = "FROM kichco where idSanPham = " + idsp + "";
		Query query2 = session.createQuery(hql2);
		kichco kichco = (kichco) query2.uniqueResult();
		
		String hql3 = "FROM mausac where idSanPham = " + idsp + "";
		Query query3 = session.createQuery(hql3);
		mausac mausac = (mausac) query3.uniqueResult();
		
		String hql4 = "FROM anhsanpham where idSanPham = " + idsp + "";
		Query query4 = session.createQuery(hql4);
		anhsanpham anhsanpham = (anhsanpham) query4.uniqueResult();
		
		model.addAttribute("asp", anhsanpham);
		model.addAttribute("sp", sanpham);
		model.addAttribute("ms", mausac);
		model.addAttribute("kc", kichco);
		model.addAttribute("dsshop", dsshop);
		model.addAttribute("TenLoaiSP", TenLoaiSanPham);
		return "home/ctsp";
	}
	
	@RequestMapping("search")
	public String TimKiemSanPham(ModelMap model,@ModelAttribute("keyword") String keyword, @ModelAttribute("page") String page) {
		
		int trang = 1;
		try {
			if (!page.isEmpty()) {
				trang = Integer.parseInt(page);
			}
		} catch (Exception e) {
			trang = 1;
		}
		
		Session session = factory.getCurrentSession();
		String hql1 = "FROM sanpham where tenSanPham like '%"+keyword+"%'";
		Query query1 = session.createQuery(hql1);		
		int SoSP = query1.list().size();
		int SoTrang = 0;
		if (SoSP % 20 == 0) {
			SoTrang = SoSP / 20;
		} else {
			SoTrang = SoSP / 20 + 1;
		}
		
		query1.setFirstResult(20 * trang - 20);
		query1.setMaxResults(20);
		List<sanpham> dsshop = query1.list();
		model.addAttribute("dsshop", dsshop);
		model.addAttribute("trang", trang);
		model.addAttribute("keyword", keyword);
		model.addAttribute("SoTrang", SoTrang);
		
		return "home/shop";
	}
	
	@RequestMapping("timTheoGia")
	public String TimTheoGia(ModelMap model,@ModelAttribute("min") String min,@ModelAttribute("max") String max, @ModelAttribute("page") String page) {
		
		int trang = 1;
		try {
			if (!page.isEmpty()) {
				trang = Integer.parseInt(page);
			}
		} catch (Exception e) {
			trang = 1;
		}
		
		Session session = factory.getCurrentSession();
		String hql1 = "FROM sanpham where giaTien between "+min+" and "+max+"";
		Query query1 = session.createQuery(hql1);		
		int SoSP = query1.list().size();
		int SoTrang = 0;
		if (SoSP % 20 == 0) {
			SoTrang = SoSP / 20;
		} else {
			SoTrang = SoSP / 20 + 1;
		}
		
		query1.setFirstResult(20 * trang - 20);
		query1.setMaxResults(20);
		List<sanpham> dsshop = query1.list();
		model.addAttribute("dsshop", dsshop);
		model.addAttribute("trang", trang);
		model.addAttribute("min", min);
		model.addAttribute("max", max);
		model.addAttribute("SoTrang", SoTrang);
		
		return "home/shop";
	}
}
