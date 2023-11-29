<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@page import="java.sql.*" %>
  <%@page import="java.util.*" %>
  <%@page import="com.dao.*" %>
  <%@page import="com.entity.*" %>
  <%@page import="javax.servlet.*" %>
<%@page import="com.db.ConnectionProvider" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
      <title>Edit Doctor Details</title>
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
            <div class="col-md-4 offset-md-4">
              <div class="card border-secondary">
                <div class="card-header">
                  <h1 class="display-5 text-center">Edit Doctor Details</h1>

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

                    <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        DoctorDao doctorDao = new DoctorDao(ConnectionProvider.getConnection());
                        Doctor doctor = doctorDao.getDoctorById(id);

                    %>

                  <form action="../EditDoctor" method="POST">

                      <input type="hidden" name="id" value="<%=doctor.getId() %>">

                    <div class="mb-3">
                      <label  class="form-label">Name</label>
                      <input value="<%=doctor.getName() %>" name="doctor_name" type="text" class="form-control" required />
                     </div>

                    <div class="mb-3">
                      <label  class="form-label">Date of Birth</label>
                      <input value="<%=doctor.getDob() %>" required name="dob" type="date" class="form-control"  />
                    </div>

                     <div class="mb-3">
                      <label  class="form-label">Qualification</label>
                      <input value="<%=doctor.getQualification() %>" required name="qualification" type="text" class="form-control"  />
                    </div>

                     <div class="mb-3">
                      <label  class="form-label">Specialization</label>
                      <select name="specialization" required class="form-control">
                      <option> <%=doctor.getSpecialization() %> </option>


                    <%
                      SpecialistDao dao = new SpecialistDao(ConnectionProvider.getConnection());
                      List<Specialist> list = dao.getAllSpecialist();
                      for(Specialist s: list) {
                        %>
                          <option><%=s.getSpecialistName()%> </option>
                        <%
                      }
                    %>

                      </select>
                    </div>

                     <div class="mb-3">
                      <label  class="form-label">Email address</label>
                      <input value="<%=doctor.getEmail() %>" required name="email" type="email" class="form-control"  />
                    </div>


                     <div class="mb-3">
                      <label  class="form-label">Phone No.</label>
                      <input value="<%=doctor.getPhone() %>" required name="phone" type="text" class="form-control"  />
                    </div>

                     <div class="mb-3">
                      <label  class="form-label">Password</label>
                      <input value="<%=doctor.getPassword() %>" required name="password" type="password" class="form-control"  />
                    </div>

                   <div class="text-center d-grid gap-2">
                    <button type="submit" class="btn btn-success">Save Changes</button>
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