<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div id="register-form-popup" class="lightbox-content" style="margin: 10px auto">
	<div class="woocommerce-notices-wrapper"></div>
		<div class="account-container lightbox-inner">
			<div class="col2-set row row-divided row-large" id="customer_login">
				<div class="col-1 large-12 col pb-0">	
					<div class="account-login-inner">
						<h3 class="uppercase">Đăng ký</h3>
						<form:form class="woocommerce-form woocommerce-form-login login" action="dangky.htm"  modelAttribute="taikhoan">					
							<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
								<label for="username">Địa chỉ email&nbsp;<span class="required">*</span></label>
								<form:input type="text"  path="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Email không đúng" class="woocommerce-Input woocommerce-Input--text input-text"/>
							</p>
							<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
								<label for="username">Tên tài khoản&nbsp;<span class="required">*</span></label>
								<form:input type="text" pattern="^[A-Za-z0-9_]{5,15}$" title="Username có độ dài từ 5 đến 15 kí tự" class="woocommerce-Input woocommerce-Input--text input-text" path="tenTaiKhoan" id="username"/>
							</p>
							<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
								<label for="password">Mật khẩu&nbsp;<span class="required">*</span></label>
								<form:input class="woocommerce-Input woocommerce-Input--text input-text" type="password" path="matkhau" id="password"
								 pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" title="Mật khẩu phải có ít nhất 1 chữ hoa, 1 chữ thường, 1 chữ số và có ít nhất 8 kí tự"/>
							</p>	
							<p class="form-row" style="color: red">
								${error }
							</p>				
							<p class="form-row">						
								<button class="woocommerce-Button button woocommerce-form-login__submit">Đăng ký</button>
							</p>				
						</form:form>
					</div><!-- .login-inner -->			
				</div>
			</div> <!-- .row -->
	</div><!-- .account-login-container -->

</div>