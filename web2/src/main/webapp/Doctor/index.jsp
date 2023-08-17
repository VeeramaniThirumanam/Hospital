<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../compont\allcss.jsp"%>

</head>
<body>
<c:if test="${empty doctObj }">
<c:redirect url="Docter_login.jsp"></c:redirect>
</c:if>
<%@include file="nav.jsp"%>

<div class="container p-5">
<div class="row">
			<div class="col-md-4 offset-md-2">
				<div class="card paint-card">
					<div class="card-body text-center text-secondary">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							Doctor <br>12
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 offset-md-2">
				<div class="card paint-card">
					<div class="card-body text-center text-secondary">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							total Appointment <br> 12
						</p>
					</div>
				</div>
			</div>
			</div>
</body>
</html>