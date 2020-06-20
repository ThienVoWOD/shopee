<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>

<c:set var="TaiKhoan" scope="session" value="${TaiKhoan }" />
<main id="main" class="">
	<div id="content" class="content-area page-wrapper" role="main">
		<div class="row row-main">
			<div class="large-12 col">
				<div class="col-inner">
					<div class="woocommerce">
						<div class="woocommerce-notices-wrapper"></div>
						<form:form method="post" class="checkout woocommerce-checkout" action="checkkh.htm" modelAttribute="khachhang">
							<div class="row pt-0">
								<div class="large-7 col  ">
									<div id="customer_details">
										<div class="clear">
											<div class="woocommerce-billing-fields">

												<h3>Thông tin thanh toán</h3>
												<div class="woocommerce-billing-fields__field-wrapper">
													<p class="form-row form-row-first validate-required"
														id="billing_first_name_field" data-priority="10">
														<label for="billing_first_name" class="">Họ và tên&nbsp;<abbr
															class="required">*</abbr></label><span
															class="woocommerce-input-wrapper"><form:input
															type="text" class="input-text" path="hoVaTen"
															id="billing_first_name" placeholder="họ và tên"
															autocomplete="given-name"/></span>
															<input hidden type="text"
															class="form-control" name="tenTaiKhoan"
															value="${TaiKhoan }" />
													</p>
													<p
														class="form-row form-row-wide validate-required validate-phone"
														id="billing_phone_field" data-priority="30">
														<label for="billing_phone" class="">Số điện
															thoại&nbsp;<abbr class="required" title="bắt buộc">*</abbr>
														</label><span class="woocommerce-input-wrapper"><form:input
															type="text" class="input-text" name="billing_phone"
															path="sdt" placeholder="Số điện thoại"/></span>
													</p>
													<p
														class="form-row address-field form-row-first validate-required">
														<label for="billing_address_1">Địa
															chỉ&nbsp;<abbr class="required">*</abbr>
														</label><span class="woocommerce-input-wrapper"><form:input
															type="text" class="input-text"
															placeholder="Địa chỉ" path="diaChi" data-placeholder="Địa chỉ"/></span>
													</p>
													<p class="form-row address-field form-row-last"
														id="billing_address_2_field" data-priority="60"></p>

												</div>

											</div>

										</div>
					
										<div class="clear">
											<div class="woocommerce-additional-fields">
											<div class="woocommerce-additional-fields__field-wrapper">
													<p class="form-row notes" id="order_comments_field"
														data-priority="">
														<label for="order_comments" class="">Ghi chú đơn
															hàng&nbsp;<span class="optional">(tuỳ chọn)</span>
														</label><span class="woocommerce-input-wrapper"><form:textarea
																path="ghiChu" class="input-text"
																placeholder="Ghi chú về đơn hàng, ví dụ: thời gian hay chỉ dẫn địa điểm giao hàng chi tiết hơn."
																rows="2" cols="5"/></span>
													</p>
												</div>
											</div>
										</div>
																			
										<button type="submit" class="button alt">Xác nhận địa chỉ</button>
										<c:if test="${check eq 'no' || empty shop}">
										<h5>Vui lòng nhập địa chỉ của bạn</h5>
								</c:if>
									</div>
								</div>
								</form:form>
								<!-- large-7 -->
								
								<div class="large-5 col">

									<div class="col-inner has-border">
										<div class="checkout-sidebar sm-touch-scroll">
											<h3 id="order_review_heading">Đơn hàng của bạn</h3>
											<div id="order_review"
												class="woocommerce-checkout-review-order">
												<table
													class="shop_table woocommerce-checkout-review-order-table">
													<thead>
														<tr>
															<th class="product-name">Sản phẩm</th>
															<th class="product-total">Tạm tính</th>
														</tr>
													</thead>
													<tbody>
													<c:set var="total" value="0" />	
													<c:if test="${not empty shop}">
														<c:forEach var="rows" items="${shop}">
														<tr class="cart_item">
															<td class="product-name">${rows.value.getSanPham().getTenSP() }&nbsp; <strong
																class="product-quantity">×&nbsp;${rows.value.getSoLuong()}</strong>
																<dl class="variation">
																	<dt class="variation-Musc">Màu sắc:</dt>
																	<dd class="variation-Musc">
																		<p>${rows.value.getSanPham().getMauSac() }</p>
																	</dd>
																	<dt class="variation-ThngHiu">Size:</dt>
																	<dd class="variation-ThngHiu">
																		<p>${rows.value.getSanPham().getSize() }</p>
																	</dd>																	
																</dl>
															</td>
															<td class="product-total"><span
																class="woocommerce-Price-amount amount"><f:formatNumber value="${rows.value.getSoLuong() * rows.value.getSanPham().getGia()}"/>&nbsp;<span
																	class="woocommerce-Price-currencySymbol">₫</span></span></td>
														</tr>
													<c:set var="total"
													value="${total + rows.value.getSoLuong() * rows.value.getSanPham().getGia()}" />
												</c:forEach>
											</c:if>
													</tbody>
													<tfoot>

														<tr class="cart-subtotal">
															<th>Tạm tính</th>
															<td><span class="woocommerce-Price-amount amount"><f:formatNumber value="${total}"/>&nbsp;<span
																	class="woocommerce-Price-currencySymbol">₫</span></span></td>
														</tr>
														<tr class="woocommerce-shipping-totals shipping ">
															<td class="shipping__inner" colspan="2">
																<table class="shipping__table ">
																	<tbody>
																		<tr>
																			<th>Giao hàng</th>
																			<td data-title="Giao hàng">Nhập địa chỉ của bạn
																				để xem các tùy chọn vận chuyển</td>
																		</tr>
																	</tbody>

																</table>
															</td>
														</tr>
														<tr class="order-total">
															<th>Tổng</th>
															<td><strong><span
																	class="woocommerce-Price-amount amount"><f:formatNumber value="${total}"/>&nbsp;<span
																		class="woocommerce-Price-currencySymbol">₫</span></span></strong></td>
														</tr>


													</tfoot>
												</table>

												<div id="payment" class="woocommerce-checkout-payment">
													<ul class="wc_payment_methods payment_methods methods">
														<li class="wc_payment_method payment_method_cheque">
															<input id="payment_method_cheque" type="radio"
															class="input-radio" name="payment_method" value="cheque"
															checked="checked" data-order_button_text=""> <label
															for="payment_method_cheque"> Kiểm tra thanh toán
														</label>
															<div class="payment_box payment_method_cheque">
																<p>Vui lòng gửi chi phiếu của bạn đến Tên cửa hàng,
																	Đường của cửa hàng, Thị trấn của cửa hàng, Bang / Hạt
																	của cửa hàng, Mã bưu điện cửa hàng.</p>
															</div>
														</li>
														<li class="wc_payment_method payment_method_cod"><input
															id="payment_method_cod" type="radio" class="input-radio"
															name="payment_method" value="cod"
															data-order_button_text=""> <label
															for="payment_method_cod"> Trả tiền mặt khi nhận
																hàng </label>
															<div class="payment_box payment_method_cod"
																style="display: none;">
																<p>Trả tiền mặt khi giao hàng</p>
															</div></li>
													</ul>
													
													<div class="form-row place-order">
													<%-- <c:set var="TaiKhoan" scope="session" value="${TaiKhoan }" /> --%>
														<c:if test="${check eq 'ok' && not empty shop}">
															<form:form action="hoadon.htm" modelAttribute="hoadon">
																<form:input type="hidden" path="taikhoan.tenTaiKhoan"
																	value="${TaiKhoan }" />
																<form:input type="hidden" path="tongTien" value="${total }" />
																<button type="submit" class="button alt">Đặt hàng</button>
															</form:form>
														</c:if>
														
														<c:if test="${check eq 'no' || empty shop}">
															<h4>Bạn phải nhập địa chỉ để thanh toán</h4>
														</c:if>
													</div>
												</div>

											</div>

											<div class="woocommerce-privacy-policy-text">
												<p>
													Thông tin cá nhân của bạn sẽ được sử dụng để xử lý đơn
													hàng, tăng trải nghiệm sử dụng website, và cho các mục đích
													cụ thể khác đã được mô tả trong <a
														href="#"
														class="woocommerce-privacy-policy-link" target="_blank">chính
														sách riêng tư</a>.
												</p>
											</div>
										</div>
									</div>

								</div>
								<!-- large-5 -->

							</div>
							<!-- row -->					
					</div>


				</div>
				<!-- .col-inner -->
			</div>
			<!-- .large-12 -->
		</div>
		<!-- .row -->
	</div>



</main>