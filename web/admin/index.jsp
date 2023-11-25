<%-- 
    Document   : index.jsp
    Created on : 08-Nov-2023, 5:57:49 pm
    Author     : Ritik Mondal
--%>
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

        <!--if admin is not login-->
        <c:if test="${empty adminObj}">
            <c:redirect url="../admin_login.jsp"></c:redirect>

        </c:if>


        <!--Nav bar-->
        <%@include file="adminNavbar.jsp" %>



        <!--admin index body-->

        <div class="container p-5">

            <h1 class="display-5 text-center mb-4">Admin Dashboard</h1>
            <c:if test="${not empty successMsg}">

                <div class="text-center text-success " role="alert">${successMsg}</div>
                <c:remove var="successMsg" scope="session"/>
            </c:if>


            <c:if test="${not empty failMsg}">
                <p class="text-center text-danger " >${failMsg}</p>
                <c:remove var="failMsg" scope="session"/>
            </c:if>


            <div class="row">

                <div class="col-md-4 ">
                    <div class="card">
                        <div class="card-body text-center text-success shadow">
                            <i class="fa-solid fa-user-doctor fa-3x"></i>
                            <p class="text-center display-5">Doctor</p>
                            <br>
                            5
                        </div>
                    </div>
                </div>

                <div class="col-md-4 ">
                    <div class="card">
                        <div class="card-body text-center text-success shadow">
                            <i class="fa-solid fa-hospital-user fa-3x"></i>
                            <p class="text-center display-5">User</p>
                            <br>
                            43
                        </div>
                    </div>
                </div>


                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center text-success shadow">
                            <i class="fa-regular fa-calendar-check fa-3x"></i>
                            <p class="text-center display-5">Appointment</p>
                            <br>
                            451
                        </div>
                    </div>
                </div>


                <div class="col-md-4 mt-2">
                    <div class="card">
                        <div class="card-body text-center text-success shadow">
                            <i class="fa-solid fa-suitcase-medical fa-3x"></i>
                            <p class="text-center display-5">Specialist</p>
                            <br>
                            34
                        </div>
                    </div>
                </div>





            </div>






        </div>
        <!--footer-->

        <%@include file="../Component/footer.jsp" %>
    </body>
</html>
