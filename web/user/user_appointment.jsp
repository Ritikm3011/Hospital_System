<%-- 
    Author : Ritik Mondal 
--%>

<%@page import="com.entity.Doctor"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="javax.servlet.*" %>

<%@page import="com.dao.DoctorDao"%>
<%@page import="com.db.ConnectionProvider"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>user_appointment</title>
        <%@include file="../Component/allcss.jsp" %>
    </head>

    <body>
        <!--if admin is not login-->
        <c:if test="${empty userObj}">
            <c:redirect url="../user_login.jsp"></c:redirect>
        </c:if>

        <!--nav bar-->
        <%@include file="userNavbar.jsp" %>

        <!--Picture-->
        <div class="container-fluid p-3">
            <div class="row">
                <div class="col-md-5 p-5 ">
                    <img
                        class="shadow bg-light rounded"
                        src="../img/appointment.jpg"
                        alt="doctor's img"
                        height="600"
                        />
                </div>

                <!--User Appointment form-->
                <div class="col-md-7 p-3">
                    <div class="card border-secondary shadow-lg">
                        <div class="card-header">
                            <h1 class="display-5 text-center">Book Appointment</h1>

                            <!--Alert-->
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
                            <form class="row g-3" action="../UserAppointment" method="POST">

                                <input type="hidden" name="userId" value="${userObj.id}">

                                <div class="col-md-6">
                                    <label class="form-label">Name</label>
                                    <input required name="name" type="text" class="form-control " />
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Gender</label>
                                    <select required class="form-control" name="gender">
                                        <option disabled selected>---select---</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    </select>
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label">Age</label>
                                    <input required name="age" type="number" class="form-control" />
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Appointment Date</label>
                                    <input name="appointmentDate" required type="date" class="form-control" />
                                </div>

                                <div class="col-md-6">
                                    <label for="inputEmail4" class="form-label">Email</label>
                                    <input name="email" required type="email" class="form-control" id="inputEmail4" />
                                </div>
                                <div class="col-md-6">
                                    <label  for="inputPassword4" class="form-label"
                                            >Phone No.</label
                                    >
                                    <input required name="phone" type="text" class="form-control" />
                                </div>

                                <div class="col-md-12">
                                    <label class="form-label"
                                           >Please explain your Problem/Symptoms in brief</label
                                    >
                                    <input  name="symptom" type="text" class="form-control" />
                                </div>

                                <div class="col-md-12">
                                    <label class="form-label">Doctor</label>
                                    <select required class="form-control" name="doctorId">
                                        <option disabled selected>---select doctor---</option>
                                        <%
                                            DoctorDao dao = new DoctorDao(ConnectionProvider.getConnection());
                                            List<Doctor> list = dao.getAllDoctor();
                                            for (Doctor d : list) {
                                        %>
                                        <option value="<%=d.getId()%>"><%=d.getName()%> (<%=d.getSpecialization()%>) </option>
                                        <%

                                            }

                                        %>



                                    </select>
                                </div>

                                <div class="col-md-12">
                                    <label class="form-label">Address</label>
                                    <textarea required name="address" class="form-control" rows="2">
                                    </textarea>
                                </div>

                                <div class="col-12 text-center">
                                    <button type="reset" class="btn btn-outline-secondary" value="Reset"><i class="fa-solid fa-rotate-left"></i>
                                        Reset
                                    </button>

                                    <button type="submit" class="btn btn-success"><i class="fa-regular fa-calendar-check"></i> 
                                        Book Appointment
                                    </button>


                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--footer-->
        <%@include file="../Component/footer.jsp" %>
    </body>
</html>
