<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.dao.*" %>
<%@page import="com.entity.*" %>
<%@page import="com.db.ConnectionProvider" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Patients</title>
        <%@include file="../Component/allcss.jsp" %>
    </head>

    <body>
        <!--if admin is not login-->
        <c:if test="${empty adminObj}">
            <c:redirect url="../admin_login.jsp"></c:redirect>
        </c:if>

        <!--Nav bar-->
        <%@include file="adminNavbar.jsp" %>

        <div class="container-fluid p-3">
            <div class="row">
                <div class="col-md-12">
                    <div class="card border-secondary shadow-lg">
                        <div class="card-header">
                            <h1 class="display-5 text-center">Appointment Details</h1>
                        </div>

                        <div class="card-body">

                            <table class="table table-striped ">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Gender</th>
                                        <th scope="col">Age</th>
                                        <th scope="col">Appointment</th>
                                        <th scope="col">Email Address</th>
                                        <th scope="col">Phone No.</th>
                                        <th scope="col">Disease/Symptoms</th>
                                        <th scope="col">Doctor</th>
                                        <th scope="col">Address</th>
                                        <th scope="col">Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%

                                        AppointmentDao appDao = new AppointmentDao(ConnectionProvider.getConnection());
                                        List<Appointment> list = appDao.getAllAppointment();
                                        
                                        DoctorDao doctorDao = new DoctorDao(ConnectionProvider.getConnection());
                                        
                                        
                                        int i = 0;
                                        for (Appointment app : list) {
                                            i++;
                                            Doctor doctor = doctorDao.getDoctorById(app.getDoctorId());
                                    %>
                                    <tr>
                                        <th scope="row"><%=i%></th>
                                        <td><%=app.getName() %></td>
                                        <td><%=app.getGender() %></td>
                                        <td><%=app.getAge() %></td>
                                        <td><%=app.getAppointmentDate() %></td>
                                        <td><%=app.getEmail() %></td>
                                        <td><%=app.getPhone() %></td>
                                        <td><%=app.getSymptom() %></td>
                                        <td><%=doctor.getName() %></td>
                                        <td><%=app.getAddress() %></td>
                                        <td><%=app.getStatus() %></td>
                                     
                                        

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

        <%@include file="../Component/footer.jsp" %>
    </body>

</html>
