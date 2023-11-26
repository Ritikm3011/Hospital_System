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

            <h1 class="display-5 text-center mb-3">Admin Dashboard</h1>
            <c:if test="${not empty successMsg}">

                <div class="text-center text-success mb-3" role="alert">${successMsg}</div>

                <c:remove var="successMsg" scope="session"/>
            </c:if>


            <c:if test="${not empty failMsg}">
                <p class="text-center text-danger " >${failMsg}</p>
                <c:remove var="failMsg" scope="session"/>
            </c:if>


            <div class="row">

                <div class="col-md-4 ">
                    <div class="card border-light  ">
                        <div class="card-body text-center text-success shadow">
                            <i class="fa-solid fa-user-doctor fa-3x"></i>
                            <p class="text-center display-5">Doctor</p>
                            <br>
                            5
                        </div>
                    </div>
                </div>

                <div class="col-md-4 ">
                    <div class="card border-light ">
                        <div class="card-body text-center text-success shadow">
                            <i class="fa-solid fa-hospital-user fa-3x"></i>
                            <p class="text-center display-5">User</p>
                            <br>
                            43
                        </div>
                    </div>
                </div>


                <div class="col-md-4">
                    <div class="card border-light ">
                        <div class="card-body text-center text-success shadow">
                            <i class="fa-regular fa-calendar-check fa-3x"></i>
                            <p class="text-center display-5">Appointment</p>
                            <br>
                            451
                        </div>
                    </div>
                </div>


                <div class="col-md-4 mt-2" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    <div class="card border-light ">
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

<!-- add Specialist Popup Modal-->
     
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">

                  <form action="../AddSpecialist" method="POST">
                        <div class="mb-3">
                          <label for="exampleInputEmail1" class="form-label">Enter Specialist</label>
                          <input name="specialistName" type="text" class="form-control">
                         
                        </div>
                      <div class="text-center d-grid gap-2">
                          <button type="submit" class="btn btn-outline-success">Submit</button>
                      </div>
                      
                       
                    </form>

              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                
              </div>
            </div>
          </div>
        </div>



        <!--footer-->

        <%@include file="../Component/footer.jsp" %>
    </body>
</html>
