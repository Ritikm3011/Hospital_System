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
        <title>Doctor</title>
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
                <div class="col-md-4">
                    <div class="card border-secondary">
                        <div class="card-header">
                            <h1 class="display-5 text-center">Add Doctor</h1>


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
                            <form action="../AddDoctor" method="POST">
                                <div class="mb-3">
                                    <label  class="form-label">Name</label>
                                    <input name="doctor_name" type="text" class="form-control" id="name" required />
                                </div>

                                <div class="mb-3">
                                    <label  class="form-label">Date of Birth</label>
                                    <input required name="dob" type="date" class="form-control"  />
                                </div>

                                <div class="mb-3">
                                    <label  class="form-label">Qualification</label>
                                    <input required name="qualification" type="text" class="form-control"  />
                                </div>

                                <div class="mb-3">
                                    <label  class="form-label">Specialization</label>
                                    <select name="specialization" required class="form-control">
                                        <option>---select---</option>


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
                                    <input required name="email" type="email" class="form-control"  />
                                </div>


                                <div class="mb-3">
                                    <label  class="form-label">Phone No.</label>
                                    <input required name="phone" type="text" class="form-control"  />
                                </div>

                                <div class="mb-3">
                                    <label  class="form-label">Password</label>
                                    <input required name="password" type="password" class="form-control"  />
                                </div>

                                <div class="text-center d-grid gap-2">
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>



                <!--Doctors Details List-->
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">
                            <h1 class="display-5 text-center">Doctors Details</h1>
                        </div>

                        <div class="card-body">
                            <table class=" table table-hover ">
                                <thead>
                                    <tr>
                                        <th scope="col">Name</th>
                                        <!--  d.o.b is disable               <th scope="col">D.O.B</th>-->
                                        <th scope="col">Qualification</th>
                                        <th scope="col">Specialization</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Phone No.</th>
                                        <th scope="col">Action</th>
                                    </tr>

                                </thead>

                                <tbody>

                                    <%
                                        DoctorDao dao2 = new DoctorDao(ConnectionProvider.getConnection());
                                        List<Doctor> list2 = dao2.getAllDoctor();
                                        for (Doctor i : list2) {
                                    %>
                                    <tr>

                                        <td><%=i.getName()%></td>
    <!-- d.o.b is disable                <td><%=i.getDob()%></td> -->
                                        <td><%=i.getQualification()%></td>
                                        <td><%=i.getSpecialization()%></td>
                                        <td><%=i.getEmail()%></td>
                                        <td><%=i.getPhone()%></td>
                                        <td>
                                            <a href="editDoctor.jsp?id=<%=i.getId()%>" class="btn btn-sm btn-success">Edit</a>
                                            <a href="../DeleteDoctor?id=<%=i.getId()%>" class="btn btn-sm btn-danger">Delete</a>
                                        </td>

                                    </tr>

                                    <%}


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