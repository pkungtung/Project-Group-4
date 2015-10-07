<%-- 
    Document   : CheckOut
    Created on : Oct 7, 2015, 8:03:19 AM
    Author     : Pkung
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8" />
        <title>Cake </title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <jsp:include page="include/menu.jsp" />
        <div id="content">
            <div class="home">
                <form action="../Controller?ac=updateCart" id="cartForm" method="Post">

                </form>
            </div>
        </div>
        <jsp:include page="include/footer.jsp" />
    </body>
</html>