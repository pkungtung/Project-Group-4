<%-- 
    Document   : AddNew
    Created on : Sep 30, 2015, 1:39:37 AM
    Author     : PkungTung
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Add New Product</title>
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
                            <a  href="Home.jsp"><i class="fa fa-home "></i>Home</a>
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
            <!-- /. SIDEBAR MENU (navbar-side) -->
            <div id="page-wrapper" class="page-wrapper-cls">
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="page-head-line">Add New Product</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6" style="margin: auto;">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <form action="../Controller?ac=add" method="Post" enctype="multipart/form-data">
                                        <jsp:useBean id="mrbean" class="model.DataProcess"/>
                                        <div class="form-group">
                                            <label>Item Code</label>
                                            <input readonly type="text" class="form-control" name="itemcode" value="${mrbean.autoId()}">
                                        </div>
                                        <div class="form-group">
                                            <label>Product Name</label>
                                            <input type="text" class="form-control" name="name" placeholder="Name">
                                        </div>
                                        <div class="form-group">
                                            <label>Price</label>
                                            <input type="text" class="form-control" name="price" placeholder="Price">
                                        </div>
                                        <div class="form-group">
                                            <label>Egge</label>
                                            <select class="form-control" name="egge">
                                                <option>yes</option>
                                                <option>no</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Event</label>
                                            <select class="form-control" name="event">
                                                <option>Birthday</option>
                                                <option>Anniversary</option>
                                                <option>Engagement</option>
                                                <option>Marriage</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control" name="status">
                                                <option>show</option>
                                                <option>hidden</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputFile">Product Image</label>
                                            <input type="file" id="exampleInputFile" name="file">
                                        </div>
                                        <button type="submit" class="btn btn-default">Submit</button>
                                        <hr>
                                    </form>
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
