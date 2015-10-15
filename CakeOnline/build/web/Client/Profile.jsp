<%-- 
    Document   : Profile
    Created on : Oct 15, 2015, 9:18:59 PM
    Author     : Boong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Profile</title>
        <!-- BOOTSTRAP STYLES-->
        <link href="../Admin/assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!-- FONTAWESOME ICONS STYLES-->
        <link href="../Admin/assets/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <!--CUSTOM STYLES-->
        <link href="../Admin/assets/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <sql:setDataSource var="conn" 
                           driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                           url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                           user="sa" 
                           password="123456"
                           scope="session"/>
        <div id="wrapper">
            <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a  class="navbar-brand" href="#"><i class="fa fa-user"></i> My Account</a>
                </div>

                <div class="notifications-wrapper">
                    <ul class="nav">
                        <li><a href="Home.jsp?"><i class="fa fa-backward"></i> Back to The Cake</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                                <i class="fa fa-bullhorn"></i> Message <i class="fa fa-caret-down"> </i>
                            </a>
                            <ul class="dropdown-menu dropdown-tasks">
                                <li>
                                    <a href="#">
                                        <div>
                                            <p>
                                                <strong>Task 1</strong>
                                                <span class="pull-right text-muted">60% Complete</span>
                                            </p>
                                            <div class="progress progress-striped active">
                                                <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                    <span class="sr-only">60% Complete (danger)</span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </li>

                            </ul>
                        </li>
                        <li><a href="loginAuthenticate.jsp?ac=signout"><i class="fa fa-sign-out"></i> Logout</a></li> 
                    </ul>
                </div>
            </nav>           
            <nav  class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li>
                            <div class="user-img-div">
                                <img src="${loginUser.rows[0].ava}" class="img-circle" />

                            </div>

                        </li>
                        <li>
                            <a> <strong> ${sessionScope.loginUser.rows[0].name} </strong></a>
                        </li>
                        <li>
                            <a class="active-menu" href="#"><i class="fa fa-cart-plus "></i>My Orders </a>
                        </li>
                        <li>
                            <a href="EditAcc.jsp"><i class="fa fa-user "></i>Edit Your Account</a>
                        </li>
                    </ul>
                </div>

            </nav>
            <!-- /. SIDEBAR MENU (navbar-side) -->
            <div id="page-wrapper" class="page-wrapper-cls">
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="page-head-line">Order List</h1>
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
                                                <th>Deliveri Address</th>
                                                <th>Deliveri Date</th>
                                                <th>Item Code</th>
                                                <th>Quantity</th>
                                                <th>Total</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <sql:query dataSource="${conn}" var="ol">
                                                Select * from OrderList where CusId=${sessionScope.loginUser.rows[0].CusId};
                                            </sql:query>
                                            <c:forEach var="order" items="${ol.rows}">
                                                <tr>
                                                    <td>${order.oid}</td>
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
        <script src="../Admin/assets/js/jquery-1.11.1.js" type="text/javascript"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="../Admin/assets/js/bootstrap.js" type="text/javascript"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="../Admin/assets/js/jquery.metisMenu.js" type="text/javascript"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="../Admin/assets/js/custom.js" type="text/javascript"></script>

    </body>
</html>
