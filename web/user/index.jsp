<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*" %>

<%@page import="com.db.ConnectionProvider" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User_Home</title>

        <%@include file="../Component/allcss.jsp"%>
    </head>
    <body>
        <!--nav bar-->
        <%@include file="userNavbar.jsp" %>


        <h1>User Login</h1>




        <!--footer-->
        <%@include file="../Component/footer.jsp" %>
    </body>
</html>
