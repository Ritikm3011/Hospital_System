<%-- 
    Document   : comment
    Created on : 29-Nov-2023, 3:26:49 pm
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
        <title>Comment</title>
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

        <div class="container p-5 " >

            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <div class="card border-dark shadow-lg">
                        <div class="card-header">
                            <h1 class="display-5 text-center">Patients Comment</h1>
                        </div>

                        <%
                            int id = Integer.parseInt(request.getParameter("id"));
                            AppointmentDao appDao = new AppointmentDao(ConnectionProvider.getConnection());
                            Appointment app = appDao.getAppointmentById(id);

                        %>

                        <div class="card-body">

                            <form class="row g-3" action="../UpdateStatus" method="POST">
                                <div class="col-md-6">
                                    <label class="form-label">Patient's Name</label>
                                    <input readonly type="text" name="name" value="<%=app.getName()%>" class="form-control">
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label">Age</label>
                                    <input readonly type="text" name="age" value="<%=app.getAge()%>" class="form-control">
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label">Phone No.</label>
                                    <input readonly type="text" name="phone" value="<%=app.getPhone()%>" class="form-control">
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label">Symptoms/Disease</label>
                                    <input type="text" name="age" value="<%=app.getSymptom()%>" class="form-control">
                                </div>

                                <div class="col-md-12">
                                    <label class="form-label">Comment/Status</label>
                                    <textarea name="comment" row="2" required class="form-control" placeholder="Leave a comment here" id="floatingTextarea"></textarea>
                                </div>

                                <input type="hidden" name="userId" value="<%=app.getId() %>"><!-- comment -->
                                <input type="hidden" name="doctorId" value="<%=app.getDoctorId() %>"><!-- comment -->


                                <button class="btn btn-success col-md-6 offset-md-3" type="submit">Submit</button>


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
