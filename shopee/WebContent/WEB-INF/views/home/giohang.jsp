<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>

<style type="text/css">
.qt, .qt-plus, .qt-minus {
	display: block;
	float: left;
}

.qt {
	height: 20px ;
	font-size: 20px;
	line-height: 35px;
	width: 20px;
	color: red;
	margin-right: 5px;
	margin-left: -10px;
}

input .qt-plus,input .qt-minus {
	width: 20px !important;
	height: 20px !important;
	background: #fcfcfc;
	border: none;
	text-align: center;
	font-size: 13px;
	line-height: 20px;
	
}

.qt-plus:hover, .qt-minus:hover {
	background: #ffc107;
	color: #fff;
	cursor: pointer;
}

</style>

<main id="main" class="">

	<div id="content" class="content-area page-wrapper" role="main">
		<div class="row row-main">
			<div class="large-12 col">
				<div class="col-inner">



					<div class="woocommerce">
						<div class="woocommerce row row-large row-divided">
							<div class="col large-9 pb-0 ">
								<c:set var="total" value="0" />								
									<c:if test="${not empty shop}">
									<div class="cart-wrapper sm-touch-scroll">
										<table class="shop_table shop_table_responsive cart woocommerce-cart-form__contents"
											cellspacing="0">																				
											<thead>
												<tr>
													<th class="product-name" colspan="3">Sản phẩm</th>
													<th class="product-price">Giá</th>
													<th class="product-quantity">Số lượng</th>
													<th class="product-subtotal">Tạm tính</th>
												</tr>
											</thead>								
										<c:forEach var="rows" items="${shop}">
											<tbody>											
												<tr class="woocommerce-cart-form__cart-item cart_item">
													<td class="product-remove"><a
														href="deletetocart.htm?idsp=${rows.value.getSanPham().getMaSP()}"
														class="remove">×</a></td>
													<td class="product-thumbnail"><a
														href="#"><img
															width="100" height="100"
															src="AnhSanPham/${rows.value.getSanPham().getHinh()}"
															class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image lazy-load-active"></a></td>

													<td class="product-name" data-title="Sản phẩm"><a
														href="#">${rows.value.getSanPham().getTenSP() }</a>
														<dl class="variation">
															<dt class="variation-Musc">Màu sắc:</dt>
															<dd class="variation-Musc">
																<p>${rows.value.getSanPham().getMauSac() }</p>
															</dd>
															<br>
															<dt class="variation-ThngHiu">Size:</dt>
															<dd class="variation-ThngHiu">
																<p>${rows.value.getSanPham().getSize() }</p>
															</dd>

														</dl></td>

													<td class="product-price" data-title="Giá"><span
														class="woocommerce-Price-amount amount"><f:formatNumber value="${rows.value.getSanPham().getGia()}"/>&nbsp;<span
															class="woocommerce-Price-currencySymbol">₫</span></span></td>

													<td class="product-quantity" data-title="Số lượng" width="200px">
												
																<form action="delete1tocart.htm" method="POST">
														<input type="submit"
															class="qt-minus" value="-">
														<input type="hidden" name="txtMaSP"
															value="${rows.value.getSanPham().getMaSP()}"> <input
															type="hidden" name="txtTenSP"
															value="${rows.value.getSanPham().getTenSP()}"> <input
															type="hidden" name="txtGia"
															value="${rows.value.getSanPham().getGia()}"> <input
															type="hidden" name="txtHinh"
															value="${rows.value.getSanPham().getHinh()}"> <input
															type="hidden" name="mausac"
															value="${rows.value.getSanPham().getMauSac() }"> <input
															type="hidden" name="size"
															value="${rows.value.getSanPham().getSize() }">
													</form> <span class="qt">${rows.value.getSoLuong()}</span>
													<form action="add1tocart.htm" method="POST">
														<input type="submit"
															class="qt-plus" value="+">														<input type="hidden" name="txtMaSP"
															value="${rows.value.getSanPham().getMaSP()}"> <input
															type="hidden" name="txtTenSP"
															value="${rows.value.getSanPham().getTenSP()}"> <input
															type="hidden" name="txtGia"
															value="${rows.value.getSanPham().getGia()}"> <input
															type="hidden" name="txtHinh"
															value="${rows.value.getSanPham().getHinh()}"><input
															type="hidden" name="mausac"
															value="${rows.value.getSanPham().getMauSac() }"> <input
															type="hidden" name="size"
															value="${rows.value.getSanPham().getSize() }">
													</form>
													
													</td>

													<td class="product-subtotal" data-title="Tạm tính"><span
														class="woocommerce-Price-amount amount"><f:formatNumber value="${rows.value.getSoLuong() * rows.value.getSanPham().getGia()}"/>&nbsp;<span
															class="woocommerce-Price-currencySymbol">₫</span></span></td>
												</tr>
												<!-- ---- -->
										<c:set var="total"
											value="${total + rows.value.getSoLuong() * rows.value.getSanPham().getGia()}" />
										</c:forEach>
									
												<tr>
													<td colspan="6" class="actions clear">
														<div class="continue-shopping pull-left text-left">
															<a
																class="button-continue-shopping button primary is-outline"
																href="home/shop.htm">
																←&nbsp;Tiếp tục xem sản phẩm </a>
														</div>
													</td>
												</tr>
											</tbody>
											
										</table>
									</div>
								</c:if>
								<c:if test="${empty shop}">											
											<center><h3>Không có sản phẩm trong giỏ hàng!</h3></center>									
										</c:if>
							</div>
							

							<div class="cart-collaterals large-3 col pb-0">

								<div class="cart-sidebar col-inner ">
									<div class="cart_totals calculated_shipping">

										<table cellspacing="0">
											<thead>
												<tr>
													<th class="product-name" colspan="2"
														style="border-width: 3px;">Cộng giỏ hàng</th>
												</tr>
											</thead>
										</table>

										<h2>Cộng giỏ hàng</h2>

										<table cellspacing="0"
											class="shop_table shop_table_responsive">

											<tbody>
												<tr class="cart-subtotal">
													<th>Tạm tính</th>
													<td data-title="Tạm tính"><span
														class="woocommerce-Price-amount amount"><f:formatNumber value="${total}"/>&nbsp;<span
															class="woocommerce-Price-currencySymbol">₫</span></span></td>
												</tr>




												<tr class="woocommerce-shipping-totals shipping ">
													<td class="shipping__inner" colspan="2">
														<table class="shipping__table ">
															<tbody>
																<tr>
																	<th>Giao hàng</th>
																	<td data-title="Giao hàng">Không có lựa chọn vận
																		chuyển nào khả dụng cho <strong></strong>.


																		<form class="woocommerce-shipping-calculator"
																			action="http://shopee.websieukhung.com/gio-hang/"
																			method="post">

																			<a href="#" class="shipping-calculator-button">Điền
																				một địa chỉ khác</a>
																			<section class="shipping-calculator-form"
																				style="display: none;">

																				<p class="form-row form-row-wide"
																					id="calc_shipping_country_field">
																					<select name="calc_shipping_country"
																						id="calc_shipping_country"
																						class="country_to_state country_select"
																						rel="calc_shipping_state">
																						<option value="">Select a country /
																							region…</option>
																						<option value="SA">Ả Rập Saudi</option>
																						<option value="AT">Áo</option>
																						<option value="AU">Úc</option>
																						<option value="IT">Ý</option>
																						<option value="AF">Afghanistan</option>
																						<option value="EG">Ai Cập</option>
																						<option value="AL">Albania</option>
																						<option value="DZ">Algeria</option>
																						<option value="AS">American Samoa</option>
																						<option value="AD">Andorra</option>
																						<option value="AO">Angola</option>
																						<option value="AI">Anguilla</option>
																						<option value="GB">Anh (UK)</option>
																						<option value="AQ">Antarctica</option>
																						<option value="AG">Antigua và Barbuda</option>
																						<option value="AR">Argentina</option>
																						<option value="AM">Armenia</option>
																						<option value="AW">Aruba</option>
																						<option value="AZ">Azerbaijan</option>
																						<option value="BE">Bỉ</option>
																						<option value="PT">Bồ Đào Nha</option>
																						<option value="CI">Bờ biển Ngà</option>
																						<option value="BS">Bahamas</option>
																						<option value="BH">Bahrain</option>
																						<option value="BD">Bangladesh</option>
																						<option value="BB">Barbados</option>
																						<option value="BY">Belarus</option>
																						<option value="PW">Belau</option>
																						<option value="BZ">Belize</option>
																						<option value="BJ">Benin</option>
																						<option value="BM">Bermuda</option>
																						<option value="BT">Bhutan</option>
																						<option value="BO">Bolivia</option>
																						<option value="BQ">Bonaire, Saint
																							Eustatius và Saba</option>
																						<option value="BA">Bosnia và Herzegovina</option>
																						<option value="BW">Botswana</option>
																						<option value="BR">Brazil</option>
																						<option value="BN">Brunei</option>
																						<option value="BG">Bulgaria</option>
																						<option value="BF">Burkina Faso</option>
																						<option value="BI">Burundi</option>
																						<option value="UM">Các Tiểu đảo xa của
																							Hoa Kỳ (US)</option>
																						<option value="AE">Các tiểu vương quốc Ả
																							Rập</option>
																						<option value="CM">Cameroon</option>
																						<option value="KH">Campuchia</option>
																						<option value="CA">Canada</option>
																						<option value="CV">Cape Verde</option>
																						<option value="TD">Chad</option>
																						<option value="CL">Chile</option>
																						<option value="CX">Christmas Island</option>
																						<option value="DO">Cộng hòa Dominica</option>
																						<option value="CZ">Cộng hòa Séc</option>
																						<option value="CF">Cộng hòa Trung Phi</option>
																						<option value="CO">Colombia</option>
																						<option value="KM">Comoros</option>
																						<option value="CG">Congo (Brazzaville)</option>
																						<option value="CD">Congo (Kinshasa)</option>
																						<option value="CR">Costa Rica</option>
																						<option value="HR">Croatia</option>
																						<option value="CU">Cuba</option>
																						<option value="CW">CuraÇao</option>
																						<option value="CY">Cyprus</option>
																						<option value="TL">Đông Timo</option>
																						<option value="TW">Đài Loan</option>
																						<option value="DK">Đan Mạch</option>
																						<option value="DE">Đức</option>
																						<option value="DJ">Djibouti</option>
																						<option value="BV">Đảo Bouvet</option>
																						<option value="HM">Đảo Heard và quần đảo
																							McDonald</option>
																						<option value="IM">Đảo Man</option>
																						<option value="WS">Đảo Samoa</option>
																						<option value="DM">Dominica</option>
																						<option value="EC">Ecuador</option>
																						<option value="SV">El Salvador</option>
																						<option value="ER">Eritrea</option>
																						<option value="EE">Estonia</option>
																						<option value="ET">Ethiopia</option>
																						<option value="FJ">Fiji</option>
																						<option value="GA">Gabon</option>
																						<option value="GM">Gambia</option>
																						<option value="GE">Georgia</option>
																						<option value="GH">Ghana</option>
																						<option value="GI">Gibraltar</option>
																						<option value="GL">Greenland</option>
																						<option value="GD">Grenada</option>
																						<option value="GP">Guadeloupe</option>
																						<option value="GU">Guam</option>
																						<option value="GT">Guatemala</option>
																						<option value="GG">Guernsey</option>
																						<option value="GN">Guinea</option>
																						<option value="GQ">Guinea Xích đạo</option>
																						<option value="GW">Guinea-Bissau</option>
																						<option value="GY">Guyana</option>
																						<option value="GF">Guyane thuộc Pháp</option>
																						<option value="NL">Hà Lan</option>
																						<option value="KR">Hàn Quốc</option>
																						<option value="HT">Haiti</option>
																						<option value="HK">Hồng Kông</option>
																						<option value="HN">Honduras</option>
																						<option value="HU">Hungary</option>
																						<option value="GR">Hy Lạp</option>
																						<option value="IS">Iceland</option>
																						<option value="ID">Indonesia</option>
																						<option value="IR">Iran</option>
																						<option value="IQ">Iraq</option>
																						<option value="IE">Ireland</option>
																						<option value="IL">Israel</option>
																						<option value="JM">Jamaica</option>
																						<option value="JE">Jersey</option>
																						<option value="JO">Jordan</option>
																						<option value="KZ">Kazakhstan</option>
																						<option value="KE">Kenya</option>
																						<option value="KI">Kiribati</option>
																						<option value="KW">Kuwait</option>
																						<option value="KG">Kyrgyzstan</option>
																						<option value="LA">Lào</option>
																						<option value="LV">Latvia</option>
																						<option value="LB">Lebanon</option>
																						<option value="LS">Lesotho</option>
																						<option value="LR">Liberia</option>
																						<option value="LY">Libya</option>
																						<option value="LI">Liechtenstein</option>
																						<option value="LT">Lithuania</option>
																						<option value="LU">Luxembourg</option>
																						<option value="TF">Lãnh thổ miền Nam nước
																							Pháp</option>
																						<option value="IO">Lãnh thổ Ấn Độ Dương
																							thuộc Anh</option>
																						<option value="US">Mỹ (US)</option>
																						<option value="MN">Mông Cổ</option>
																						<option value="MO">Macao</option>
																						<option value="MG">Madagascar</option>
																						<option value="MW">Malawi</option>
																						<option value="MY">Malaysia</option>
																						<option value="MV">Maldives</option>
																						<option value="ML">Mali</option>
																						<option value="MT">Malta</option>
																						<option value="MQ">Martinique</option>
																						<option value="MR">Mauritania</option>
																						<option value="MU">Mauritius</option>
																						<option value="YT">Mayotte</option>
																						<option value="MX">Mexico</option>
																						<option value="FM">Micronesia</option>
																						<option value="MD">Moldova</option>
																						<option value="MC">Monaco</option>
																						<option value="ME">Montenegro</option>
																						<option value="MS">Montserrat</option>
																						<option value="MA">Morocco</option>
																						<option value="MZ">Mozambique</option>
																						<option value="MM">Myanmar</option>
																						<option value="NO">Na Uy</option>
																						<option value="GS">Nam Georgia và Quần
																							đảo Nam Sandwich</option>
																						<option value="ZA">Nam Phi</option>
																						<option value="SS">Nam Sudan</option>
																						<option value="NA">Namibia</option>
																						<option value="NR">Nauru</option>
																						<option value="NP">Nepal</option>
																						<option value="NC">New Caledonia</option>
																						<option value="NZ">New Zealand</option>
																						<option value="RU">Nga</option>
																						<option value="JP">Nhật Bản</option>
																						<option value="NI">Nicaragua</option>
																						<option value="NE">Niger</option>
																						<option value="NG">Nigeria</option>
																						<option value="NU">Niue</option>
																						<option value="NF">Norfolk Island</option>
																						<option value="MK">North Macedonia</option>
																						<option value="OM">Oman</option>
																						<option value="PK">Pakistan</option>
																						<option value="PS">Palestinian Territory</option>
																						<option value="PA">Panama</option>
																						<option value="PG">Papua New Guinea</option>
																						<option value="PY">Paraguay</option>
																						<option value="PE">Peru</option>
																						<option value="FR">Pháp</option>
																						<option value="PH">Philippines</option>
																						<option value="PL">Phần Lan</option>
																						<option value="FI">Phần Lan</option>
																						<option value="PN">Pitcairn</option>
																						<option value="PF">Polynesia thuộc Pháp</option>
																						<option value="PR">Puerto Rico</option>
																						<option value="QA">Qatar</option>
																						<option value="AX">Quần đảo Åland</option>
																						<option value="MP">Quần đảo Bắc Mariana</option>
																						<option value="KY">Quần đảo Cayman</option>
																						<option value="CC">Quần đảo Cocos
																							(Keeling)</option>
																						<option value="CK">Quần đảo Cook</option>
																						<option value="FK">Quần đảo Falkland</option>
																						<option value="FO">Quần đảo Faroe</option>
																						<option value="MH">Quần đảo Marshall</option>
																						<option value="SB">Quần đảo Solomon</option>
																						<option value="RE">Reunion</option>
																						<option value="RO">Romania</option>
																						<option value="RW">Rwanda</option>
																						<option value="ST">São Tomé và Príncipe</option>
																						<option value="BL">Saint Barthélemy</option>
																						<option value="SH">Saint Helena</option>
																						<option value="KN">Saint Kitts và Nevis</option>
																						<option value="LC">Saint Lucia</option>
																						<option value="SX">Saint Martin (thuộc Hà
																							Lan)</option>
																						<option value="PM">Saint Pierre và
																							Miquelon</option>
																						<option value="VC">Saint Vincent và
																							Grenadines</option>
																						<option value="MF">Saint-Martin (thuộc
																							Pháp)</option>
																						<option value="SM">San Marino</option>
																						<option value="SN">Senegal</option>
																						<option value="RS">Serbia</option>
																						<option value="SC">Seychelles</option>
																						<option value="SL">Sierra Leone</option>
																						<option value="SG">Singapore</option>
																						<option value="SK">Slovakia</option>
																						<option value="SI">Slovenia</option>
																						<option value="SO">Somalia</option>
																						<option value="LK">Sri Lanka</option>
																						<option value="SD">Sudan</option>
																						<option value="SR">Suriname</option>
																						<option value="SJ">Svalbard và Jan Mayen</option>
																						<option value="SZ">Swaziland</option>
																						<option value="SY">Syria</option>
																						<option value="ES">Tây Ban Nha</option>
																						<option value="TJ">Tajikistan</option>
																						<option value="TZ">Tanzania</option>
																						<option value="TR">Thổ Nhĩ Kỳ</option>
																						<option value="TH">Thái Lan</option>
																						<option value="SE">Thụy Điển</option>
																						<option value="CH">Thụy Sĩ</option>
																						<option value="TG">Togo</option>
																						<option value="TK">Tokelau</option>
																						<option value="TO">Tonga</option>
																						<option value="TT">Trinidad và Tobago</option>
																						<option value="KP">Triều Tiên</option>
																						<option value="CN">Trung Quốc</option>
																						<option value="TN">Tunisia</option>
																						<option value="TM">Turkmenistan</option>
																						<option value="TC">Turks và quần đảo
																							Caicos</option>
																						<option value="TV">Tuvalu</option>
																						<option value="UG">Uganda</option>
																						<option value="UA">Ukraine</option>
																						<option value="UY">Uruguay</option>
																						<option value="UZ">Uzbekistan</option>
																						<option value="VU">Vanuatu</option>
																						<option value="VA">Vatican</option>
																						<option value="VE">Venezuela</option>
																						<option value="VG">Virgin Islands
																							(British)</option>
																						<option value="VI" selected="selected">Virgin
																							Islands (Mỹ)</option>
																						<option value="VN">Việt Nam</option>
																						<option value="WF">Wallis và Futuna</option>
																						<option value="EH">Western Sahara</option>
																						<option value="YE">Yemen</option>
																						<option value="ZM">Zambia</option>
																						<option value="ZW">Zimbabwe</option>
																						<option value="IN">Ấn Độ</option>
																					</select>
																				</p>

																				<p class="form-row form-row-wide"
																					id="calc_shipping_state_field">
																					<input type="text" class="input-text" value=""
																						placeholder="Bang / Hạt"
																						name="calc_shipping_state"
																						id="calc_shipping_state">
																				</p>

																				<p class="form-row form-row-wide"
																					id="calc_shipping_city_field">
																					<input type="text" class="input-text" value="333"
																						placeholder="Thành phố" name="calc_shipping_city"
																						id="calc_shipping_city">
																				</p>

																				<p class="form-row form-row-wide"
																					id="calc_shipping_postcode_field">
																					<input type="text" class="input-text" value=""
																						placeholder="Mã bưu điện"
																						name="calc_shipping_postcode"
																						id="calc_shipping_postcode">
																				</p>

																				<p>
																					<button type="submit" name="calc_shipping"
																						value="1" class="button">Cập nhật</button>
																				</p>
																				<input type="hidden"
																					id="woocommerce-shipping-calculator-nonce"
																					name="woocommerce-shipping-calculator-nonce"
																					value="82eac97c31"><input type="hidden"
																					name="_wp_http_referer" value="/gio-hang/">
																			</section>
																		</form>

																	</td>
																</tr>
															</tbody>

														</table>
													</td>
												</tr>

												<tr class="order-total">
													<th>Tổng</th>
													<td data-title="Tổng"><strong><span
															class="woocommerce-Price-amount amount"><f:formatNumber value="${total}"/>&nbsp;<span
																class="woocommerce-Price-currencySymbol">₫</span></span></strong></td>
												</tr>


											</tbody>
										</table>

										<div class="wc-proceed-to-checkout">
										<c:set var="TaiKhoan" scope="session" value="${TaiKhoan }" />
										<c:if test="${not empty TaiKhoan && not empty shop}">
											<a href="thanhtoan.htm" class="checkout-button button alt wc-forward"> Tiến hành
												thanh toán</a>
										</c:if>
										<c:if test="${empty shop}">											
											<h5>Giỏ hàng không có sản phẩm!</h5>										
										</c:if>
										<c:if test="${empty TaiKhoan}">
												<h5>vui lòng đăng nhập để thanh toán</h5>
											</c:if>
										</div>


									</div>
									<form class="checkout_coupon mb-0" method="post">
										<div class="coupon">
											<h3 class="widget-title">
												<i class="icon-tag"></i> Phiếu ưu đãi
											</h3>
											<input type="text" name="coupon_code" class="input-text"
												id="coupon_code" value="" placeholder="Mã ưu đãi"> <input
												type="submit" class="is-form expand" name="apply_coupon"
												value="Áp dụng">
										</div>
									</form>
									<div class="cart-sidebar-content relative"></div>
								</div>
							</div>
						</div>

						<div class="cart-footer-content after-cart-content relative"></div>
					</div>


				</div>
				<!-- .col-inner -->
			</div>
			<!-- .large-12 -->
		</div>
		<!-- .row -->
	</div>



</main>