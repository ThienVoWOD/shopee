<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>

<style>
<!--

/* CONTAINERS */

.four { width: 15%}


/* COLUMNS */

.col {
  display: block;
  float:left;
  margin: 1% 0 1% 1.6%;
}

.col:first-of-type { margin-left: 0; }

/* CLEARFIX */



/* FORM */

.form .plan input, .form .payment-plan input, .form .payment-type input{
	display: none;
}

.form label{
	position: relative;
	color: black;
	text-align:center;
	background-color: #fff;
	font-size: 13px;
	text-align: center;
	height: 30px;
	line-height: 30px;
	display: block;
	cursor: pointer;
	border: 1px solid #DDDDDD;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.form .plan input:checked + label, .form .payment-plan input:checked + label, .form .payment-type input:checked + label{	
	background-color: #ee4d2d;
	color: white;
}
/* --------------------------------- */

.qt, .qt-plus, .qt-minus {
	display: block;
	float: left;
}

.qt {
	height: 10px;
	font-size: 15px;
	line-height: 10px;
	width: 10px;
	text-align: center;
}

.qt-plus, .qt-minus {
	width: 10px;
	height: 10px;
	background: #fcfcfc;
	border: none;
	text-align: center;
	font-size: 15px;
	border: 1px solid #DDDDDD;
}


.qt-plus {
	line-height: 10px;
}

.qt-minus {
	line-height: 10px;
}

-->
</style>

<div class="page-title shop-page-title product-page-title">
	<div class="page-title-inner flex-row medium-flex-wrap container">
		<div class="flex-col flex-grow medium-text-center">
			<div class="is-large">
				<nav class="woocommerce-breadcrumb breadcrumbs ">
					<a href="#">Trang chủ</a> <i class='fas fa-angle-right'></i>
					<a href="#">${TenLoaiSP }</a> <i class='fas fa-angle-right'></i>
					<a href="#">${sp.tenSanPham }</a>
				</nav>
			</div>
		</div><!-- .flex-left -->
	  
	   <div class="flex-col medium-text-center">
		   		   </div><!-- .flex-right -->
	</div><!-- flex-row -->
</div><!-- .page-title -->

	<main id="main" class="">


	<div class="shop-container">
		
			<div class="container">
	<div class="woocommerce-notices-wrapper"></div></div><!-- /.container -->
<div id="product-338" class="product type-product post-338 status-publish first instock product_cat-bach-hoa-online product_cat-dien-thoai-phu-kien product_cat-dong-ho product_cat-giay-dep-nam product_cat-giay-dep-nu product_cat-may-anh-may-quay-phim product_cat-may-tinh-laptop product_cat-me-be product_cat-nha-cua-doi-song product_cat-nha-sach-online product_cat-o-to-xe-may-xe-dap product_cat-phu-kien-thoi-trang product_cat-suc-khoe-sac-dep product_cat-the-thao-du-lich product_cat-thiet-bi-dien-gia-dung product_cat-thiet-bi-dien-tu product_cat-thoi-trang-nam product_cat-thoi-trang-nu product_cat-thoi-trang-tre-em product_cat-tui-vi product_cat-voucher-dich-vu has-post-thumbnail sale shipping-taxable purchasable product-type-variable">
	
	<div class="product-container">
<div class="product-main">
<div class="row content-row mb-0">


	<div class="product-gallery large-5 col">
	
<div class="product-images relative mb-half has-hover woocommerce-product-gallery woocommerce-product-gallery--with-images woocommerce-product-gallery--columns-5 images" data-columns="5">

