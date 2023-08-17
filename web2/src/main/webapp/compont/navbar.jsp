 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@page isELIgnored="false"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fa-regular fa-hospital"></i>Medihome</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
              <c:if test="${empty userobj}" >
        <li class="nav-item">

          <a class="nav-link active" aria-current="page" href="Admin_login.jsp">Admin</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Docter_login.jsp">Docter</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_appointment.jsp">Appointment</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="User_login.jsp"><i class="fa-duotone fa-hospital-user"></i>User</a>
        </li> 
        </c:if>
        
        
        <c:if test="${not empty userobj}">
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_appointment.jsp">Appointment</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="view_appointment.jsp"> view Appointment</a>
        </li>
      
      
            
       <!-- drop -->
        <li class="nav-item dropdown"> 
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            ${userobj.name}
          </a>
         <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Change password</a></li>
            <li><a class="dropdown-item" href="userlogut">Logout</a></li>
            
          </ul> 
       
        </li>
      
       </c:if>
      
   
        
      </ul>
     
    </div>
  </div>
</nav>