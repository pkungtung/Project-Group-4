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
        <jsp:useBean id="myBean" class="model.DataProcess" scope="session" />

<c:if test="${!empty param['page']}">
    <c:set var="indexPage" value="${param['page']}" scope="session" />
</c:if>
<c:if test="${empty param['page']}">
    <c:set var="indexPage" value="1" scope="session" />
</c:if>

<c:set var="getBook" value="${myBean.getBookIndex(indexPage , 6)}" scope="session" />
<c:set var="countTblBook" value="${myBean.countTblBook(6)}" scope="session"/>
        <sql:setDataSource var="conn" 
                           driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                           url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                           user="sa" 
                           password="123456"
                           scope="session"/>
        <c:choose>
            <c:when test="${empty param.event}">
                <sql:query dataSource="${conn}" var="list">
                   select top 6 * from Product where itemcode not in (select top  ( 6 * (${indexPage} - 1))  itemcode from Product);
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
                <div style=" clear: both ;width: auto; height: 50px; float: right; margin-right: 350px; margin-bottom: 5px">
                    <form action="#" method="GET">
                        <c:choose>
                            <c:when test="${empty param['page']}">
                                <c:forEach var="i"  end="${countTblBook}" begin="1" step="1" >
                                    <c:choose>
                                        <c:when test="${empty param['page'] && i == 1}">
                                            <input class="btn btn-default" name="page" type="submit" disabled="true" value="${i}" style="margin-left: 1px; background: #cccccc"/>
                                        </c:when>
                                        <c:otherwise>
                                            <input class="btn btn-default" name="page" type="submit" value="${i}" style="margin-left: 1px;"/>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </c:when>

                            <c:otherwise>
                                <c:forEach var="i"  end="${countTblBook}" begin="1" step="1" >
                                    <c:choose>
                                        <c:when test="${i == param['page']}">
                                            <input class="btn btn-default" name="page" type="submit" disabled="true" value="${i}" style="margin-left: 1px; background: #cccccc"/>
                                        </c:when>
                                        <c:otherwise>
                                            <input class="btn btn-default" name="page" type="submit" value="${i}" style="margin-left: 1px;"/>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </form>   
                </div>>
            </div>
        </div>
        <jsp:include page="include/newfooter.jsp" />
        <script src="js/chat.js" type="text/javascript"></script>
    </body>
</html>