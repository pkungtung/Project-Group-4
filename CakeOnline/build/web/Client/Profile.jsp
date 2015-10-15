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
            <jsp:include page="include/top.jsp" />

            <!-- /. NAV TOP  -->
            <nav  class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li>
                            <div class="user-img-div">
                                <img src="images/placeholder-user.jpg" class="img-circle" />


                            </div>

                        </li>
                        <li>
                            <a> <strong> User </strong></a>
                        </li>
                        <li>
                            <a href="Order.jsp"><i class="fa fa-cart-plus "></i>Order </a>
                        </li>
                        <li>
                            <a href="DetailAcc.jsp"><i class="fa fa-user "></i>Edit Your Account</a>
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
