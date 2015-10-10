<%-- 
    Document   : Product
    Created on : Sep 16, 2015, 9:56:00 PM
    Author     : Windows 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8" />
        <title>All Cake</title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/set2.css" />
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
                    Select * from Product where stt='show';
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
                                            <p style="margin: 50px 0 0 0">
                                                <a href="../Controller?ac=add1Item&id=${p.itemCode}" 
                                                   >Add to cart
                                                </a>
                                            </p>
                                            <p style="margin: 10px 0 0 0"><a href="Detail.jsp?id=${p.itemCode}">View more</a></p>
                                        </figcaption>	
                                    </figure>

                                </div>
                                <div style="margin-top: 333px; margin-left: 33px;">
                                    <h2><a href="Home.jsp">${p.name}</a></h2>
                                </div> 
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <jsp:include page="include/newfooter.jsp" />
        <script src="js/chat.js" type="text/javascript"></script>
    </body>
</html>