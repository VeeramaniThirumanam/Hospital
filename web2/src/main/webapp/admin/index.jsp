<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../compont/allcss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<!-- cards -->
<div class="container p-5">

              
<p class="text-center fs-3">Admin Dashboard</p>

<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-secondary">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							Doctor <br>
						</p>
					</div>
				</div>
			</div>

<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-secondary">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							 view Doctor <br>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-secondary">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
							User <br>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-secondary">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Total Appointment <br>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4 mt-2">

				<div class="card paint-card " data-bs-toggle="modal"
					data-bs-target="#exampleModal">
					<div class="card-body text-center text-secondary">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Specialist <br>
						</p>
					</div>
				</div>

			</div>

<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form action="../addspecalist" method="post">
       <div class="form-group">
       <label> enter Specalist name</label>
       <input  type="text" name="specalName" class="form-control">
       </div>
      <div class="text-center mt-3"> <button type="submit" class="btn btn-primary"> Add</button></div>
      </form>
    </div>
  </div>
</div>

		</div>
	
</div>
</body>
</html>