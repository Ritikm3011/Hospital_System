<%--

    Author     : Ritik Mondal
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="javax.servlet.*" %>

    <!DOCTYPE html>
    <html>

    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>user_appointment</title>
      <%@include file="../Component/allcss.jsp"%>
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
            <div class="col-md-6">
              retew
            </div>



    <!--User Appointment form-->
            <div class="col-md-6">
              rtwert
            </div>
          </div>
        </div>



         <!--footer-->
        <%@include file="../Component/footer.jsp" %>
    </body>

    </html>