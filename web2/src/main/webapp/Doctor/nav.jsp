 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@page isELIgnored="false"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fa-regular fa-hospital"></i>Medihome</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
           
        <li class="nav-item">

          <a class="nav-link active" aria-current="page" href="Admin_login.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="patient.jsp">patent</a>
        </li>
        
                
        
              
      
            
       <!-- drop -->
       <form class="d-flex">
        <li class="dropdown"> 
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           <i class="fa-duotone fa-hospital-user"></i>${doctObj.fullName} 
          </a>
         <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">edit </a></li>
            <li><a class="dropdown-item" href="../Logout">Logout</a></li>
            
          </ul> 
       
        </li>
      
      </form>
      
   
        
      </ul>
     
    </div>
  </div>
</nav>