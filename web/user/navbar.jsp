<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-stethoscope"></i> MediSyncPortal</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admin_login.jsp"><i class="fa-solid fa-user-nurse"></i> Appointment</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctor_login.jsp"><i class="fa-solid fa-user-doctor"></i> View Appointment</a>
        </li>
        
        
        
         
       
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-user"></i> 
${userObj.name}
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Change Password</a></li>
            <li><a class="dropdown-item" href="../UserLogout">Log out</a></li>
            
          </ul>
        </li>
       
      </ul>
     
    </div>
  </div>
</nav>