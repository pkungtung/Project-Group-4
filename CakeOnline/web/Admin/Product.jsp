<%-- 
    Document   : Oder
    Created on : Sep 29, 2015, 3:32:52 PM
    Author     : ChungPhung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Product</title>
        <!-- BOOTSTRAP STYLES-->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME ICONS STYLES-->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!--CUSTOM STYLES-->
        <link href="assets/css/style.css" rel="stylesheet" />
    </head>
    <body>
        <jsp:useBean id="myBean" class="model.DataProcess" scope="session" />

<c:if test="${!empty param['page']}">
    <c:set var="indexPage" value="${param['page']}" scope="session" />
</c:if>
<c:if test="${empty param['page']}">
    <c:set var="indexPage" value="1" scope="session" />
</c:if>

<c:set var="getBook" value="${myBean.getBookIndex(indexPage , 10)}" scope="session" />
<c:set var="countTblBook" value="${myBean.countTblBook(10)}" scope="session"/>
        <c:if test="${empty sessionScope.userAdmin}">
            <c:redirect url="Administrator.jsp"/>
        </c:if>
        <sql:setDataSource var="conn" 
                           driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                           url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                           user="sa" 
                           password="123456"
                           scope="session"/>
        <sql:query dataSource="${conn}" var="list">
            select top 10 * from Product where itemcode not in (select top  ( 10 * (${indexPage} - 1))  itemcode from Product);
        </sql:query>
        <div id="wrapper">
            <jsp:include page="inAdmin/top.jsp" />

            <!-- /. NAV TOP  -->
            <nav  class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li>
                            <div class="user-img-div">
                                <img src="assets/img/user.jpg" class="img-circle" />


                            </div>

                        </li>
                        <li>
                            <a  href="#"> <strong> Phug Van Tung </strong></a>
                        </li>
                        <li>
                            <a href="Home.jsp"><i class="fa fa-home "></i>Home</a>
                        </li>
                        <li>
                            <a href="Order.jsp"><i class="fa fa-cart-plus "></i>Order </a>
                        </li>
                        <li>
                            <a class="active-menu" href="Product.jsp"><i class="fa fa-birthday-cake "></i>Product</a>
                        </li>
                        <li>
                            <a href="Customer.jsp"><i class="fa fa-user "></i>Customer</a>
                        </li>
                    </ul>
                </div>

            </nav>
            <!-- /. SIDEBAR MENU (navbar-side) -->
            <div id="page-wrapper" class="page-wrapper-cls">
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="page-head-line">Product Manager</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <a href="AddNew.jsp" class="btn btn-primary btn-lg">Add New Product</a>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>Code</th>
                                                <th>Name</th>
                                                <th>Price</th>
                                                <th>Egge</th>
                                                <th>Event</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="p" items="${list.rows}">
                                                <tr>
                                                    <td>${p.itemcode}</td>
                                                    <td><a href="Update.jsp?id=${p.itemcode}">${p.name}</a></td>
                                                    <td>$ ${p.price}</td>
                                                    <td>${p.egg}</td>
                                                    <td>${p._event}</td>
                                                    <td>${p.stt}</td>
                                                </tr>
                                            </c:forEach>    

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div style=" clear: both ;width: auto; height: 50px; float: right; margin-right: 500px; margin-bottom: 5px">
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
                </div>
                        </div>
                    </div>


                </div>
                <!-- /. PAGE INNER  -->
            </div>
            <!-- /. PAGE WRAPPER  -->
        </div>
        <!-- /. WRAPPER  -->
        <footer >
            &copy; 2015 Design By : <a href="#" target="_blank">Group 4 GC 0902</a>
        </footer>
        <!-- /. FOOTER  -->
        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- JQUERY SCRIPTS -->
        <script src="assets/js/jquery-1.11.1.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="assets/js/bootstrap.js"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="assets/js/jquery.metisMenu.js"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="assets/js/custom.js"></script>
    </body>
</html>
