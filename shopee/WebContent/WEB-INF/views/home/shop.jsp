<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>

	<div class="shop-page-title category-page-title page-title featured-title dark ">
	
	<div class="page-title-bg fill">
		<div class="title-bg fill bg-fill" data-parallax-fade="true" data-parallax="-2" data-parallax-background data-parallax-container=".page-title"></div>
		<div class="title-overlay fill"></div>
	</div>
	
	<div class="page-title-inner flex-row  medium-flex-wrap container">
	  <div class="flex-col flex-grow medium-text-center">
	  	 	 		<h1 class="shop-page-title is-xlarge">${TenLoaiSP }</h1>
		<div class="is-large">
	<nav class="woocommerce-breadcrumb breadcrumbs "><a href="#">Trang chủ</a> <span class="divider">&#47;</span> <a href="#">Cửa hàng</a> <span class="divider">&#47;</span> Thời Trang Nam</nav></div>
<div class="category-filtering category-filter-row show-for-medium">
	<a href="#" data-open="#shop-sidebar" data-visible-after="true" data-pos="left" class="filter-button uppercase plain">
		<i class="icon-menu"></i>
		<strong>Lọc</strong>
	</a>
	<div class="inline-block">
			</div>
</div>
	  </div><!-- .flex-left -->
	  
	   <div class="flex-col medium-text-center  form-flat">
	  	 	
<p class="woocommerce-result-count hide-for-medium">
	Showing all 12 results</p>
<form class="woocommerce-ordering" method="get">
	<select name="orderby" class="orderby" aria-label="Đơn hàng của cửa hàng">
					<option value="popularity" >Thứ tự theo mức độ phổ biến</option>
					<option value="rating" >Thứ tự theo điểm đánh giá</option>
					<option value="date"  selected='selected'>Mới nhất</option>
					<option value="price" >Thứ tự theo giá: thấp đến cao</option>
					<option value="price-desc" >Thứ tự theo giá: cao xuống thấp</option>
			</select>
	<input type="hidden" name="paged" value="1" />
	</form>
	   </div><!-- .flex-right -->
	   
	</div><!-- flex-row -->
</div><!-- .page-title -->

	<main id="main" class="">

<div class="row category-page-row">

		<div class="col large-2 hide-for-medium ">
			<div id="shop-sidebar" class="sidebar-inner col-inner">
				<aside id="yith-woo-ajax-navigation-2" class="widget yith-woocommerce-ajax-product-filter yith-woo-ajax-navigation woocommerce">
					<a><h2 style="font-weight: bold;" class="title-head"><span class="widget-title shop-sidebar">${TenLoaiSP }</span></h2></a>
					<ul class='yith-wcan-list yith-wcan '>
						<c:forEach var="lsp" items="${loaisanpham}">
							<c:choose>
								<c:when test="${lsp.idLoaiSanPham == iidlsp}">						
									<li ><a href="home/shop.htm?idlsp=${lsp.idLoaiSanPham }" style="font-size: 15px; color: red">- ${lsp.tenLoaiSanPham }</a></li>
								</c:when>
								<c:otherwise>
									<li ><a href="home/shop.htm?idlsp=${lsp.idLoaiSanPham }" style="font-size: 15px">- ${lsp.tenLoaiSanPham }</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</ul>
				</aside>
				<aside id="yith-woo-ajax-navigation-2" class="widget yith-woocommerce-ajax-product-filter yith-woo-ajax-navigation woocommerce widget_layered_nav">
					<h2 class="title-head"><span class="widget-title shop-sidebar">Dịch vụ khuyến mãi</span></h2><div class="is-divider small"></div><ul class='yith-wcan-list yith-wcan '>
						<li ><a  href="#">0% Trả góp</a> <small class="count">1</small><div class="clear"></div></li>
						<li ><a  href="#">Hàng có sẵn</a> <small class="count">1</small><div class="clear"></div></li>
						<li ><a  href="#">Miễn Phí Vận Chuyển</a> <small class="count">1</small><div class="clear"></div></li>
						<li ><a  href="#">Mua nhiều giảm giá</a> <small class="count">1</small><div class="clear"></div></li>
						<li ><a  href="#">Rẻ Vô Địch</a> <small class="count">1</small><div class="clear"></div></li>
						<li ><a  href="#">Đang giảm giá</a> <small class="count">1</small><div class="clear"></div></li>
					</ul>
				</aside>
				<aside id="yith-woo-ajax-navigation-3" class="widget yith-woocommerce-ajax-product-filter yith-woo-ajax-navigation woocommerce widget_layered_nav">
					<h2 class="title-head"><span class="widget-title shop-sidebar">Màu sắc</span></h2>
					<div class="is-divider small"></div>
					<ul class='yith-wcan-list yith-wcan '>
						<li><a  href="#">Trắng</a> <small class="count">12</small><div class="clear"></div></li><li><a  href="#">Vàng</a> <small class="count">12</small><div class="clear"></div></li>
						<li><a  href="#">Đen</a> <small class="count">12</small><div class="clear"></div></li>
						<li><a  href="#">Đỏ</a> <small class="count">12</small><div class="clear"></div></li></ul>
					</aside>
					<aside id="yith-woo-ajax-navigation-4" class="widget yith-woocommerce-ajax-product-filter yith-woo-ajax-navigation woocommerce widget_layered_nav">
						<h2 class="title-head"><span class="widget-title shop-sidebar">Đơn vị vận chuyển</span></h2>
						<div class="is-divider small"></div>
						<ul class='yith-wcan-list yith-wcan'>
						<li><a href="#">Ninja Van</a><small class="count">1</small><div class="clear"></div></li>
						<li><a  href="#">NowShip</a><small class="count">1</small><div class="clear"></div></li>
						<li><a href="#">Shopee 4H</a><small class="count">1</small><div class="clear"></div></li><li><a  href="#">Shopee Express</a><small class="count">1</small><div class="clear"></div></li>
					</ul>
				</aside>
				<aside id="yith-woo-ajax-navigation-5" class="widget yith-woocommerce-ajax-product-filter yith-woo-ajax-navigation woocommerce widget_layered_nav">
					<h2 class="title-head"><span class="widget-title shop-sidebar">Thương hiệu</span></h2>
					<div class="is-divider small"></div><ul class='yith-wcan-list yith-wcan '>
						<li ><a href="#">Kase</a><small class="count">12</small><div class="clear"></div></li>
						<li ><a  href="#">No Brand</a> <small class="count">12</small><div class="clear"></div></li>
						<li ><a  href="#">Peak Design</a> <small class="count">12</small><div class="clear"></div></li>
						<li ><a  href="#">Voigtlander</a> <small class="count">12</small><div class="clear"></div>
						</li>
					</ul>
				</aside>
				<aside id="yith-woo-ajax-navigation-6" class="widget yith-woocommerce-ajax-product-filter yith-woo-ajax-navigation woocommerce widget_layered_nav">
					<h2 class="title-head"><span class="widget-title shop-sidebar">Tình trạng</span></h2>
					<div class="is-divider small"></div>
					<ul class='yith-wcan-list yith-wcan '>
						<li ><a  href="#">Sản phẩm mới</a> <small class="count">12</small><div class="clear"></div></li>
						<li ><a  href="#">Sản phẩm đã dùng</a> <small class="count">12</small><div class="clear"></div></li>
					</ul>
				</aside>
			</div><!-- .sidebar-inner -->
		</div><!-- #shop-sidebar -->

		<div class="col large-10">
		<div class="shop-container">
		<div class="woocommerce-notices-wrapper"></div>
		<div class="products row row-small large-columns-5 medium-columns-3 small-columns-2 has-shadow row-box-shadow-1 equalize-box">

