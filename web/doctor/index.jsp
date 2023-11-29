
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin_index</title>
        <%@include file="../Component/allcss.jsp" %>
    </head>
    <body>

        <!--if doctor is not login-->
        <c:if test="${empty doctorObj}">
            <c:redirect url="../doctor_login.jsp"></c:redirect>

        </c:if>


        <!--Nav bar-->
        <%@include file="doctorNavbar.jsp" %>

        <!--Doctor index/home body-->

        <div class="container p-5 text-center " >
            <h1 class="display-5 text-center mb-4 pb-1">Doctor Dashboard</h1>
            
            <div class="row text-success ">
                
                <div class="col-md-4 offset-md-2 ">
                    <div class="card shadow ">
                        <div class="card-body">
                            <h5 class="card-title"><i class="fa-solid fa-user-doctor fa-3x"></i></h5>
                            <h5 class="card-text">Doctor</h5>
                            <br>5
                           
                        </div>
                    </div>
                </div>
                
                 <div class="col-md-4 ">
                    <div class="card shadow">
                        <div class="card-body">
                            <h5 class="card-title"><i class="fa-solid fa-receipt fa-3x"></i></i></h5>
                            <h5 class="card-text">Appointments</h5>
                            <br>14
                           
                        </div>
                    </div>
                </div>
            </div>

        </div>



        <!--footer-->

        <%@include file="../Component/footer.jsp" %>
    </body>
</html>
