<%-- 
    Document   : Oder
    Created on : Sep 29, 2015, 3:32:52 PM
    Author     : ChungPhung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Order</title>
        <!-- BOOTSTRAP STYLES-->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME ICONS STYLES-->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!--CUSTOM STYLES-->
        <link href="assets/css/style.css" rel="stylesheet" />
    </head>
    <body> 
        <c:if test="${empty sessionScope.userAdmin}">
            <c:redirect url="Administrator.jsp"/>
        </c:if>
        <div id="wrapper">
            <jsp:include page="inAdmin/top.jsp" />
            <!-- /. NAV TOP  -->
            <nav  class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li>
                            <div class="user-img-div">
                                <img src="${userAdmin.rows[0].ava}" class="img-circle" />
                            </div>
                        </li>
                        <li>
                            <a  href="#"> <strong> ${sessionScope.userAdmin.rows[0].name} </strong></a>
                        </li>

                        <li>
                            <a href="Home.jsp"><i class="fa fa-home "></i>Home</a>
                        </li>
                        <li>
                            <a class="active-menu" href="Order.jsp"><i class="fa fa-cart-plus "></i>Order </a>
                        </li>
                        <li>
                            <a href="Product.jsp"><i class="fa fa-birthday-cake "></i>Product</a>
                        </li>
                        <li>
                            <a href="Customer.jsp"><i class="fa fa-user "></i>Customer</a>
                        </li>
                    </ul>
                </div>

            </nav>
            <!-- /. SIDEBAR MENU (navbar-side) -->
            <sql:setDataSource var="conn" 
                               driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                               url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                               user="sa" 
                               password="123456"
                               scope="session"/>
            <sql:query dataSource="${conn}" var="ol">
                Select * from OrderList;
            </sql:query>
            <div id="page-wrapper" class="page-wrapper-cls">
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="page-head-line">Order Manager</h1>
                        </div>
                    </div>

                    <div class="row">
                        <div class="panel panel-default">

                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>Order Id</th>
                                                <th>Customer</th>
                                                <th>Deliveri Address</th>
                                                <th>Deliveri Date</th>
                                                <th>Item Code</th>
                                                <th>Quantity</th>
                                                <th>Total</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="order" items="${ol.rows}">
                                                <tr>
                                                    <td>${order.oid}</td>
                                                    <sql:query dataSource="${conn}" var="us">
                                                        select name from Customer where CusId = ${order.CusId};
                                                    </sql:query>
                                                        <td><a href="DetailAcc.jsp?id=${order.CusId}">${us.rows[0].name}</a></td>
                                                    <td>${order.addr}</td>
                                                    <td>${order.deliveriDate}</td>
                                                    <sql:query dataSource="${conn}" var="od">
                                                        select * from OrderDetail where oid=${order.oid};
                                                    </sql:query>
                                                    <td>
                                                        <c:forEach var="p" items="${od.rows}">
                                                            ${p.itemcode}</br>
                                                        </c:forEach>
                                                    </td>
                                                    <td>
                                                        <c:forEach var="p" items="${od.rows}">
                                                            ${p.quantity}</br>
                                                        </c:forEach>
                                                    </td>
                                                    <td>$ ${order.total}</td>
                                                    <td>${order.stt}</td>
                                                </tr>
                                            </c:forEach>    

                                        </tbody>
                                    </table>
                                </div>
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
