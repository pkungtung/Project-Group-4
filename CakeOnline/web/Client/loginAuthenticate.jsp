<%-- 
    Document   : loginAuthenticate
    Created on : May 19, 2015, 4:01:40 AM
    Author     : Pkung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Wrong</h1>
        <sql:setDataSource var="conn" 
                           driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                           url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                           user="sa" 
                           password="123456"
                           scope="session"/>
        <sql:query dataSource="${conn}" var="sql" scope="session">
            select * from logincake where _user='${param.username}' and _pass='${param.pass}'
        </sql:query>
        <c:choose>
            <c:when test="${empty sql.rows}">
                <c:redirect url="${sessionScope.urlPage}" >
                    <c:param name="checkLogin" value="failed" />
                </c:redirect>

            </c:when>
            <c:otherwise>
                <c:set scope="session" var="loginUser" value="${param.username}"/>
                <c:redirect url="${sessionScope.urlPage}"/>
            </c:otherwise>
        </c:choose>    
    </body>
</html>
