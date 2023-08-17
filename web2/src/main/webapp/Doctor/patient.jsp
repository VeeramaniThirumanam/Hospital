<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.Appointment"%>
<%@page import="com.db.Dbconnection"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@include file="../compont\allcss.jsp"%>
<body>
 <c:if test="${  not empty succMsg}">
 <c:redirect url="../Docter_login.jsp"></c:redirect>
 </c:if>
<%@include file="nav.jsp"%>


<div class="col-md-10">
		<div class="card paint-card">
			<div class="card-body">
				<p class="fs-3 text-center">Patient Details</p>
				
				 <c:if test="${ not empty succMsg}">
						<p class="text-center text-success fs-3">${succMsg }</p>
						<c:remove var="succMsg"  scope="session"/>
						</c:if>
						
						        <c:if test="${  empty errorMSg}">
								<p class="text-center text-danger fs-3">${errorMSg }</p>
								<c:remove var="errorMSg"  scope="session"/>
						
						</c:if>
						
				
				
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">Gender</th>
							<th scope="col">Age</th>
							<th scope="col">Appointment</th>
							<th scope="col">Email</th>
							<th scope="col">Mob No</th>
							<th scope="col">Diseases</th>
							<th scope="col">Doctor Name</th>
							<th scope="col">Address</th>
							<th scope="col">Status</th>
							<th scope="col">action</th>
							
						</tr>
					</thead>
					<tbody>
						<%
						Doctor d=(Doctor)session.getAttribute("doctObj");
						AppointmentDao dao = new AppointmentDao(Dbconnection.getConn());
						
						List<Appointment> list = dao.getAllAppointmentByDoctorLogin(d.getId());
						for (Appointment ap : list) {
						
						%>
						<tr>
							<th><%=ap.getFullName()%></th>
							<td><%=ap.getGender()%></td>
							<td><%=ap.getAge()%></td>
							<td><%=ap.getAppoinDate()%></td>
							<td><%=ap.getEmail()%></td>
							<td><%=ap.getPhNo()%></td>
							<td><%=ap.getDiseases()%></td>
							<td><%=d.getFullName()%></td>
							<td><%=ap.getAddress()%></td>
							<td><%=ap.getStatus()%></td>
							<td>
							<%if ("pending".equals(ap.getStatus()))
							{%>
							<a href="comment.jsp?id=<%=ap.getId() %>" class ="btn btn-success btn-sm">commond</a>
								<%}else{%>
								
								<a href="#" class ="btn btn-success btn-sm disabled">commond</a>
								<%}
								%>
							
							
						</td>
						</tr>
						<%
						}
						%>


					</tbody>
				</table>

			</div>
		</div>
	</div>




</body>




</html>