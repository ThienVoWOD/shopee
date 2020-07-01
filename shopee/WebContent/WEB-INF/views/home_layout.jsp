<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>shopee</title>
<base href="${pageContext.servletContext.contextPath}/">
<%@include file="/includes/css.jsp"%>
</head>
<body class="product-template-default single single-product postid-338 theme-flatsome woocommerce woocommerce-page woocommerce-no-js yith-wcan-pro woo-variation-swatches woo-variation-swatches-theme-flatsome-child woo-variation-swatches-theme-child-flatsome woo-variation-swatches-style-squared woo-variation-swatches-attribute-behavior-blur woo-variation-swatches-tooltip-disabled woo-variation-swatches-stylesheet-enabled lightbox nav-dropdown-has-arrow">
	
	<a class="skip-link screen-reader-text" href="#main">Skip to content</a>
<div id="wrapper">
	<header id="header" class="header ">
		<div class="header-wrapper">
			<div id="top-bar" class="header-top hide-for-sticky nav-dark hide-for-medium">
				<div class="flex-row container">
					<div class="flex-col hide-for-medium flex-left">
						<ul class="nav nav-left medium-nav-center nav-small  nav-divided">
							<li id="menu-item-345" class="menu-item menu-item-type-custom menu-item-object-custom  menu-item-345"><a href="#" data-open="#update" class="nav-top-link">Kênh Người Bán</a></li>
							<li id="menu-item-346" class="menu-item menu-item-type-custom menu-item-object-custom  menu-item-346"><a href="#" data-open="#update" class="nav-top-link">Tải ứng dụng</a></li>
							<li id="menu-item-379" class="menu-item menu-item-type-post_type menu-item-object-page  menu-item-379"><a href="#" data-open="#update" class="nav-top-link">Kết nối</a></li>
         
						</ul>
					</div><!-- flex-col left -->

					<div class="flex-col hide-for-medium flex-center">
						<ul class="nav nav-center nav-small  nav-divided">
						</ul>
					</div><!-- center -->

					<div class="flex-col hide-for-medium flex-right">
						<ul class="nav top-bar-nav nav-right nav-small nav-divided">
						<i class='fas fa-user-circle' style='font-size:20px; color: white'></i>
						<c:if test="${empty TaiKhoan}">
							<li class="">						
								<a href="home/dangnhap.htm">
									<span>Đăng nhập |</span>
								</a><!-- .account-login-link --> 
								<a href="home/dangky.htm">
									<span>Đăng ký</span>
								</a><!-- .account-login-link -->
							</li>
							</c:if>
							<c:if test="${not empty TaiKhoan}">
								<li class="has-dropdown">						
									<a style="font-size: 16px"><span>${TaiKhoan }</span></a>
									<ul class="nav-dropdown nav-dropdown-default">
										<li><a href="dangxuat.htm">Đăng xuất</a></li>
										<li><a href="thanhtoan.htm">Thanh toán</a></li>
									</ul>
								</li>
							</c:if>
					</ul>
				</div><!-- .flex-col right -->


			</div><!-- .flex-row -->
		</div><!-- #header-top -->
		<div id="masthead" class="header-main hide-for-sticky nav-dark">
			<div class="header-inner flex-row container logo-left medium-logo-center" role="navigation">

				<!-- Logo -->
				<div id="logo" class="flex-col logo">
					<!-- Header logo -->
					<a href="home/shop.htm" title="shopee" rel="home">
						<img width="156" height="85" src="#" class="header_logo header-logo" alt="shopee"/><img  width="156" height="85" src="images/logo.png" class="header-logo-dark" alt="Mẫu giao diện web giống shopee 99%"/></a>
					</div>

					<!-- Mobile Left Elements -->
					<div class="flex-col show-for-medium flex-left">
						<ul class="mobile-nav nav nav-left ">
							<li class="nav-icon has-icon">
								<a href="#" data-open="#main-menu" data-pos="left" data-bg="main-menu-overlay" data-color="" class="is-small" aria-label="Menu" aria-controls="main-menu" aria-expanded="false">

									<i class="icon-menu" ></i>
								</a>
							</li>            
						</ul>
					</div>

					<!-- Left Elements -->
					<div class="flex-col hide-for-medium flex-left
					flex-grow">
					<ul class="header-nav header-nav-main nav nav-left  nav-uppercase" >
						<li class="header-search-form search-form html relative has-icon">
							<div class="header-search-form-wrapper">
								<div class="searchform-wrapper ux-search-box relative is-normal">
									<form method="post" class="searchform" action="home/search.htm">
										<div class="flex-row relative">
											<div class="flex-col flex-grow">
												<label class="screen-reader-text" for="woocommerce-product-search-field-0">Tìm kiếm:</label>
												<input type="search" class="search-field mb-0" placeholder="Tìm tên sản phẩm" name="keyword" />
											</div><!-- .flex-col -->
											<div class="flex-col">
												<button type="submit" value="Tìm kiếm" class="ux-search-submit submit-button secondary button icon mb-0">
													<i class='fab fa-sistrix' style='font-size:24px'></i>
												</button>
											</div><!-- .flex-col -->
										</div><!-- .flex-row -->
										<div class="live-search-results text-left z-top"></div>
									</form>
								</div>
							</div>
						</li>
						<li class="menu-item menu-item-type-taxonomy menu-item-object-product_cat"><a href="home/shop.htm?TenLoaiSP=Thời Trang Nam" class="nav-top-link">Thời Trang Nam</a></li>
						<li class="menu-item menu-item-type-taxonomy menu-item-object-product_cat"><a href="home/shop.htm?TenLoaiSP=Thời Trang Nữ" class="nav-top-link">Thời Trang Nữ</a></li>
					</ul>
				</div>

				<!-- Right Elements -->
				<div class="flex-col hide-for-medium flex-right">
					<ul class="header-nav header-nav-main nav nav-right  nav-uppercase">
						<li class="cart-item has-icon has-dropdown">
							<a href="home/giohang.htm" title="Giỏ hàng" class="header-cart-link is-small">
								<span class="image-icon header-cart-icon" data-icon-label="0">
									<img class="cart-img-icon" alt="Giỏ hàng" src="images/cart.png"/>
								</span><!-- .cart-img-inner -->
							</a>
							
							<!-- <ul class="nav-dropdown nav-dropdown-default">
								<li class="html widget_shopping_cart">
									<div class="widget_shopping_cart_content">
										<p class="woocommerce-mini-cart__empty-message">Chưa có sản phẩm trong giỏ hàng.</p>
									</div>
								</li>
							</ul> -->
						</li>
					</ul>
				</div>

				<!-- Mobile Right Elements -->
				<div class="flex-col show-for-medium flex-right">
					<ul class="mobile-nav nav nav-right ">
						<li class="cart-item has-icon">

							<a href="#" class="header-cart-link off-canvas-toggle nav-top-link is-small" data-open="#cart-popup" data-class="off-canvas-cart" title="Giỏ hàng" data-pos="right">

								<span class="image-icon header-cart-icon" data-icon-label="0">
									<img class="cart-img-icon" alt="Giỏ hàng" src="images/cart.png"/>
								</span><!-- .cart-img-inner -->
							</a>


							<!-- Cart Sidebar Popup -->
							<div id="cart-popup" class="mfp-hide widget_shopping_cart">
								<div class="cart-popup-inner inner-padding">
									<div class="cart-popup-title text-center">
										<h4 class="uppercase">Giỏ hàng</h4>
										<div class="is-divider"></div>
									</div>
									<div class="widget_shopping_cart_content">
										<p class="woocommerce-mini-cart__empty-message">Chưa có sản phẩm trong giỏ hàng.</p>
									</div>
									<div class="cart-sidebar-content relative"></div> 
								</div>
							</div>

						</li>
					</ul>
				</div>

			</div><!-- .header-inner -->

		</div><!-- .header-main -->
		<div class="header-bg-container fill">
			<div class="header-bg-image fill"></div>
			<div class="header-bg-color fill"></div>
		</div><!-- .header-bg-container -->		
	</div><!-- header-wrapper-->
