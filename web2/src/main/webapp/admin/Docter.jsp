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
	<div class="container-fluid p-5">
		<div class="row">

			<div class="col-md-4 offset-md-4 ">
				<div class="card paint-card">
					<div class="card-body">
					
					 <c:if test="${ not empty succMsg}">
						<p class="text-center text-success fs-3">${succMsg }</p>
						<c:remove var="succMsg"  scope="session"/>
						</c:if>
						
						<c:if test="${ not empty errorMsg}">
								<p class="text-center text-danger fs-3">${errorMsg }</p>
								<c:remove var="errorMSg"  scope="session"/>
						
						</c:if>
						<p class="fs-3 text-center">Add Doctor</p>
						<form action="../add" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required name="fullname" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									required name="dob" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input required
									name="qualification" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="spec"
									required class="form-control">
									<option>--select--</option>
									
                                    	<% Specalist_dao dao=new Specalist_dao(Dbconnection.getConn());
                                    	List<Specalist> list=dao.getAllSpecialist();
                                    	
                                    	for(Specalist s:list){%>
                                    		
                                    		<option><%=s.getSpecialistName()%></option>
                                    		
                                    	<%}%>								
									<option>--dem0--</option>

								

								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									required name="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mob No</label> <input type="text"
									required name="mobno" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>

							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>


  
			
		</div>
	</div>

</body>
</html>