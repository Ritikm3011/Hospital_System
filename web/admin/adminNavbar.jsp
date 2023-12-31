<nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <div class="container-fluid">
        <a  class="navbar-brand" href="../index.jsp"><i class="fa-solid fa-stethoscope"></i> MediSyncPortal</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp"><i class="fa-solid fa-user-nurse"></i> Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="doctor.jsp"><i class="fa-solid fa-user-doctor"></i> Doctor</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="viewPatients.jsp"><i class="fa-solid fa-receipt"></i> Patient</a>
                </li>

                <!--         <li class="nav-item">
                          <a class="nav-link active" aria-current="page" href="user_login.jsp"><i class="fa-solid fa-hospital-user"></i> User</a>
                        </li>-->

                <li class="nav-item dropdown">
                    <a class="nav-link active dropdown-toggle " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fa-solid fa-user-nurse"></i> Admin
                    </a>

                   
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href= "../AdminLogout"><i class="fa-solid fa-arrow-right-from-bracket fa-flip"></i> Logout</a></li>
                        
                    </ul>
                </li>

            </ul>

        </div>
    </div>
</nav>


