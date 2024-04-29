<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký môn học</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>

<div class="container">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card">
				<div class="card-body">
				<h4 class="text-center">Đăng ký môn học</h4>
				
				
				
				
					<c:if test="${not empty trueP }">
						<p class="text-center text-success">${trueP }</p>
						<c:remove var="trueP " scope="session"/>
					</c:if>
					
					<c:if test="${not empty falseP }">
						<p class="text-center text-danger">${falseP }</p>
						<c:remove var="falseP " scope="session"/>
					</c:if>
				
				
					
					<form action="addMH" method="POST" 
					enctype="multipart/form-data" accept-charset="UTF-8">	
					<input type="hidden" value="${userobj.gmail }" name="gmailDK">
					<input type="hidden" value="${userobj.namesv }" name="nameDK">
					<input type="hidden" value="${userobj.mssv }" name="mssvDK">
					<input type="hidden" value="${userobj.phone }" name="phoneDK">
						
					
					
					<div class="form-group">
					    <label for="exampleInputEmail1">Loại dich vụ</label>
					    <select class="form-control" id="inputStatus" 
					    name="mhLoai">
					    	<option value="Học ghép/Học lại">Học ghép/ Học lại</option>
					    </select>
					    
					  </div>
					
					  <div class="form-group">
					    <label for="exampleInputEmail1">Mã môn học</label>
					    <select class="form-control" id="inputStatus" 
					    name="dkMH">
					    	<option selected>--- (Mã môn học )- (Tên môn học)---</option>
					    	<!-- Năm 1 học kì 1 -->
					    	<option value="(111215009)-(Cơ - Nhiệt)-nam1hk1">(111215009)-(Cơ - Nhiệt) </option>
					    	<option value="(111315006)-(Anh văn 1)-nam1hk1">(111315006)-(Anh văn 1) </option>
					    	<option value=""> </option>
					    	<option value=""> </option>
					    </select>
					    
					  </div>
					
					  <div class="form-group">
					    <label for="exampleInputEmail1">Chọn ca dự</label>
					    <select class="form-control" id="inputStatus" 
					    name="dkCa">
					    	<option selected>--- Thời gian học---</option>
					    	<!-- Năm 1 học kì 1 -->
					    	<option value="Ca1">Bắt đầu từ 6g30 </option>
					    	<option value="Ca2">Bắt đầu từ 9g05 </option>
					    	<option value="Ca3">Bắt đầu từ 12g30 </option>
					    	<option value="Ca4">Bắt đầu từ 15g05 </option>
					    	<option value="CaHe">Trong thời gian hè  </option>
					    </select>
					    
					  </div>
						
					 <div class="form-group">
					    <label for="exampleInputEmail1">Số tiền đóng</label>
					    <select class="form-control" id="inputStatus" 
					    name="dkPrice">
					    	<option selected>--- Số tiền đồng ---</option>
					    	<option value="tinChi">850000</option>
					    	<option value="CaHe">1300000</option>
					    </select>
					    
					  </div>
					  	
					  <div class="form-group">
					    <label for="exampleInputEmail1">Lý do chọn môn học</label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					    name="dkLyDo" >
					  </div>
					
					 <div class="form-group">
					    <label for="exampleInputEmail1">Sinh viên Khóa</label>
					    <input type="number" class="form-control" id="exampleInputEmail1" 
					    name="dkKhoa" >
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Lớp</label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					    name="dkLop" >
					  </div>
					
					 <div class="form-group">
					    <label for="exampleInputEmail1">Chọn hình thức thanh toán</label>
					    <select class="form-control" id="inputStatus" 
					    name="mhPayment">
					    	<option value="CK"> Chuyển khoản</option>
					    	<option value="TM"> Tiền mặt</option>
					    </select>
					    
					  </div>
					
					<!-- thông tin sinh viên đăng ký -->
					  <div class="col">
					  	<p><b>Thực hiện kế hoạch năm học 2023-2024, Phân hiệu trường Đại học Tài nguyên và môi trường thành phố HCM thông
					  	báo triển khai kế hoạch học kỳ hè năm học 2023-2024 như sau:</b></p>
					  	<p class="text-primary">1. Đối tượng sinh viên theo học:</p>
					  	<p>Sinh viên các khóa trở về trước có nguyện vọng học</p>
					  	<p>( với 850000đ cho khóa chính quy và 1300000 cho khóa hè  )</p>
					  	<p class="text-primary">2. Điều kiện mở lớp:</p>
					  	<p>- Các lớp được mở căn cứ trên số lượng sinh viên đăng ký nguyện</p>
					  	<p>- Đối với trường hợp lớp mở riêng do sinh viên nộp đơn yêu cầu số lượng sinh viên/lớp >= 10 sinh viên.</p>




					  	
					  </div>
					  
					  					  
					 
					  
					 
					  
					  
					  
					 
					  <%-- 
					  dang nghien cuu cach nhap ma
					  
					  --%>
					  
					  
					 <div class="">
					  	<button type="submit" class="btn btn-primary">Đăng ký môn học</button>
					  	<a href="add_MH.jsp" class="btn btn-warning"> Hủy</a>
					  	
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