<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
<div class="container">
	<div class="row mt-2">
		<div class="col-md-5 offset-md-4">
			<div class="card">
				<div class="card-body">
				<h4 class="text-center">Đăng ký sinh viên</h4>
				
				
				<c:if test="${not empty failMess }">
					<h5 class="text-center text-danger">${failMess}</h5>
					<c:remove var="failedMes" scope="session"/>
				</c:if>
				 
				
			
			
					<form action="register" method="post">
					  <div class="form-group">
					    <label for="exampleInputEmail1">Thêm Email </label>
					    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
					    required="required" name="mhGmail" placeholder="Nhập Gmail">
					    
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Tên người dùng </label>
					    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
					    required="required" name="mhName" placeholder="Nhập tên">
					    
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputPassword1">Tạo Mật khẩu</label>
					    <input type="password" class="form-control" id="exampleInputPassword1"
					    required="required" name="mhPassword">
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Mã số sinh viên </label>
					    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
					    required="required" name="mhMSSV" placeholder="Nhập `1111` nếu ko phải sinh viên trường ">
					  </div>
					  
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Số điện thoại </label>
					    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
					    required="required" name="mhPhone" placeholder="Nhập SĐT">
					  </div>
					  
					  <div class="form-check">
					    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
					    <label class="form-check-label" for="exampleCheck1">Chấp nhận nội quy và quy định trường</label>
					  </div>
					  <div class="">
					  	<button type="submit" class="btn btn-primary">Đăng ký</button> 
					  	<br>					  	
					  </div>
					  
					</form>
					
				</div>		
			</div>			
		</div>
	</div>
</div>	
<%@include file="all_component/footer.jsp" %>

</body>
</html>