</header>
	
		<!--    ---------------------------------------------------------------------------------------------------   -->
		<jsp:include page="${param.view}" />
		<!--    ---------------------------------------------------------------------------------------------------   -->
		
		<footer id="footer" class="footer-wrapper">

		<section class="section info-footer hide-for-small" id="section_2054117659">
		<div class="bg section-bg fill bg-fill  bg-loaded" >
		</div><!-- .section-bg -->

		<div class="section-content relative">
			

<div class="row"  id="row-2102211745">

<div class="col medium-3 small-6 large-3"  ><div class="col-inner"  >

<p><strong>CHĂM SÓC KHÁCH HÀNG</strong></p>
<ul>
<li><a href="#">Trung Tâm Trợ Giúp</a></li>
<li><a href="#">Shopee Blog</a></li>
<li><a href="#">Shopee Mall</a></li>
<li><a href="#">Hướng Dẫn Mua Hàng</a></li>
<li><a href="#">Hướng Dẫn Bán Hàng</a></li>
<li><a href="#">Thanh Toán</a></li>
<li><a href="#">Shopee Xu</a></li>
<li><a href="#">Vận Chuyển</a></li>
<li><a href="#">Trả Hàng &amp; Hoàn Tiền</a></li>
<li><a href="#">Chăm Sóc Khách Hàng</a></li>
<li><a href="#">Chính Sách Bảo Hành</a></li>
</ul>

