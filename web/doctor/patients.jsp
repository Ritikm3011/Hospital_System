<%-- 
    Document   : patients
    Created on : 29-Nov-2023, 11:13:26 am
    Author     : ritik
--%>


<%@page import="java.util.List"%>

<%@page import="com.entity.Appointment"%>
<%@page import="com.db.ConnectionProvider"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.entity.Doctor"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patients</title>
        <%@include file="../Component/allcss.jsp" %>
    </head>
    <body>

        <!--if doctor is not login-->
        <c:if test="${empty doctorObj}">
            <c:redirect url="../doctor_login.jsp"></c:redirect>

        </c:if>


        <!--Nav bar-->
        <%@include file="doctorNavbar.jsp" %>

        <!-- body-->

        <div class="container-fluid p-5 text-center " >

            <div class="row">
                <div class="col-md-12 ">
                    <div class="card border-dark shadow-lg">
                        <div class="card-header">
                            <h1 class="display-5">Patients Details</h1>

                            <!-- success/ fail alert-->
                            <c:if test="${not empty successMsg}">
                                <div class="text-center text-success mb-3" role="alert">
                                    ${successMsg}
                                </div>
                                <c:remove var="successMsg" scope="session" />
                            </c:if>

                            <c:if test="${not empty failMsg}">
                                <p class="text-center text-danger">${failMsg}</p>
                                <c:remove var="failMsg" scope="session" />
                            </c:if>

                        </div>

                        <div class="card-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Gender</th>
                                        <th scope="col">Age</th>
                                        <th scope="col">Appointment Date</th>
                                        <th scope="col">Email Address</th>
                                        <th scope="col">Phone No.</th>
                                        <th scope="col">Symptoms/Disease</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        int i = 0;
                                        Doctor doctor = (Doctor) session.getAttribute("doctorObj");
                                        AppointmentDao appDao = new AppointmentDao(ConnectionProvider.getConnection());
                                        List<Appointment> list = appDao.getAllAppointmentByDoctorId(doctor.getId());
                                        for (Appointment app : list) {
                                            i++;
                                    %>
                                    <tr>
                                        <th scope="row"><%=i%></th>
                                        <td><%=app.getName()%></td>
                                        <td><%=app.getGender()%></td>
                                        <td><%=app.getAge()%></td>
                                        <td><%=app.getAppointmentDate()%></td>
                                        <td><%=app.getEmail()%></td>
                                        <td><%=app.getPhone()%></td>
                                        <td><%=app.getSymptom()%></td>
                                        <td><%=app.getStatus()%></td>
                                        <td>
                                            <a href="#" class="btn btn-outline-success btn-sm"><i class="fa-solid fa-arrow-right-to-bracket"></i></a>
                                        </td>

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