<!-- 	<div class="badge-container is-larger absolute left top z-1">
		<div class="callout badge badge-square">
			<div class="badge-inner secondary on-sale">
				<span class="onsale">-29%</span>
			</div>
		</div>
	</div> -->
  <div class="image-tools absolute top show-on-hover right z-3"></div>

  <figure class="woocommerce-product-gallery__wrapper product-gallery-slider slider slider-nav-small mb-half has-image-zoom"
        data-flickity-options='{
                "cellAlign": "center",
                "wrapAround": true,
                "autoPlay": false,
                "prevNextButtons":true,
                "adaptiveHeight": true,
                "imagesLoaded": true,
                "lazyLoad": 1,
                "dragThreshold" : 15,
                "pageDots": false,
                "rightToLeft": false       }'>
    <div  class="woocommerce-product-gallery__image slide first">
    	<a href="AnhSanPham/${sp.hinhAnh }"><img width="600" height="600" src="AnhSanPham/${sp.hinhAnh }" class="lazy-load wp-post-image skip-lazy" data-large_image="images/demo.jpg" data-large_image_width="900" data-large_image_height="900" data-srcset="AnhSanPham/${sp.hinhAnh }" sizes="(max-width: 600px) 100vw, 600px" /></a>
    </div>
    <div  class="woocommerce-product-gallery__image slide first">
    	<a href="AnhSanPham/${sp.hinhAnh }"><img width="600" height="600" src="AnhSanPham/${sp.hinhAnh }" class="lazy-load wp-post-image skip-lazy" data-large_image="images/demo.jpg" data-large_image_width="900" data-large_image_height="900" data-srcset="AnhSanPham/${sp.hinhAnh }" sizes="(max-width: 600px) 100vw, 600px" /></a>
    </div>
    <div  class="woocommerce-product-gallery__image slide first">
    	<a href="AnhSanPham/${sp.hinhAnh }"><img width="600" height="600" src="AnhSanPham/${sp.hinhAnh }" class="lazy-load wp-post-image skip-lazy" data-large_image="images/demo.jpg" data-large_image_width="900" data-large_image_height="900" data-srcset="AnhSanPham/${sp.hinhAnh }" sizes="(max-width: 600px) 100vw, 600px" /></a>
    </div>
    <div  class="woocommerce-product-gallery__image slide first">
    	<a href="AnhSanPham/${sp.hinhAnh }"><img width="600" height="600" src="AnhSanPham/${sp.hinhAnh }" class="lazy-load wp-post-image skip-lazy" data-large_image="images/demo.jpg" data-large_image_width="900" data-large_image_height="900" data-srcset="AnhSanPham/${sp.hinhAnh }" sizes="(max-width: 600px) 100vw, 600px" /></a>
    </div>
    <div  class="woocommerce-product-gallery__image slide first">
    	<a href="AnhSanPham/${sp.hinhAnh }"><img width="600" height="600" src="AnhSanPham/${sp.hinhAnh }" class="lazy-load wp-post-image skip-lazy" data-large_image="images/demo.jpg" data-large_image_width="900" data-large_image_height="900" data-srcset="AnhSanPham/${sp.hinhAnh }" sizes="(max-width: 600px) 100vw, 600px" /></a>
    </div>
    

    </figure>
</div>

  <div class="product-thumbnails thumbnails slider row row-small row-slider slider-nav-small small-columns-4"
    data-flickity-options='{
              "cellAlign": "left",
              "wrapAround": false,
              "autoPlay": false,
              "prevNextButtons": true,
              "asNavFor": ".product-gallery-slider",
              "percentPosition": true,
              "imagesLoaded": true,
              "pageDots": false,
              "rightToLeft": false,
              "contain": true
          }'
    > <div class="col is-nav-selected first">
        <a><img src="AnhSanPham/${sp.hinhAnh }" width="188" height="188" class="attachment-woocommerce_thumbnail" /></a>
      </div>
    <div class="col">
    	<a><img src="AnhSanPham/${sp.hinhAnh }" width="188" height="188"  class="lazy-load attachment-woocommerce_thumbnail" /></a>
    </div>
    <div class="col">
    	<a><img src="AnhSanPham/${sp.hinhAnh }" width="188" height="188"  class="lazy-load attachment-woocommerce_thumbnail" /></a>
    </div>
    <div class="col">
    	<a><img src="AnhSanPham/${sp.hinhAnh }" width="188" height="188"  class="lazy-load attachment-woocommerce_thumbnail" /></a>
    </div>
    <div class="col">
    	<a><img src="AnhSanPham/${sp.hinhAnh }" width="188" height="188"  class="lazy-load attachment-woocommerce_thumbnail" /></a>
    </div>
      </div><!-- .product-thumbnails -->
      
  	</div>
  	

	<div class="product-info summary col-fit col entry-summary product-summary">
		<h1 class="title-product">${sp.tenSanPham }</h1>
		