</div></div>
<div class="col medium-2 small-6 large-2"  ><div class="col-inner"  >

<p><strong>VỀ SHOPEE</strong></p>
<ul>
<li><a href="#">Giới Thiệu Về Shopee Việt Nam</a></li>
<li><a href="#">Tuyển Dụng</a></li>
<li><a href="#">Điều Khoản Shopee</a></li>
<li><a href="#">Chính Sách Bảo Mật</a></li>
<li><a href="#">Chính Hãng</a></li>
<li><a href="#">Kênh Người Bán</a></li>
<li><a href="#">Flash Sales</a></li>
<li><a href="#">Chương Trình Tiếp Thị Liên Kết Shopee</a></li>
</ul>

</div></div>
<div class="col medium-2 small-6 large-2"  ><div class="col-inner"  >

<p><strong>THANH TOÁN</strong></p>
<p> <img class="alignnone size-medium wp-image-185" src="images/pay.png" alt="" width="194" height="109" /></p>
<p><strong>ĐƠN VỊ VẬN CHUYỂN</strong></p>
<p><img class="alignnone size-full wp-image-184" src="images/ship.png" alt="" width="203" height="122" /></p>

</div></div>
<div class="col medium-2 small-6 large-2"  ><div class="col-inner"  >

<p><strong>THEO DÕI CHÚNG TÔI TRÊN</strong></p>
<div class="social-icons follow-icons" style="font-size:93%"><a href="#" target="_blank" data-label="Facebook"  rel="noopener noreferrer nofollow" class="icon button circle is-outline facebook tooltip" title="Follow on Facebook"><i class="icon-facebook" ></i></a><a href="#" target="_blank" rel="noopener noreferrer nofollow" data-label="Instagram" class="icon button circle is-outline  instagram tooltip" title="Follow on Instagram"><i class="icon-instagram" ></i></a><a href="#" target="_blank" rel="noopener noreferrer nofollow" data-label="LinkedIn" class="icon button circle is-outline  linkedin tooltip" title="Follow on LinkedIn"><i class="icon-linkedin" ></i></a></div>


</div></div>
<div class="col medium-3 small-6 large-3"  ><div class="col-inner"  >

<p><strong>TẢI ỨNG DỤNG SHOPEE NGAY THÔI</strong></p>
<p><img class="alignnone size-full wp-image-187" src="images/download.png" alt="" width="201" height="95" /></p>

</div></div>

</div>
<div class="row row-collapse align-middle coppyright"  id="row-1749806397">

<div class="col medium-4 small-12 large-4"  ><div class="col-inner"  >

<p>© 2020 Shopee. Tất cả các quyền được bảo lưu.</p>

</div></div>
<div class="col quocgia medium-8 small-12 large-8"  ><div class="col-inner text-right"  >

<p>Quốc gia &amp; Khu vực:</p>
<ul>
<li><a href="#">Singapore</a></li>
<li><a href="#">Indonesia</a></li>
<li><a href="#">Đài Loan</a></li>
<li><a href="#">Thái Lan</a></li>
<li><a href="#">Malaysia </a></li>
<li><a href="#">Việt Nam</a></li>
<li><a href="#">Philippines</a></li>
<li><a href="#">Brazil</a></li>
</ul>

</div></div>

</div>

		</div><!-- .section-content -->

		
<style scope="scope">
#section_2054117659 {
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: rgb(251, 251, 251);
}
</style>
	</section>
	
	<section class="section bottom" id="section_231996060">
		<div class="bg section-bg fill bg-fill  bg-loaded" >
			</div><!-- .section-bg -->

		<div class="section-content relative">			
			<div class="row"  id="row-1984232832">

<div class="col small-12 large-12"  ><div class="col-inner text-center"  >

