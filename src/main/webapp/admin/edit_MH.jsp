<%@page import="com.entity.monOrder"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.khoaHocDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký môn học</title>
<%@include file="allCss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>

<div class="container">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card">
				<div class="card-body">
				<h4 class="text-center">Đăng ký môn học</h4>


				<%				
				int id = Integer.parseInt(request.getParameter("ID"));
				khoaHocDAOImpl  dao = new khoaHocDAOImpl(DBConnect.getConn());
				monOrder m = dao.getMonhocById(id);
				
				%>	
					
					<form action="../editMonHoc" method="POST" 
					enctype="multipart/form-data" accept-charset="UTF-8">
						
					<input type="text" name="mID" value="<%=m.getId()%>">
						
					  <div class="form-group">
					    <label for="exampleInputEmail1">Gmail sinh viên</label>
					    <input type="email" class="form-control" id="exampleInputEmail1" 
					    name="mGmail" value="<%=m.getGmailSV() %>">
					  </div>
					  <div class="form-group">
					    <label for="exampleInputEmail1">Tên sinh viên</label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					    name="mTen" value="<%=m.getNameSV() %>">
					  </div>
					  <div class="form-group">
					    <label for="exampleInputEmail1">Mã số sinnh viên</label>
					    <input type="number" class="form-control" id="exampleInputEmail1" 
					    name="mMssv" value="<%=m.getMssv() %>">
					  </div>
					  <div class="form-group">
					    <label for="exampleInputEmail1">Số điện thoại</label>
					    <input type="number" class="form-control" id="exampleInputEmail1" 
					    name="mphone" value="<%=m.getPhone() %>">
					  </div>
					  <div class="form-group">
					    <label for="exampleInputEmail1">Sinh viên Khóa</label>
					    <input type="number" class="form-control" id="exampleInputEmail1" 
					    name="mKhoa" value="<%=m.getKhoaSV() %>">
					  </div>
					  
					  <div class="form-group">
					    <label for="exampleInputEmail1">Lớp</label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					    name="mLop" value="<%=m.getClassSV() %>">
					  </div>
					  
					 <div class="form-group">
					    <label for="exampleInputEmail1">Loại dịch vụ muốn thay đổi</label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					    name="mLoai" value="<%=m.getLoaiDV() %>">
					  </div>
					<div class="form-group">
					    <label for="exampleInputEmail1">Mã-tên môn học thay đổi</label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					    name="mMH" value="<%=m.getMa_tenMH() %>">
					  </div>
					<div class="form-group">
					    <label for="exampleInputEmail1">Ca dự thay đổi</label>
					    <input type="text" class="form-control" id="exampleInputEmail1" 
					    name="mCa" value="<%=m.getTimeMH() %>">
					  </div>
					
					
						
					
					 <div class="">
					  	<button type="submit" class="btn btn-primary">Cập nhật</button>
					  </div>
					</form>
					
				</div>		
			</div>			
		</div>
	</div>
</div>

<%@include file="footer.jsp" %>
</body>
</html>