<div class="price-wrapper">
	<p class="price product-page-price price-on-sale">
  <!-- <del><span class="woocommerce-Price-amount amount">590,000&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></del> -->
  <ins><span class="woocommerce-Price-amount amount"><f:formatNumber value="${sp.giaTien}"/>&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></ins></p>
  </div>
  	<form action="addtocart.htm" method="POST">
			<table class="variations" cellspacing="0">
			<tbody>
					<tr>
						<td class="label"><label for="pa_mau-sac">Màu sắc</label></td>
						<td class="value" style="width: 100%">
		<div class="form cf">
			<section class="plan cf">		
				<c:if test="${ms.mau1 ne '' }">
					<input type="radio" name="mausac" id="${ms.mau1 }" value="${ms.mau1 }" checked><label class="free-label four col" for="${ms.mau1 }">${ms.mau1 }</label>
				</c:if>
				<c:if test="${ms.mau2 ne '' }">
					<input type="radio" name="mausac" id="${ms.mau2 }" value="${ms.mau2 }"><label class="free-label four col" for="${ms.mau2 }">${ms.mau2 }</label>
				</c:if>
				<c:if test="${ms.mau3 ne '' }">
					<input type="radio" name="mausac" id="${ms.mau3 }" value="${ms.mau3 }"><label class="free-label four col" for="${ms.mau3 }">${ms.mau3 }</label>
				</c:if>
				<c:if test="${ms.mau4 ne '' }">
					<input type="radio" name="mausac" id="${ms.mau4 }" value="${ms.mau4 }"><label class="free-label four col" for="${ms.mau4 }">${ms.mau4 }</label>
				</c:if>
				<c:if test="${ms.mau5 ne '' }">
					<input type="radio" name="mausac" id="${ms.mau5 }" value="${ms.mau5 }"><label class="free-label four col" for="${ms.mau5 }">${ms.mau5 }</label>
				</c:if>			
			</section>				
		</div>
		</td>
					</tr>
					<tr>
						<td class="label"><label for="pa_thuong-hieu">Size</label></td>
						<td class="value" style="width: 100%">
							<div class="form cf">
								<section class="plan cf">			
									<c:if test="${kc.size1 ne '' }">
										<input type="radio" name="size" id="${kc.size1 }" value="${kc.size1 }" checked><label class="free-label four col" for="${kc.size1 }">${kc.size1 }</label>
									</c:if>
									<c:if test="${kc.size2 ne '' }">
										<input type="radio" name="size" id="${kc.size2 }" value="${kc.size2 }"><label class="free-label four col" for="${kc.size2 }">${kc.size2 }</label>
									</c:if>
									<c:if test="${kc.size3 ne '' }">
										<input type="radio" name="size" id="${kc.size3 }" value="${kc.size3 }"><label class="free-label four col" for="${kc.size3 }">${kc.size3 }</label>
									</c:if>
									<c:if test="${kc.size4 ne '' }">
										<input type="radio" name="size" id="${kc.size4 }" value="${kc.size4 }"><label class="free-label four col" for="${kc.size4 }">${kc.size4 }</label>
									</c:if>
									<c:if test="${kc.size5 ne '' }">
										<input type="radio" name="size" id="${kc.size5 }" value="${kc.size5 }"><label class="free-label four col" for="${kc.size5 }">${kc.size5 }</label>
									</c:if>
								</section>
							</div>	
						</td>
			
					</tr>
			</tbody>
		</table>

		<p style="margin-right: 20px; float: left; line-height: 35px">Số lượng:</p>
		<div class="quantity">	
		 		
		<button class="qt-minus" id="tru">-</button>	
		<input type="number" class="input-text qt" id="soluong" style="width: 50px; height: 38px;margin-left: -15px" step="1" min="1" max="${sp.soLuong}" name="soluong" value="1"/>
		<button class="qt-plus" id="cong">+</button>
		  
		</div>
		<p style="line-height: 35px">${sp.soLuong} Sản phẩm có sẵn </p>
	
		<input type="hidden" name="txtMaSP" value="${sp.idSanPham}" >
		<input type="hidden" name="txtTenSP" value="${sp.tenSanPham }" >
		<input type="hidden" name="txtGia" value="${sp.giaTien}" >
		<input type="hidden" name="txtHinh" value="${sp.hinhAnh}" >
		
		<button type="submit" class="single_add_to_cart_button button alt" style="margin-top: 20px; float:left;">Mua hàng</button>
	</form>
	

	</div>
	</div>
