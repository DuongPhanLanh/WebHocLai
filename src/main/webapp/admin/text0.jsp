<%@page import="com.entity.monOrder"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.khoaHocDAOImpl"%>
<%@page import="com.entity.user_SV"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN</title>
<%@include file="allCss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<h3>Danh sách đăng ký</h3>
					<c:if test="${not empty trueU }">
						<h5 class="text-center text-success">${trueU }</h5>
						<c:remove var="trueU " scope="session"/>
					</c:if>
					
					<c:if test="${not empty faileU }">
						<h5 class="text-center text-danger">${faileU }</h5>
						<c:remove var="faileU " scope="session"/>
					</c:if>

<table class="table table-bordered">
  <thead>
    <tr>
     <th scope="col">ID</th>
     
      <th scope="col">Loại dịch vụ</th>
      <th scope="col">(Mã môn học )- (Tên môn học)</th>
      <th scope="col">Chọn ca dự</th>
      <th scope="col">Số tiền đóng</th>
      <th scope="col">Lý do đăng ký</th>
      <th scope="col">Chọn hình thức thanh toán</th>
      
      <th scope="col">Gmail đăng ký</th>
      <th scope="col">Tên sinh viên</th>
      <th scope="col">Mã số sinh viên</th>
      <th scope="col">Số điện thoại</th>
      
 	  <th scope="col">Khóa</th>
 	  <th scope="col">Lớp</th>
 	  <th scope="col">Xem xét</th>
    </tr>
  </thead>
  <tbody>
    <%
	  	khoaHocDAOImpl dao = new khoaHocDAOImpl(DBConnect.getConn());
	    List<monOrder> list = dao.getAllMonHoc();
	  	for(monOrder mon : list) 
	  	{%>
	  		<tr>
	  		  <td><%=mon.getId() %></td>
		      <td><%=mon.getLoaiDV() %></td>
		      <td><%=mon.getMa_tenMH() %></td>
		      <td><%=mon.getTimeMH() %></td>
		      <td><%=mon.getPrice() %></td>
		      <td><%=mon.getReasonMMH() %></td>
		      <td><%=mon.getPayment() %></td>
		      
		      <td><%=mon.getGmailSV() %></td>
		      <td><%=mon.getNameSV() %></td>
		      <td><%=mon.getMssv() %></td>
		      <td><%=mon.getPhone() %></td>
		      
		      <td><%=mon.getKhoaSV() %></td>
		      <td><%=mon.getClassSV() %></td>	      
		      <td>
		      	<a href="edit_MH.jsp?ID=<%=mon.getId() %>" class="btn btn-warning"> Chỉnh sửa</a>
			    <a href="../delete?ID=<%=mon.getId() %>" class="btn btn-danger"> REMOVE</a>
		      </td>
		    </tr>
	  	<%}
	  %>
  </tbody>
</table>
<%@include file="footer.jsp" %>
</body>
</html>