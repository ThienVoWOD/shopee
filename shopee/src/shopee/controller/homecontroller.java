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
	public String shop(ModelMap model,@ModelAttribute("TenLoaiSP") String TenLoaiSP,@ModelAttribute("idlsp") String idlsp) {
		
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
		
		if (idlsp.isEmpty()) {
			String hql1 = "From sanpham where loaisanpham = " + loaisanpham.get(0).getIdLoaiSanPham()
					+ " and soLuong > 0 ";
			Query query1 = session.createQuery(hql1);
			List<sanpham> dsshop = query1.list();
			model.addAttribute("dsshop", dsshop);
			model.addAttribute("iidlsp", loaisanpham.get(0).getIdLoaiSanPham());
		} else {
			String hql1 = "From sanpham where loaisanpham = " + idlsp + " and soLuong > 0 ";
			Query query1 = session.createQuery(hql1);
			List<sanpham> dsshop = query1.list();
			model.addAttribute("iidlsp", idlsp);
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
		
		model.addAttribute("sp", sanpham);
		model.addAttribute("ms", mausac);
		model.addAttribute("kc", kichco);
		model.addAttribute("dsshop", dsshop);
		model.addAttribute("TenLoaiSP", TenLoaiSanPham);
		return "home/ctsp";
	}
}
