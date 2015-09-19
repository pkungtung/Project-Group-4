<%-- 
    Document   : Deatail
    Created on : Sep 19, 2015, 4:46:11 PM
    Author     : ChungPhung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Cake</title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />

    </head>
    <body>
    <sql:setDataSource var="conn" 
                       driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                       url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                       user="sa" 
                       password="123456"
                       scope="request"/>
    <sql:query dataSource="${conn}" var="product">
        Select * from Product where itemCode= ${param.id};
    </sql:query>
    <jsp:include page="include/menu.jsp" />
       Name: ${product.name}
    <jsp:include page="include/newfooter.jsp" />    </body>
</html>
