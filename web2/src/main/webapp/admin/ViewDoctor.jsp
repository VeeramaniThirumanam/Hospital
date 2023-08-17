<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.Specalist_dao"%>
<%@page import="com.db.Dbconnection"%>
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@page isELIgnored="false"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../compont/allcss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>

<div class="container-fluid p-3">
		<div class="row">
<div class="col-md-11 ">
				<div class="card paint-card">
					<div class="card-body">
					   <p class="fs-3  text-center">Doctor</p>
					   <table class="table">
  <thead>
    <tr>
      <th scope="col">Full Name</th>
      <th scope="col">Dob</th>
      <th scope="col">Qualification</th>
      <th scope="col">Specialist</th>
    <th scope="col">Email</th>
    <th scope="col">Mob no</th>
    <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <%
								DoctorDao dao2 = new DoctorDao(Dbconnection.getConn());
								List<Doctor> list2 = dao2.getAllDoctor();
								for (Doctor d : list2) {
								%>
								<tr>
									<td><%=d.getFullName()%></td>
									<td><%=d.getDob()%></td>
									<td><%=d.getQualification()%></td>
									<td><%=d.getSpecialist()%></td>
									<td><%=d.getEmail()%></td>
									<td><%=d.getMobno()%></td>
									<td><a href="edit_doctor.jsp?id=<%=d.getId()%>"
										class="btn btn-sm btn-secondary">Edit</a> 
										
										 <a
										href="../deleteDoctor?id=<%=d.getId()%>"
										class="btn btn-sm btn-warning">Delete</a></td>
								</tr>
								<%
								}
								%>



  
	</tbody>
	</table>		   			   </div>
</div>
</div>
			
		   </div>
	     </div>
	

</body>
</html>