<!-- <====================================== PRODUCT =========================================> -->
<c:forEach var="sp" items="${dsshop}">

<div class="product-small col has-hover product type-product post-339 status-publish first instock product_cat-bach-hoa-online product_cat-dien-thoai-phu-kien product_cat-dong-ho product_cat-giay-dep-nam product_cat-giay-dep-nu product_cat-may-anh-may-quay-phim product_cat-may-tinh-laptop product_cat-me-be product_cat-nha-cua-doi-song product_cat-nha-sach-online product_cat-o-to-xe-may-xe-dap product_cat-phu-kien-thoi-trang product_cat-suc-khoe-sac-dep product_cat-the-thao-du-lich product_cat-thiet-bi-dien-gia-dung product_cat-thiet-bi-dien-tu product_cat-thoi-trang-nam product_cat-thoi-trang-nu product_cat-thoi-trang-tre-em product_cat-tui-vi product_cat-voucher-dich-vu has-post-thumbnail sale featured shipping-taxable purchasable product-type-variable">
	<div class="col-inner">

<!-- 		<div class="badge-container absolute left top z-1">
			<div class="callout badge badge-square"><div class="badge-inner secondary on-sale"><span class="onsale">-29%</span></div></div>
		</div> -->
		<div class="product-small box ">
			<div class="box-image">
				<div class="image-fade_in_back">
					<a href="home/ctsp.htm?idsp=${sp.idSanPham}">
						<div class="customized-overlay-image"><img src="images/renhat.png"></div><div class="MW4BW_"><div class="_150RS_ bgXBUk" style="color: rgb(242, 82, 32);"><span class="lVCR4M">Yêu thích</span></div></div><img width="188" height="188" data-src="AnhSanPham/${sp.hinhAnh}" class="lazy-load attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image"/>
						<img width="188" height="188" data-src="AnhSanPham/${sp.hinhAnh}" class="lazy-load show-on-hover absolute fill hide-for-small back-image wp-post-image" />
					</a>
				</div>
				<div class="image-tools is-small top right show-on-hover">
				</div>
				<div class="image-tools is-small hide-for-small bottom left show-on-hover">
				</div>
				<div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
				</div>
			</div><!-- box-image -->

			<div class="box-text box-text-products">
				<div class="title-wrapper"><p class="name product-title"><a href="home/ctsp.htm?idsp=${sp.idSanPham}">${sp.tenSanPham}</a></p></div><div class="price-wrapper">
					<span class="price">
						<%-- <del><span class="woocommerce-Price-amount amount">${sp.giaTien}&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></del> --%>
						<ins><span class="woocommerce-Price-amount amount"><f:formatNumber value="${sp.giaTien}"/>&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></ins>
					</span>
				</div>		</div><!-- box-text -->
			</div><!-- box -->
		</div><!-- .col-inner -->
	</div><!-- col -->
</c:forEach>
<!-- <====================================END PRODUCT===========================================> -->

				</div><!-- row -->
			</div><!-- shop container -->
		</div>
</div>

</main><!-- #main -->