</div>
		</div>
	
	


	</div><!-- .summary -->


</div><!-- .row -->
</div><!-- .product-main -->

<div class="product-footer">
	<div class="container">
		<div class="product-page-sections">
	<div class="row">
		
						<div class="product-section">
			<div class="row">
				<div class="large-12 col pb-0 mb-0">
					 <h5 class="uppercase mt-wh">Mô tả</h5>
				</div>

				<div class="large-12 col pb-0 mb-0">
					<div class="panel entry-content">
						

<p>● THÔNG TIN SẢN PHẨM<br />
${sp.motaSanPham }

</p>
					</div>
				</div>
			</div>
			</div>
						<div class="product-section">
			<div class="row">
				<div class="large-12 col pb-0 mb-0">
					 <h5 class="uppercase mt-wh">Thông tin bổ sung</h5>
				</div>

				<div class="large-12 col pb-0 mb-0">
					<div class="panel entry-content">
						

<table class="woocommerce-product-attributes shop_attributes">
			<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_mau-sac">
			<th class="woocommerce-product-attributes-item__label">Màu sắc</th>
			<td class="woocommerce-product-attributes-item__value"><p>Đen, Đỏ, Trắng, Vàng</p>
</td>
		</tr>
			<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_thuong-hieu">
			<th class="woocommerce-product-attributes-item__label">Thương Hiệu</th>
			<td class="woocommerce-product-attributes-item__value"><p>Kase, No Brand, Peak Design, Voigtlander</p>
</td>
		</tr>
			<tr class="woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_tinh-trang">
			<th class="woocommerce-product-attributes-item__label">Tình Trạng</th>
			<td class="woocommerce-product-attributes-item__value"><p>Sản phẩm đã dùng, Sản phẩm mới</p>
</td>
		</tr>
	</table>
					</div>
				</div>
			</div>
			</div>

				
</div>

</div>

  <div class="related related-products-wrapper product-section">

    <h3 class="product-section-title product-section-title-related pt-half pb-half uppercase">
      <span>Sản phẩm tương tự</span>
    </h3>

      
  
    <div class="row equalize-box large-columns-6 medium-columns-3 small-columns-2 row-small slider row-slider slider-nav-reveal slider-nav-push"  data-flickity-options='{"imagesLoaded": true, "groupCells": "100%", "dragThreshold" : 5, "cellAlign": "left","wrapAround": true,"prevNextButtons": true,"percentPosition": true,"pageDots": false, "rightToLeft": false, "autoPlay" : false}'>

  
      
        
