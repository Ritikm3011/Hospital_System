
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

        <!--if doctor is not login-->
        <c:if test="${empty doctorObj}">
            <c:redirect url="../doctor_login.jsp"></c:redirect>

        </c:if>


        <!--Nav bar-->
        <%@include file="doctorNavbar.jsp" %>



       

        <!--footer-->

        <%@include file="../Component/footer.jsp" %>
    </body>
</html>
