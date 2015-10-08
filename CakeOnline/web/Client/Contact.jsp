<%-- 
    Document   : Contact
    Created on : Sep 16, 2015, 10:46:11 PM
    Author     : Windows 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8" />
        <title>Contact Us </title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <sql:setDataSource var="conn" 
                           driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                           url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                           user="sa" 
                           password="123456"
                           scope="session"/>
        <c:if test="${param.ac eq 'feedback'}">
            <sql:update dataSource="${conn}" var="sql" scope="request">
                insert into feedback values('${param.name}','${param.email}','${param.sub}','${param.content}');
            </sql:update>
            <c:redirect url="${sessionScope.urlPage}"/>
        </c:if>
        <jsp:include page="include/menu.jsp" />
        <div id="content">
            <div id="suatex">
                <h1>Contact us</h1>
                <div id="visitshop">
                    <div>
                        <p><span>Sweets from the heart</span> Treat your loveones</p>
                        <a href="" class="visit">visit the shop</a>
                    </div>
                </div>
                <form action="Contact.jsp?ac=feedback" method="Post">
                    <p>If you need assistance, order or feedback, feel free to e-mail us</p>
                    <input type="text" maxlength="30" name="name" placeholder="Name" class="textcontact coninput" />
                    <input type="text" maxlength="30" name="email" placeholder="E-mail Address" class="textcontact coninput" />
                    <input type="text" maxlength="30" name="sub" placeholder="Subject" class="textcontact coninput" />
                    <textarea name="content" cols="30" rows="10"></textarea>
                    <input type="submit" value="" class="submit" />
                </form>
            </div>
        </div>
        <jsp:include page="include/newfooter.jsp" />
    </body>
</html>