<c:forEach var="sp" items="${dsshop}">
<div class="product-small col has-hover product type-product post-335 status-publish instock product_cat-bach-hoa-online product_cat-dien-thoai-phu-kien product_cat-dong-ho product_cat-giay-dep-nam product_cat-giay-dep-nu product_cat-may-anh-may-quay-phim product_cat-may-tinh-laptop product_cat-me-be product_cat-nha-cua-doi-song product_cat-nha-sach-online product_cat-o-to-xe-may-xe-dap product_cat-phu-kien-thoi-trang product_cat-suc-khoe-sac-dep product_cat-the-thao-du-lich product_cat-thiet-bi-dien-gia-dung product_cat-thiet-bi-dien-tu product_cat-thoi-trang-nam product_cat-thoi-trang-nu product_cat-thoi-trang-tre-em product_cat-tui-vi product_cat-voucher-dich-vu has-post-thumbnail sale featured shipping-taxable purchasable product-type-variable">
	<div class="col-inner">
	
<!-- <div class="badge-container absolute left top z-1">
		<div class="callout badge badge-square"><div class="badge-inner secondary on-sale"><span class="onsale">-29%</span></div></div>
</div> -->
	<div class="product-small box ">
		<div class="box-image">
			<div class="image-fade_in_back">
				<a href="home/ctsp.htm?idsp=${sp.idSanPham}">
					<div class="customized-overlay-image"><img src="images/renhat.png"></div><div class="MW4BW_"><div class="_150RS_ bgXBUk" style="color: rgb(242, 82, 32);"><span class="lVCR4M">Yêu thích</span></div></div>
					<img width="188" height="188" class="lazy-load attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image" data-srcset="AnhSanPham/${sp.hinhAnh}" sizes="(max-width: 188px) 100vw, 188px" />
					<img width="188" height="188" data-src="AnhSanPham/${sp.hinhAnh}" class="lazy-load show-on-hover absolute fill hide-for-small back-image wp-post-image" sizes="(max-width: 188px) 100vw, 188px" />				</a>
			</div>
			<div class="image-tools is-small top right show-on-hover">
							</div>
			<div class="image-tools is-small hide-for-small bottom left show-on-hover">
							</div>
			<div class="image-tools grid-tools text-center hide-for-small bottom hover-slide-in show-on-hover">
							</div>
					</div><!-- box-image -->

			<div class="box-text box-text-products">
			<div class="title-wrapper">
			<p class="name product-title"><a href="#">${sp.tenSanPham}</a></p>
			</div>
			<div class="price-wrapper">
			<span class="price">
				<!-- <del><span class="woocommerce-Price-amount amount">590,000&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></del> -->
				<ins><span class="woocommerce-Price-amount amount"><f:formatNumber value="${sp.giaTien}"/>&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></span></ins>
			</span>
		</div>		</div><!-- box-text -->
	</div><!-- box -->
		</div><!-- .col-inner -->
	</div><!-- col -->    
</c:forEach>
      </div>
  </div>

	</div><!-- container -->
</div><!-- product-footer -->


</main><!-- #main -->

<script type='text/javascript'>
$('#tru').on('click', function(e) {
	e.preventDefault();
	var $this = $(this);
	var $input = $this.closest('div').find('#soluong');
	var value = parseInt($input.val());
	if (value > 2) {
		value = value - 1;
	} else {
		value = 1;
	}

$input.val(value);
    
});

$('#cong').on('click', function(e) {
	e.preventDefault();
	var $this = $(this);
	var $input = $this.closest('div').find('#soluong');
	var value = parseInt($input.val());

	if (value < ${sp.soLuong}) {
	value = value + 1;
	} else {
		value = ${sp.soLuong};
	}

	$input.val(value);
});

//RESTRICT INPUTS TO NUMBERS ONLY WITH A MIN OF 0 AND A MAX 100
$('#soluong').on('blur', function(){

var input = $(this);
var value = parseInt($(this).val());

	if (value < 1 || isNaN(value)) {
		input.val(1);
	} else if
		(value > ${sp.soLuong}) {
		input.val(${sp.soLuong});
	}
	});
</script>
