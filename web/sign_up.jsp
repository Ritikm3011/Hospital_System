<%-- 
    Document   : signup
    Created on : 07-Nov-2023, 9:33:39 pm
    Author     : Ritik Mondal
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign_up</title>
        <%@include file="Component/allcss.jsp" %>
    </head>
    <body>
        <!--nav bar-->
        <%@include file="Component/navbar.jsp" %>



        <div class="container p-5">
            <div class="row">
                <div class="col-md-4 offset-md-4"> 
                    <div class="card shadow-lg">
                        <div class="card-header">
                            <h1 class="display-5 text-center">User Register</h1>

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

                            <form action="UserRegister" method="POST">
                                <div class="mb-3">
                                    <label  class="form-label">Full Name</label>
                                    <input name="name" required type="text" class="form-control" id="exam" aria-describedby="emailHelp">

                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Email address</label>
                                    <input name="email" required type="email" class="form-control" id="exampleInputPassword1">
                                </div>

                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password</label>
                                    <input name="password" required type="password" class="form-control" id="exampleInputPassword1">
                                </div>

                                <button type="submit" class="btn btn-success text-white col-md-12"><i class="fa-solid fa-right-to-bracket"></i> Register</button>
                            </form>


                        </div>

                    </div>

                </div>

            </div>

        </div>



        <br> <br> <br>
        <%@include file="Component/footer.jsp" %>
    </body>
</html>
