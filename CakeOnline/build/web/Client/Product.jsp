<%-- 
    Document   : Product
    Created on : Sep 16, 2015, 9:56:00 PM
    Author     : Windows 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" type="text/css" href="css/set2.css" />

<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8" />
        <title>All Cake</title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <sql:setDataSource var="conn" 
                           driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                           url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                           user="sa" 
                           password="123456"
                           scope="session"/>
        <c:choose>
            <c:when test="${empty param.event}">
                <sql:query dataSource="${conn}" var="list">
                    Select * from Product;
                </sql:query>
            </c:when>
            <c:otherwise>
                <sql:query dataSource="${conn}" var="list">
                    Select * from Product where _event= '${param.event}';
                </sql:query>
            </c:otherwise>
        </c:choose>
        <jsp:include page="include/menu.jsp" />
        <div id="content">
            <div id="suatex">
                <h1>${param.event}</h1>

                <ul>
                    <c:forEach var="p" items="${list.rows}">
                        <li>
                            <div>

                                <div class="grid">
                                    <figure class="effect-steve">
                                        <img src="${p.img}" height="400" width="400" alt="img"/>
                                        <figcaption>
                                            <h2>${p.name}</h2>
                                            <p style="margin: 80px 0 0 0">dat hang</p>
                                            <a href="Home.jsp">Order</a>
                                        </figcaption>	
                                        <figcaption>
                                            <!--                                                    							<h2>Lonely <span>Steve</span></h2>-->
                                            <p style="margin: 60px 0 0 0"> Chi tiet san pham</p>
                                            <a href="Detail.jsp?id=${p.itemCode}">View more</a>
                                        </figcaption>	
                                    </figure>

                                </div>
                            </div>
                        </li>
                    </c:forEach>

                </ul>
            </div>
        </div>
        <jsp:include page="include/newfooter.jsp" />
    </body>
</html>