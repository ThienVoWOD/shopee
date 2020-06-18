<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div id="login-form-popup" class="lightbox-content" style="margin: 10px auto">
	<div class="woocommerce-notices-wrapper"></div>
		<div class="account-container lightbox-inner">
			<div class="col2-set row row-divided row-large" id="customer_login">
				<div class="col-1 large-12 col pb-0">	
					<div class="account-login-inner">
						<h3 class="uppercase">Đăng Nhập</h3>
						<form:form class="woocommerce-form woocommerce-form-login login" action="dangnhap.htm" modelAttribute="taikhoan">					
							<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
								<label for="username">Địa chỉ email&nbsp;<span class="required">*</span></label>
								<form:input type="text" class="woocommerce-Input woocommerce-Input--text input-text" path="email"/>
							</p>
							<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
								<label for="password">Mật khẩu&nbsp;<span class="required">*</span></label>
								<form:input class="woocommerce-Input woocommerce-Input--text input-text" type="password" path="matkhau"/>
							</p>		
							<p class="form-row" style="color: red">
								${error }
							</p>			
							<p class="form-row">						
								<button type="submit" class="woocommerce-Button button woocommerce-form-login__submit">Đăng nhập</button>
							</p>				
						</form:form>
					</div><!-- .login-inner -->			
				</div>
			</div> <!-- .row -->
	</div><!-- .account-login-container -->

</div>