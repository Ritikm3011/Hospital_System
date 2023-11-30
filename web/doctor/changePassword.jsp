<%--

    Author     : Ritik Mondal
--%>

<%@page import="com.entity.Doctor"%>
<%@page import="com.db.ConnectionProvider"%>
<%@page import="com.entity.Appointment"%>
<%@page import="com.entity.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="javax.servlet.*" %>

<%@page import="com.dao.*" %>
<%@page import="com.db.*" %>


<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <%@include file="../Component/allcss.jsp"%>
    </head>

    <body>
        <!--if doctor is not login-->
        <c:if test="${empty doctorObj}">
            <c:redirect url="../doctor_login.jsp"></c:redirect>
        </c:if>


        <!--nav bar-->
        <%@include file="doctorNavbar.jsp" %>

        <!--Picture-->
        <div class="container p-5">
            <div class="row">
                <div class="col-md-6 offset-md-3 ">
                    <div class="card shadow-lg border-success">
                        <div class="card-header">
                            <h1 class="display-5 text-center">Change Password</h1>



                            <c:if test="${not empty successMsg}">
                                <p class="text-center text-success ">${successMsg}</p>
                                <c:remove var="successMsg" scope="session"/>
                            </c:if>


                            <c:if test="${not empty failMsg}">
                                <p class="text-center text-danger ">${failMsg}</p>
                                <c:remove var="failMsg" scope="session"/>
                            </c:if>



                        </div>
                        <div class="card-body">

                            <form action="../ChangeDoctorPassword" method="POST">
                                <div class="mb-3">
                                    <label class="form-label">Enter Old Password</label>
                                    <input name="oldPassword" required type="password" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Enter New Password</label>
                                    <input name="newPassword" required type="password" class="form-control" >
                                </div>

                                <input type="hidden" name="doctorId" value="${doctorObj.id}">


                                <div class="col-12 text-center">
                                    <button type="reset" class="btn btn-outline-secondary col-md-3" value="Reset"><i class="fa-solid fa-rotate-left"></i>
                                        Reset
                                    </button>

                                    <button type="submit" class="btn btn-success "><i class="fa-solid fa-pen-to-square"></i>
                                        Update Password
                                    </button>


                                </div>

                            </form>

                        </div>

                    </div>


                </div>

            </div>
        </div>

        <!--footer-->
        <br>
        <%@include file="../Component/footer.jsp" %>
    </body>

</html>