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
                    SELECT *FROM Product
                    ORDER BY id
                    OFFSET 0 ROWS
                    FETCH NEXT 8 ROWS ONLY;
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
                <h1>All Cake</h1>

                <ul>
                    <c:forEach var="p" items="${list.rows}">
                        <li>
                            <div>

                                <!--                                    <h2>Cake</h2>-->
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
                                <!-- /containdaer -->
                                <script>
                                    // For Demo purposes only (show hover effect on mobile devices)
                                    [].slice.call(document.querySelectorAll('a[href="#"')).forEach(function (el) {
                                        el.addEventListener('click', function (ev) {
                                            ev.preventDefault();
                                        });
                                    });
                                </script>
                            </div>
                        </li>
                    </c:forEach>

                </ul>
            </div>
        </div>
        <div class="pager">
            <a href="Product.jsp" class="button ">< Prev</a>
            &nbsp; 
            <span class="page"><a href="Product.jsp" class="pageNumber">1</a> </span>
            <span class="page"><a href="Product2.jsp" class="pageNumber">2</a> </span>
            <span class="page"><a href="Product.jsp" class="pageNumber">3</a> </span>
            <span class="page"><a href="Product.jsp" class="pageNumber">4</a> </span>
            <span class="page"><a href="Product.jsp" class="pageNumber">5</a> </span>
            <a href="Product2.jsp" class="button ">Next &gt;</a>
        </div>
        <jsp:include page="include/newfooter.jsp" />
    </body>
</html>