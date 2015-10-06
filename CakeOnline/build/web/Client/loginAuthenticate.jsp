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
        <title>Abc Page</title>
    </head>
    <body>
        <h1>Wrong</h1>
        <sql:setDataSource var="conn" 
                           driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                           url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                           user="sa" 
                           password="123456"
                           scope="session"/>
        <c:if test="${param.ac eq 'signup'}">

            <sql:query dataSource="${conn}" var="user" scope="request">
                select username from Customer;
            </sql:query>
            <c:forEach var="cus" items="${user.rows}">
                <c:if test="${param.userName eq cus.username}">
                    <c:redirect url="${urlPage}">
                        <c:param name="singup" value="exist"/>
                    </c:redirect>         
                </c:if>
                <sql:update dataSource="${conn}" var="insert">
                    insert into Customer values('${param.userName}','${param.pass}','${param.name}','${param.email}','${param.address}','${param.number}','no');
                </sql:update>
                <c:redirect url="${urlPage}">
                    <c:param name="singup" value="ok"/>
                </c:redirect>  
            </c:forEach>


        </c:if>
        <c:if test="${param.ac eq 'signin'}">
            <sql:query dataSource="${conn}" var="sql" scope="request">
                select * from Customer where username='${param.username}' and pass='${param.pass}'
            </sql:query>
            <c:choose>
                <c:when test="${empty sql.rows}">
                    <c:redirect url="${sessionScope.urlPage}" >
                        <c:param name="checkLogin" value="failed" />
                    </c:redirect>
                </c:when>
                <c:otherwise>
                    <c:set scope="session" var="loginUser" value="${sql.rows[0].name}"/>
                    <c:redirect url="${sessionScope.urlPage}"/>
                </c:otherwise>
            </c:choose> 
        </c:if>

    </body>
</html>
