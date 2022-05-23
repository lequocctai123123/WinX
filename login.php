<?php 
	include 'inc/header.php';
	// include 'inc/slider.php';
?>

<?php
	$login_check = Session::get('customer_login');
	if($login_check) {
		header('Location:order.php');
	}
?>

<?php 
	if ($_SERVER['REQUEST_METHOD']=== 'POST' && isset($_POST['submit'])) {
		$insertCustomers = $cs->insert_customers($_POST);
	}
?>

<?php 
	if ($_SERVER['REQUEST_METHOD']=== 'POST' && isset($_POST['login'])) {
		$login_Customers = $cs->login_customers($_POST);
	}
?>

<div class="main">
	<div class="content">
		<div class="login_panel">
			<h3>ĐĂNG NHẬP</h3>
			<?php
				if(isset($login_Customers)) {
					echo $login_Customers;	
				}
			?>
			<form action="" method="POST">
					<input type="text" name="email" class="field" placeholder="Email...">
					<input type="password" name="password" class="field" placeholder="Password...">
				<p class="note"> <a href="#">Quên mật khẩu</a></p>
					<div class="buttons"><div><input type="submit" name="login" class="grey" value="Đăng nhập" style="background-color:blueviolet;color:white; padding:5px 15px"></div></div>
			</form>
		</div>

		<div class="register_account">
			<h3>ĐĂNG KÝ</h3>
			<?php
				if(isset($insertCustomers)) {
					echo $insertCustomers;	
				}
			?>
			<form action="" method="POST">
					<table>
						<tbody>
						<tr>
						<td>
							<div>
							<input type="text" name="name" placeholder="Họ tên..." >
							</div>
							
							<div>
							<input type="text" name="city" placeholder="Quốc gia...">
							</div>
							
							<div>
								<input type="text" name="zipcode" placeholder="Mã Zipcode...">
							</div>
							<div>
								<input type="text" name="email" placeholder="Email...">
							</div>
						</td>
						<td>
						<div>
							<input type="text" name="address" placeholder="Địa chỉ...">
						</div>
					<div>
						<select id="country" name="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Thành phố...</option>         
							<option value="HCM">Hồ Chí Minh</option>
							<option value="HN">Hà Nội</option>
							

					</select>
					</div>		        
	
				<div>
				<input type="text" name="phone" placeholder="Số điện thoại...">
				</div>
				
				<div>
					<input type="text" name="password" placeholder="Password...">
				</div>
				</td>
			</tr> 
			</tbody></table> 
		<div class="search"><div><input type="submit" name="submit" class="grey" value="Tạo tài khoản" style="background-color:blueviolet;color:white; padding:5px 15px"></div></div>
			<p class="terms"><a href="#">Điều khoản</a>.</p>
			<div class="clear"></div>
			</form>
		</div>  	
	<div class="clear"></div>
	</div>
</div>

<?php 
	include 'inc/footer.php';
?>