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
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Docter.jsp">Docter</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="ViewDoctor.jsp"> view Docter</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="">patient</a>
        </li>
        
       </ul>
       <!------------------------------------------------ dropdown ------------------------------------------------------------------------ -->
       <form class="d-flex">
       <div class="dropdown">
  <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
    Admin
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item" href="../adminLogut">logout</a></li>
      </ul>
</div>
     </form>
    </div>
  </div>
</nav>