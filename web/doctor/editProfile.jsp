<%-- 
    Document   : editProfile
    Created on : 30-Nov-2023, 7:17:31 pm
    Author     : ritik
--%>


<%@page import="com.entity.Specialist"%>
<%@page import="com.dao.SpecialistDao"%>
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
                <div class="col-md-6 offset-md-3">
                    <div class="card border-dark shadow-lg">
                        <div class="card-header">
                            <h1 class="display-5 text-center">Edit Profile</h1>

                            <c:if test="${not empty successMsg}">
                                <div class="text-center text-success p-2" role="alert">
                                    ${successMsg}
                                </div>

                                <c:remove var="successMsg" scope="session" />
                            </c:if>

                            <c:if test="${not empty failMsg}">
                                <p class="text-center text-danger p-2">${failMsg}</p>
                                <c:remove var="failMsg" scope="session" />
                            </c:if>


                        </div>




                        <div class="card-body">
                            <div class="card-body">
                                <form action="../EditProfile" method="POST">
                                    <div class="mb-3">
                                        <label  class="form-label">Name</label>
                                        <input readonly  name="doctor_name" type="text" class="form-control" id="name" value="${doctorObj.name}" required />
                                    </div>

                                    <div class="mb-3">
                                        <label  class="form-label">Date of Birth</label>
                                        <input readonly required name="dob" type="date" class="form-control" value="${doctorObj.dob}"  />
                                    </div>

                                    <div class="mb-3">
                                        <label  class="form-label">Qualification</label>
                                        <input required name="qualification" type="text" class="form-control" value="${doctorObj.qualification}" />
                                    </div>

                                    <div class="mb-3">
                                        <label  class="form-label">Specialization</label>
                                        <select name="specialization" required class="form-control">
                                            <option >${doctorObj.specialization}</option>


                                            <%
                                                SpecialistDao dao = new SpecialistDao(ConnectionProvider.getConnection());
                                                List<Specialist> list = dao.getAllSpecialist();
                                                for (Specialist s : list) {
                                            %>
                                            <option><%=s.getSpecialistName()%> </option>             
                                            <%
                                                }
                                            %>

                                        </select>
                                    </div>

                                    <div class="mb-3">
                                        <label  class="form-label">Email address</label>
                                        <input readonly required name="email" type="email" class="form-control"  value="${doctorObj.email}"/>
                                    </div>


                                    <div class="mb-3">
                                        <label  class="form-label">Phone No.</label>
                                        <input required name="phone" type="text" class="form-control" value="${doctorObj.phone}" />
                                    </div>

                                    <input type="hidden" name="id" value="${doctorObj.id}">

                                    <div class="text-center d-grid gap-2">
                                        <button type="submit" class="btn btn-success">Save Changes</button>
                                    </div>
                                </form>
                            </div>


                        </div>
                    </div>

                </div>


            </div>


        </div>



        <!--footer-->

        <%@include file="../Component/footer.jsp" %>
    </body>
</html>
