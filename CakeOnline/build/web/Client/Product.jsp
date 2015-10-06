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
        <script>
            function clickCake(str) {
            <c:set var="myCode" value="str"/>
            }
        </script>
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
                        <div class="modal fade in" id="addCart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" 
                             style="display: none;background: #9C9C9C;background-color:rgba(0, 0, 0, 0.6);clear: both;">
                            <div class="modal-dialog" >
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" onclick="resetModal()" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        <h4 class="modal-title" id="myModalLabel">Add to Cart</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form action="../Controller?ac=addCart" method="Post" id="fomAddCart">
                                            <div class="form-group has-success">
                                                <label for="userName" id="usernamelb">Quantity</label>
                                                <input type="text" class="form-control" 
                                                       placeholder="Quantity" name="quantity"/>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" id="singinBtn" class="btn btn-primary" onclick="signin()">Sign in</button>
                                                <button type="button" class="btn btn-primary"data-dismiss="modal" data-toggle="modal" data-target="#signUpModal">Sign up</button>
                                                <button type="button" class="btn btn-default" onclick="resetModal()" data-dismiss="modal">Close</button>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <li>
                            <div>
                                <div class="grid">
                                    <figure class="effect-steve">
                                        <img src="${p.img}" height="400" width="400" alt="img"/>
                                        <figcaption>
                                            <p style="margin: 50px 0 0 0">
                                                <a href="#" 
                                                   data-toggle="modal" 
                                                   data-target="#addCart" 
                                                   onclick="clickCake(${p.itemcode})">Order
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
    </body>
</html>