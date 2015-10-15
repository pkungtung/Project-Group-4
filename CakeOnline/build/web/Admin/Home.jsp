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
        <title>Home</title>
        <!-- BOOTSTRAP STYLES-->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME ICONS STYLES-->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!--CUSTOM STYLES-->
        <link href="assets/css/style.css" rel="stylesheet" />    </head>
    <body>
        <c:if test="${empty sessionScope.userAdmin}">
            <c:redirect url="Administrator.jsp"/>
        </c:if>
        <div id="wrapper">
            <jsp:include page="inAdmin/top.jsp" />
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
                            <a class="active-menu"   href="Home.jsp"><i class="fa fa-home "></i>Home</a>
                        </li>
                        <li>
                            <a href="Order.jsp"><i class="fa fa-cart-plus "></i>Order </a>
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
            <div id="page-wrapper" class="page-wrapper-cls">
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="page-head-line">Home Page</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class=" col-md-3 col-sm-3">
                            <div class="style-box-one Style-one-clr-one">
                                <a href="Order.jsp">
                                    <span class="glyphicon glyphicon-shopping-cart"></span>
                                    <h5>Order</h5>
                                </a>
                            </div>
                        </div>
                        <div class=" col-md-3 col-sm-3">
                            <div class="style-box-one Style-one-clr-two">
                                <a href="Product.jsp">
                                    <span class="fa fa-birthday-cake"></span>
                                    <h5>Product</h5>
                                </a>
                            </div>
                        </div>
                        <div class=" col-md-3 col-sm-3">
                            <div class="style-box-one Style-one-clr-three">
                                <a href="Customer.jsp">
                                    <span class="fa fa-user"></span>
                                    <h5>Customer</h5>
                                </a>
                            </div>
                        </div>
                          
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="alert alert-warning">
                                Viết content vào đây
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /. PAGE INNER  -->
            </div>
        </div>
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