<ul>
<li style="text-align: center;"><a href="#">CHÍNH SÁCH BẢO MẬT</a></li>
<li style="text-align: center;"><a href="#">QUY CHẾ HOẠT ĐỘNG</a></li>
<li style="text-align: center;"><a href="#">CHÍNH SÁCH VẬN CHUYỂN</a></li>
<li style="text-align: center;"><a href="#">CHÍNH SÁCH TRẢ HÀNG VÀ HOÀN TIỀN</a></li>
</ul>
<p style="text-align: center;"><img class="alignnonewp-image-190" src="images/dangki.png" alt="" width="294" height="53" /></p>
<div style="text-align: center;">Địa chỉ: Tầng 28, Tòa nhà trung tâm Lotte Hà Nội, 54 Liễu Giai, phường Cống Vị, Quận Ba Đình, Hà Nội. Tổng đài hỗ trợ: 19001221 - Email: cskh@hotro.shopee.vn</div>
<divstyle="text-align: center;">Mã số doanh nghiệp: 0106773786 do Sở Kế hoạch &amp; Đầu tư TP Hà Nội cấp lần đầu ngày 10/02/2015
</div>
	<div style="text-align: center;">© 2015 - Bản quyền thuộc về Công ty TNHH Shopee</div>

</div></div>

</div>

		</div><!-- .section-content -->

		
	<style scope="scope">
	#section_231996060 {
	  padding-top: 30px;
	  padding-bottom: 30px;
	  background-color: rgb(245, 245, 245);
	}
	</style>
</section>
	
<div class="absolute-footer dark medium-text-center text-center">
  <div class="container clearfix">
    <div class="footer-primary pull-left">
        <div class="copyright-footer">
        	Bản quyền thuộc về websieukhung.com      
    	</div>
    </div><!-- .left -->
  </div><!-- .container -->
</div><!-- .absolute-footer -->
<a href="#top" class="back-to-top button icon invert plain fixed bottom z-1 is-outline hide-for-medium circle" id="top-link"><i class="icon-angle-up" ></i></a>

</footer><!-- .footer-wrapper -->

</div><!-- #wrapper -->

<!-- Mobile Sidebar -->
<div id="main-menu" class="mobile-sidebar no-scrollbar mfp-hide">
    <div class="sidebar-menu no-scrollbar ">
        <ul class="nav nav-sidebar  nav-vertical nav-uppercase">
              <li class="header-search-form search-form html relative has-icon">
	<div class="header-search-form-wrapper">
		<div class="searchform-wrapper ux-search-box relative is-normal"><form role="search" method="get" class="searchform" action="http://shopee.websieukhung.com/">
	<div class="flex-row relative">
						<div class="flex-col flex-grow">
			<label class="screen-reader-text" for="woocommerce-product-search-field-1">Tìm kiếm:</label>
			<input type="search" id="woocommerce-product-search-field-1" class="search-field mb-0" placeholder="Tìm sản phẩm, thương hiệu, và tên shop" value="" name="s" />
			<input type="hidden" name="post_type" value="product" />
					</div><!-- .flex-col -->
		<div class="flex-col">
			<button type="submit" value="Tìm kiếm" class="ux-search-submit submit-button secondary button icon mb-0">
				<i class="icon-search" ></i>			
			</button>
		</div><!-- .flex-col -->
	</div><!-- .flex-row -->
	<div class="live-search-results text-left z-top"></div>
</form>
</div>	</div>
</li><li class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-348"><a href="#" class="nav-top-link">Thời Trang Trẻ Em</a></li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-product_cat current-menu-item menu-item-349"><a href="#" class="nav-top-link">Thời Trang Nam</a></li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-350"><a href="3" class="nav-top-link">Thiết Bị Điện Tử</a></li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-351"><a href="#" class="nav-top-link">Đồng Hồ</a></li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-product_cat menu-item-352"><a href="#" class="nav-top-link">Giày Dép Nam</a></li>
<li class="account-item has-icon menu-item">
<a href="#"
    class="nav-top-link nav-top-not-logged-in">
    <span class="header-account-title">
    Đăng nhập  </span>
</a><!-- .account-login-link -->

</li>
        </ul>
    </div><!-- inner -->
</div><!-- #mobile-menu -->
<div id='fb-root'></div>
</div>    

	</div> <!-- .row -->

	</div><!-- .account-login-container -->

</div>

		<!-- ------------------------------------------------------------------------------------------------- -->


	<%@include file="/includes/js.jsp"%>
	
	<div id="update" class="lightbox-content mfp-hide">
<div class="woocommerce-notices-wrapper"></div>
<div class="account-container lightbox-inner">
	<div class="col2-set row row-divided row-large" id="customer_login">
		<div class="col-1 large-12 col pb-0">	
			<div class="account-login-inner">
				<center><h4 class="uppercase" style="color: red">Chức năng này chưa được cập nhật</h4></center>
				<center><h4 class="uppercase">Xin lỗi vì sự bất tiện này</h4></center>
				
			</div><!-- .login-inner -->			
		</div>
	</div> <!-- .row -->

</div><!-- .account-login-container -->

          </div>
	
</body>
</html>