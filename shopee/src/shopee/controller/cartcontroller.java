package shopee.controller;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import services.Cartbean;
import services.ProductDTO;
import services.sanpham;


@Controller
public class cartcontroller {
	
	@RequestMapping("addtocart")
	public String addtocart(ModelMap model,HttpSession ss,@ModelAttribute("txtMaSP") String MaSP,@ModelAttribute("txtTenSP") String TenSP,@ModelAttribute("txtGia") double Gia,
			@ModelAttribute("txtHinh") String Hinh, @ModelAttribute("mausac") String MauSac, @ModelAttribute("size") String Size,@ModelAttribute("soluong") int SoLuong) {
		try {
			Cartbean shop = (Cartbean) ss.getAttribute("shop");
			if (shop == null) {
                shop = new Cartbean();
            }
			sanpham s = new sanpham(MaSP+"_"+MauSac+""+Size, TenSP, Gia, Hinh, MauSac, Size);
			ProductDTO sp = new ProductDTO(s);
			shop.themSP(sp,SoLuong);
            ss.setAttribute("shop", shop);
		} catch (Exception e) {
			System.out.println("loi");
		}
		return "redirect:/home/ctsp.htm?idsp="+MaSP+"";
	}
	
	@RequestMapping("deletetocart")
	public String deletetocart(ModelMap model,HttpSession ss, @ModelAttribute("idsp") String maSP) {
		try {
			System.out.println(maSP);
			Cartbean shop = (Cartbean) ss.getAttribute("shop");
			sanpham s = new sanpham(maSP);
            shop.xoaSP(s);
            ss.setAttribute("shop", shop);
		} catch (Exception e) {
			System.out.println("loi");
		}
		return "redirect:/home/giohang.htm";
	}
	
	@RequestMapping("add1tocart")
	public String add1tocart(ModelMap model,HttpSession ss,@ModelAttribute("txtMaSP") String MaSP,@ModelAttribute("txtTenSP") String TenSP,@ModelAttribute("txtGia") double Gia,
			@ModelAttribute("txtHinh") String Hinh, @ModelAttribute("mausac") String MauSac, @ModelAttribute("size") String Size) {
		try {
			Cartbean shop = (Cartbean) ss.getAttribute("shop");
			if (shop == null) {
                shop = new Cartbean();
            }
			sanpham s = new sanpham(MaSP, TenSP, Gia, Hinh, MauSac, Size);
			ProductDTO sp = new ProductDTO(s);
			shop.themSP(sp, 1);
            ss.setAttribute("shop", shop);
		} catch (Exception e) {
			System.out.println("loi");
		}
		return "redirect:/home/giohang.htm";
	}
	
	@RequestMapping("delete1tocart")
	public String delete1tocart(ModelMap model,HttpSession ss,@ModelAttribute("txtMaSP") String MaSP,@ModelAttribute("txtTenSP") String TenSP,@ModelAttribute("txtGia") double Gia,
			@ModelAttribute("txtHinh") String Hinh, @ModelAttribute("mausac") String MauSac, @ModelAttribute("size") String Size) {
		try {
			Cartbean shop = (Cartbean) ss.getAttribute("shop");
			if (shop == null) {
                shop = new Cartbean();
            }
			sanpham s = new sanpham(MaSP, TenSP, Gia, Hinh, MauSac, Size);
			ProductDTO sp = new ProductDTO(s);
			shop.TruSP(sp);
            ss.setAttribute("shop", shop);
		} catch (Exception e) {
			System.out.println("loi");
		}
		return "redirect:/home/giohang.htm";
	}
}
