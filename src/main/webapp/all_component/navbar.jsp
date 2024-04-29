<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<div class="container-fluid p-3">
	<div class="row bg-success">
		<div class="col-md-4">
			<h3 class="text-light">TRƯỜNG ĐẠI HỌC TÀI NGUYÊN VÀ MÔI TRƯỜNG TP.HCM</h3>			
		</div>
		<div class="col-md-5"></div>
		
		<c:if test="${not empty userobj }">
			<div class="col-md-3">
			<a href="" class="btn btn-warning">${userobj.namesv }</a>
			<a data-toggle="modal" data-target="#exampleModalCenter"
							class="btn btn-primary text-white"><i 
							class="fa fa-sign-in-alt"></i> Đăng xuất</a>
			</div>
		</c:if>
		
		<c:if test="${empty userobj }">
			<div class="col-md-3">
			<a href="login.jsp" class="btn btn-primary"> Đăng nhập</a>
			<a href="register.jsp" class="btn btn-primary"> Đăng ký</a>
			</div>
		
		</c:if>
	
	</div>
</div>

<!-- Logout model -->

<!--logOut model -->

<!--
	<button type="button" 
	
	class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter"
	
	>
	  Launch demo modal
	</button>
  -->


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" 
	role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Thông báo</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body ">
      	<div class="text-center">
	        <h4>Bạn muốn đăng xuất</h4>
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Quay lại</button>
	        <a href="logOut" type="button" class="btn btn-primary">Đồng ý</a>
        </div>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>


<!-- oooooooooooo -->



<nav class="navbar navbar-expand-lg navbar-dark bg-xanhlight">
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><i class="fa-solid fa-house"></i> Trang chủ<span class="sr-only">(current)</span></a>
      </li>
      
      
      
        <c:if test="${not empty userobj }">
		<li class="nav-item active">
        	<a class="nav-link" href="sinhVien.jsp"><i class="fa-regular fa-address-card"></i> Sinh viên<span class="sr-only">(current)</span></a>
      	</li>
		</c:if>
		
      
    </ul>
    <form class="form-inline my-2 my-lg-0" action="search_ALL.jsp" method="post">
      <input class="form-control mr-sm-2" type="search" name="timKiem"
       placeholder="Search" aria-label="Search">
      <button class="btn btn-warning my-2 my-sm-0" type="submit" >Search</button>
		
		
    </form>
  </div>
</nav>