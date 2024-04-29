<%@page import="com.entity.user_SV"%>
<%@page import="com.entity.monOrder"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.khoaHocDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sinh viên</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>

<%
	
	user_SV u = (user_SV)session.getAttribute("userobj");

%>

<br>
<h2>Danh sách đăng ký</h2>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Loại dịch vụ</th>
      <th scope="col">(Mã môn học )- (Tên môn học)</th>
      <th scope="col">Chọn ca dự</th>
      <th scope="col">Số tiền đóng</th>
 	  <th scope="col">Chọn hình thức thanh toán</th>
 	  <th scope="col">Khóa</th>
 	  <th scope="col">Lớp</th>
 	  <!--  <th scope="col">Xác nhận đăng ký</th> -->
 	 
    </tr>
  </thead>
  <tbody>
  
	  <%
	  	
	  	khoaHocDAOImpl dao = new khoaHocDAOImpl(DBConnect.getConn());
	    List<monOrder> list = dao.getMonHocByGmail(u.getGmail());
	  	for(monOrder mon : list) 
	  	{%>
	  		<tr>
		      <td><%=mon.getId() %></td>
		      <td><%=mon.getLoaiDV() %></td>
		      <td><%=mon.getMa_tenMH() %></td>
		      <td><%=mon.getTimeMH() %></td>
		      <td><%=mon.getPrice() %></td>
		      <td><%=mon.getPayment() %></td>
		      <td><%=mon.getKhoaSV() %></td>
		      <td><%=mon.getClassSV() %></td>
		      <!-- 
		      <td>
			       <a href="add_Inform.jsp" class="btn btn-warning"> Xác nhận</a>
		      </td>
		       -->
		    </tr>
	  	<%}
	  %>
  
  
  </tbody>
</table>

<br>
<%@include file="all_component/footer.jsp" %>
</body>
</html>