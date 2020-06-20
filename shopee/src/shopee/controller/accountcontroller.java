package shopee.controller;

import java.util.List;

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

import shopee.bean.*;

import services.md5;

@Transactional
@Controller
public class accountcontroller {
	@Autowired
	SessionFactory factory;
	public static String Username = "";
	
	@RequestMapping(value = "dangky", method = RequestMethod.POST)
	public String register(ModelMap model, @ModelAttribute("taikhoan") taikhoan user) {
		boolean run = true;
		if (user.getMatkhau().equalsIgnoreCase("") || user.getEmail().equalsIgnoreCase("") || user.getTenTaiKhoan().equalsIgnoreCase("")) {
			model.addAttribute("error", "Vui lòng nhập đầy đủ thông tin");
			run = false;
		}
		
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		String hql = "From taikhoan";
		Query query = session.createQuery(hql);
		List<taikhoan> taikhoan = query.list();

		try {
			for (int i = 0; i < taikhoan.size(); i++) {
				if (user.getEmail().equals(taikhoan.get(i).getEmail())) {
					model.addAttribute("error", "Email đã có người sử dụng");
					run = false;
				} else if (user.getTenTaiKhoan().equals(taikhoan.get(i).getTenTaiKhoan())) {
					model.addAttribute("error", "Tài khoản đã có người sử dụng");
					run = false;
				}
			}
			if (run) {
				user.setQuyen("Customer");
				user.setMatkhau(md5.getMd5(user.getMatkhau()));
				session.save(user);
				t.commit();
				return "redirect:/home/dangnhap.htm";
			}			
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		return "home/dangky";
	}
	
	@RequestMapping("dangnhap")
	public String logins(ModelMap model, @ModelAttribute("taikhoan") taikhoan taikhoan, HttpSession ss) {
		if (taikhoan.getEmail().equalsIgnoreCase("") || taikhoan.getMatkhau().equalsIgnoreCase("")) {
			model.addAttribute("error", "Vui lòng nhập đầy đủ thông tin");
		}

		Session session = factory.getCurrentSession();
		String hql = "From taikhoan where email = '" + taikhoan.getEmail() + "'";
		Query query = session.createQuery(hql);
		try {
			taikhoan user = (taikhoan) query.uniqueResult();
			if (user.getMatkhau().equals(md5.getMd5(taikhoan.getMatkhau()))) {
				ss.setAttribute("TaiKhoan", user.getTenTaiKhoan());
				ss.setAttribute("role", user.getQuyen());
				Username = user.getTenTaiKhoan();
				return "redirect:home/shop.htm";				
//				Role = user.getRole();
//				if (user.getRole().equals("admin")) {
//					return "redirect:admin/index.htm";
//				} else {
//					return "redirect:home/index.htm";
//				}

			} else {
				model.addAttribute("error", "Mật khẩu không đúng");
			}
		} catch (Exception e) {
			model.addAttribute("error", "Tài khoản không đúng");
		}
		return "home/dangnhap";
	}
	
	@RequestMapping("dangxuat")
	public String logout(ModelMap model, HttpSession ss) {
		ss.removeAttribute("TaiKhoan");
		ss.removeAttribute("role");
		Username ="";
		return "redirect:home/shop.htm";
	}
}
