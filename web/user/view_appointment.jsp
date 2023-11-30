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
        <title>user_appointment</title>
        <%@include file="../Component/allcss.jsp"%>
    </head>

    <body>
        <!--if user is not login-->
        <c:if test="${empty userObj}">
            <c:redirect url="../user_login.jsp"></c:redirect>
        </c:if>


        <!--nav bar-->
        <%@include file="userNavbar.jsp" %>
        <br>
        <!--Picture-->
        <div class="container-fluid pt-2">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="card shadow ">
                        <div class="card-header">
                            <h1 class="display-5 text-center">Appointment List</h1>
                        </div>
                        <div class="card-body">

                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Gender</th>
                                        <th scope="col">Age</th>
                                        <th scope="col">Appointment date</th>
                                        <th scope="col">Symptom/Disease</th>
                                        <th scope="col">Doctor's Name</th>
                                        <th scope="col">Status/Comment</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        int i = 0;
                                        User user = (User) session.getAttribute("userObj");
                                        AppointmentDao appDao = new AppointmentDao(ConnectionProvider.getConnection());
                                        DoctorDao doctorDao = new DoctorDao(ConnectionProvider.getConnection());

                                        List<Appointment> list = appDao.getAllAppointmentByUserId(user.getId());

                                        for (Appointment app : list) {
                                            i++;
                                            Doctor doctor = doctorDao.getDoctorById(app.getDoctorId());
                                    %>
                                    <tr>
                                        <th scope="row"><%=i%></th>
                                        <td><%=app.getName()%></td>
                                        <td><%=app.getGender()%></td>
                                        <td><%=app.getAge()%></td>
                                        <td><%=app.getAppointmentDate()%></td>
                                        <td><%=app.getSymptom()%></td>
                                        <td><%=doctor.getName()%></td>

                                        <!--Status/Comment-->
                                        <%
                                            if ("Pending".equals(app.getStatus())) {
                                        %>
                                        <td>  <a href="#" class="btn btn-sm btn-warning"><i class="fa-regular fa-clock"></i> Pending</a>  </td>
                                        <%
                                        } else if ("Accepted".equals(app.getStatus())) {
                                        %>
                                        <td>  <a href="#" class="btn btn-sm btn-success"><i class="fa-regular fa-circle-check"></i> Accepted</a>  </td>
                                        <%
                                        } else if ("Rejected".equals(app.getStatus())) {
                                        %>
                                        <td>   <a href="#" class="btn btn-sm btn-danger"><i class="fa-regular fa-circle-xmark"></i> Rejected</a>  </td>
                                        <%
                                        } else {
                                        %>
                                        <td><%=app.getStatus()%></td>
                                        <%
                                            }
                                        %>


                                    </tr>
                                    <%
                                        }
                                    %>

                                </tbody>
                            </table>

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