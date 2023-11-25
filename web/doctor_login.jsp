<%-- 
    Document   : doctor_loging
    Created on : 07-Nov-2023, 11:38:44 am
    Author     : Ritik Mondal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor_login</title>
        <%@include file="Component/allcss.jsp"%>
    </head>
    <body>
        <!--nav bar-->
        <%@include file="Component/navbar.jsp" %>



        <div class="container p-5">
            <div class="row">
                <div class="col-md-4 offset-md-4"> 
                    <div class="card shadow-lg">
                        <div class="card-header">
                            <h1 class="display-5 text-center">Doctor Login</h1>
                        </div>
                        <div class="card-body">

                            <form>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                                    <input required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">

                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password</label>
                                    <input required type="password" class="form-control" id="exampleInputPassword1">
                                </div>

                                <button type="submit" class="btn btn-success text-white col-md-12"><i class="fa-solid fa-right-to-bracket"></i> Login</button>
                            </form>
                            


                        </div>

                    </div>

                </div>

            </div>

        </div>


        <%@include file="Component/footer.jsp" %>
    </body>
</html>
