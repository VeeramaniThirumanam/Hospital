<%@page import="com.db.Dbconnection"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="compont\allcss.jsp"%>
</head>
<body>
<%@include file="compont\navbar.jsp"%>
<c:if test="${empty userobj }">
		<c:redirect url="User_login.jsp"></c:redirect>
	</c:if>
	

	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-9">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-success">Appointment
							List</p>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appoint Date</th>
									<th scope="col">Diseases</th>
									<th scope="col">Doctor Name</th>
									<th scope="col">Status</th>

								</tr>
							</thead>
							<tbody>
								<%
								User user = (User) session.getAttribute("userobj");
								AppointmentDao dao = new AppointmentDao(Dbconnection.getConn());
								DoctorDao dao2 = new DoctorDao(Dbconnection.getConn());
								List<Appointment> list = dao.getAllAppointmentByLoginUser(user.getId());
								for (Appointment ap : list) {
									Doctor d = dao2.getDoctorById(ap.getDoctorId());
								%>
								<tr>
									<th><%=ap.getFullName()%></th>
									<td><%=ap.getGender()%></td>
									<td><%=ap.getAge()%></td>
									<td><%=ap.getAppoinDate()%></td>
									<td><%=ap.getDiseases()%></td>
									<td><%=d.getFullName()%></td>
									<td>
										<%
										if ("Pending".equals(ap.getStatus())) {
										%> <a href="#" class="btn btn-sm btn-warning">Pending</a> <%
                                              } else {
 %> <%=ap.getStatus()%> <%
 }
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