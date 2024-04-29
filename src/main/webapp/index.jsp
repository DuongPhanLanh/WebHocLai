<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>

<div class="container">
	<h3 class="text-center">Thông báo</h3>
	<div class="row">
	<div class="col-md-4">
	
	<c:if test="${not empty userobj }">
		<a href="add_MH.jsp">
		<div class="card crd-ho ">
			<div class="card-body text-center">
			<!-- Nguồn ảnh: https://dnpu.edu.vn/knn-thong-bao-dang-ki-hoc-lai-cai-thien-ghep-voi-k13-hoc-ki-2-nam-hoc-2023-2024 -->
			<img alt="" src="img/thongbao.png" style="width: 250px; height: 200px" 
				class="img-thumblin">
				<p>Đăng kí học lại, cải thiện ghép với Sinh viên năm học 2023- 2024</p>							
			</div>		
		</div>
	</a>		
	</c:if>
	
	<c:if test="${empty userobj }">
		<a href="login.jsp">
		<div class="card crd-ho ">
			<div class="card-body text-center">
			<!-- Nguồn ảnh: https://dnpu.edu.vn/knn-thong-bao-dang-ki-hoc-lai-cai-thien-ghep-voi-k13-hoc-ki-2-nam-hoc-2023-2024 -->
			<img alt="" src="img/thongbao.png" style="width: 250px; height: 200px" 
				class="img-thumblin">
				<p>Đăng kí học lại, cải thiện ghép với Sinh viên năm học 2023- 2024</p>							
			</div>		
		</div>
	</a>		
	</c:if>	
	</div>
	
		
		
	
			
	</div>
</div>	

<%@include file="all_component/footer.jsp" %>
</body>
</html>