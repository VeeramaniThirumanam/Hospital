<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.Specalist_dao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.db.Dbconnection"%>
<%@page import="com.dao.DoctorDao"%>
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

<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Doctor Details</p>
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty succMsg}">
							<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<%
						  int id=Integer.parseInt(request.getParameter("id"));
						DoctorDao dao2=new DoctorDao(Dbconnection.getConn());
						
						Doctor da=dao2.getDoctorById(id);
						
						%> 


						<form action="../updateDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									
									value="<%=da.getFullName()%>"required name="fullName" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									value="<%=da.getDob() %>" required name="dob"
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input required
									value="<%=da.getQualification() %>" name="qualification"
									type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="spec"
									required class="form-control">
									<option ><%=da.getSpecialist()%></option>
                                     <%
									Specalist_dao dao=new Specalist_dao(Dbconnection.getConn());
                                     List<Specalist>list=dao.getAllSpecialist();
                                     for(Specalist s:list){%>
                                    	 <option> <%=s.getSpecialistName()%> </option>
                                    <%  }
									%>


								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									value="<%=da.getEmail()%>" required name="email"
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mob No</label> <input type="text"
									value="<%=da.getMobno() %>" required name="mobno"
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									value="<%=da.getPassword() %>>" name="password" type="text"
									class="form-control">
							</div>
							<input type="hidden" name="id" value="<%=da.getId()%>">

							<button type="submit" class="btn btn-primary col-md-12">Update</button>
						</form>
					</div>
				</div>
			</div>




		</div>
	</div>
</body>
</html>