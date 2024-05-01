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
					    	<option value="NEW">MÔN MỚI</option>
					    	<!-- Năm 1  -->
					    	<!-- học kì 1 -->
					    	<option value="(111215009)-(Cơ - Nhiệt)">(111215009)-(Cơ - Nhiệt) </option>
					    	<option value="(111315006)-(Anh văn 1)">(111315006)-(Anh văn 1) </option>
					    	<option value="(170315012)-(Lập trình cơ bản)">(170315012)-(Lập trình cơ bản) </option>
					    	<option value="(111115008)-(Toán cao cấp 1)">(111115008)-(Toán cao cấp 1) </option>
					    	<option value="(170315006)-(Hệ điều hành)">(170315006)-(Hệ điều hành) </option>
					    	<option value="(170315014)-(Nhập môn công nghệ phần mềm)">(170315014)-(Nhập môn công nghệ phần mềm) </option>
					    	<!-- học kì 2 -->
					    	<option value="(111315002)-(Anh văn 2)">(111315002)-(Anh văn 2) </option>
					    	<option value="(121115010)-(Triết học Mác - Lênin)"> (121115010)-(Triết học Mác - Lênin) </option>
					    	<option value="(170315005)-(Kiến trúc máy tính)"> (170315005)-(Kiến trúc máy tính)  </option>
					    	<option value="(111115009)-(Toán cao cấp 2)">(111115009)-(Toán cao cấp 2)  </option>
					    	<option value="(170315025)-(Kỹ năng giao tiếp - thuyết trình)">(170315025)-(Kỹ năng giao tiếp - thuyết trình)  </option>
					    	<option value="(170315002)-(Cơ sở dữ liệu)">(170315002)-(Cơ sở dữ liệu) </option>
					    	<option value="(111215010)-(Điện từ - Quang)"> (111215010)-(Điện từ - Quang) </option>
					    	<!-- Năm 2 -->
					    	<!-- học kì 1 -->
					    	<option value="(170315004)-(Mạng máy tính)"> (170315004)-(Mạng máy tính)  </option>
					    	<option value="(170315007)-(Toán rời rạc)"> (170315007)-(Toán rời rạc)  </option>
					    	<option value="(170315013)-(Hệ quản trị cơ sở dữ liệu)"> (170315013)-(Hệ quản trị cơ sở dữ liệu)  </option>
					    	<option value="(121115011)-( Kinh tế chính trị Mác - Lênin)"> (121115011)-( Kinh tế chính trị Mác - Lênin) </option>
					    	<option value="(121115015)-(Pháp luật đại cương)"> (121115015)-(Pháp luật đại cương)  </option>
					    	<option value="(111115010)-(Toán cao cấp 3)"> (111115010)-(Toán cao cấp 3)  </option>
					    	<option value="(111115006)-(Phương pháp tính)"> (111115006)-(Phương pháp tính)   </option>
					    	<option value="(111115011)-(Xác suất thống kê)">(111115011)-(Xác suất thống kê) </option>
					    	<!-- học kì 2 -->
					    	<option value="(170315011)-(Cấu trúc dữ liệu và giải thuật)-nam2hk2">(170315011)-(Cấu trúc dữ liệu và giải thuật) </option>
					    	<option value="(170315010)-(Lập trình hướng đối tượng)-nam2hk2"> (170315010)-(Lập trình hướng đối tượng) </option>
					    	<option value="(121115012)-(Chủ nghĩa xã hội khoa học)-nam2hk2">(121115012)-(Chủ nghĩa xã hội khoa học) </option>
					    	<option value="(170215004)-(Viễn thám cơ bản)-nam2hk2">(170215004)-(Viễn thám cơ bản) </option>
					    	<option value="(170315017)-(Lập trình web)-nam2hk2">(170315017)-(Lập trình web) </option>
					    	<option value="(170315008)-(Lý thuyết đồ thị)-nam2hk2"> (170315008)-(Lý thuyết đồ thị)</option>
					    	<option value="(170315009)-(Quản trị mạng)-nam2hk2">(170315009)-(Quản trị mạng) </option>
					    	<!-- Năm 3 -->
					    	<!-- học kì 1 -->
					    	<option value="(170314013)-(Hệ quản trị cơ sở dữ liệu)"> (170314013)-(Hệ quản trị cơ sở dữ liệu) </option>
					    	<option value="(170214001)-(Cơ sở dữ liệu nâng cao)"> (170214001)-(Cơ sở dữ liệu nâng cao)  </option>
					    	<option value="(170214052)-(Phân tích và thiết kế HTTT)"> (170214052)-(Phân tích và thiết kế HTTT) </option>
					    	<!-- <option value="(170215004)-(Viễn thám cơ bản)-nam3hk1">(170215004)-(Viễn thám cơ bản) </option> -->
					    	<option value="(170314016)-(Công nghệ Java)"> (170314016)-(Công nghệ Java)  </option>
					    	<option value="(170114007)-(Công nghệ dữ liệu lớn)"> (170114007)-(Công nghệ dữ liệu lớn) </option>
					    	<option value="(121114014)-(Lịch sử Đảng Cộng sản Việt Nam)">(121114014)-(Lịch sử Đảng Cộng sản Việt Nam)  </option>
					    	<!-- học kì 2 -->
					    	<option value="(170214005)-(Viễn thám ứng dụng)"> (170214005)-(Viễn thám ứng dụng)  </option>
					    	<option value="(170314015)-( Quản trị mạng nâng cao)">(170314015)-( Quản trị mạng nâng cao) </option>
					    	<option value="(170314018)-(Quản lý dự án phần mềm)"> (170314018)-(Quản lý dự án phần mềm)  </option>
					    	<option value="(170114002)-(Phát triển phần mềm mã nguồn mở)">(170114002)-(Phát triển phần mềm mã nguồn mở)  </option>
					    	<option value="(170214006)-( Thành lập bản đồ chuyên đề)">(170214006)-( Thành lập bản đồ chuyên đề) </option>
					    	<option value="(170114005)-(Lập trình GIS)">(170114005)-(Lập trình GIS)  </option>
					    	<option value="(170314019)-(Đảm bảo chất lượng và kiểm thử phần mềm)"> (170314019)-(Đảm bảo chất lượng và kiểm thử phần mềm) </option>
					    	<!-- Năm 4 -->
					    	<!-- học kì 1 -->
					    	<option value="(170114003)-(Trí tuệ nhân tạo)"> (170114003)-(Trí tuệ nhân tạo) </option>
					    	<option value="(170214007)-(Thương mại điện tử)">(170214007)-(Thương mại điện tử) </option>
					    	<option value="(170114009)-(Phương pháp NCKH)">(170114009)-(Phương pháp NCKH)  </option>
					    	<option value="(170314020)-(Phương pháp phát triển phần mềm hướng đối tượng)"> (170314020)-(Phương pháp phát triển phần mềm hướng đối tượng)   </option>
					    	<option value="(170314024)-(Công nghệ .Net)">(170314024)-(Công nghệ .Net)  </option>
					    	<option value="(170114023)-(Thực tập tốt nghiệp)">(170114023)-(Thực tập tốt nghiệp)  </option>
					    	<!-- học kì 2 -->
					    	<option value="(170114004)-(Công nghệ lập trình đa nền tảng cho ứng dụng di động)"> (170114004)-(Công nghệ lập trình đa nền tảng cho ứng dụng di động)   </option>
					    	<!-- <option value="(121115015)-(Pháp luật đại cương)-nam4hk2"> (121115015)-(Pháp luật đại cương)  </option> -->
					    	<option value="(170314021)-(Bảo mật mạng máy tính và hệ thống)"> (170314021)-(Bảo mật mạng máy tính và hệ thống)  </option>
					    	<option value="(170114006)-(An toàn và bảo mật HTTT)">(170114006)-(An toàn và bảo mật HTTT) </option>
					    	<option value="(170114008)-(Hệ hỗ trợ ra quyết định)">  (170114008)-(Hệ hỗ trợ ra quyết định) </option>
					    	<option value="(170114022)-(Đồ án Công nghệ phần mềm)-">(170114022)-(Đồ án Công nghệ phần mềm) </option>
					    	<!-- Tốt nghiệp  -->
					    	<option value="(170114024)-(Khóa luận tốt nghiệp)-KLTN"> (170114024)-(Khóa luận tốt nghiệp)  </option>
					    </select>
					    
					  </div>
					
					  <div class="form-group">
					    <label for="exampleInputEmail1">Chọn ca dự</label>
					    <select class="form-control" id="inputStatus" 
					    name="dkCa">
					    	<option selected>--- Thời gian học---</option>
					    	<!-- Năm 1 học kì 1 -->
					    	<option value="Ca123">Bắt đầu từ 6g30 </option>
					    	<option value="Ca456">Bắt đầu từ 9g05 </option>
					    	<option value="Ca789">Bắt đầu từ 12g30 </option>
					    	<option value="Ca012">Bắt đầu từ 15g05 </option>
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