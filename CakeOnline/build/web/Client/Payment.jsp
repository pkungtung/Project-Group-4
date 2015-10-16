<%-- 
    Doc/* global update */

ument   : Payment
    Created on : Oct 16, 2015, 8:43:15 AM
    Author     : Pkung
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
        <script>
            function toPre() {

            }
            function toPro() {
            <sql:update dataSource="${sessionScope.conn}" var="pro">
                update
                Customer
                set
                member = 'Pro' where CusId =${sessionScope.loginUser.rows[0].CusId};
            </sql:update>
            }
        </script>
    </head>
    <body>
        <c:if test="${empty loginUser}">
            <c:set var="flag" scope="session" value="loginPlease"/>
            <c:redirect url="${sessionScope.urlPahe}"/>
        </c:if>
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
                            <a href="Profile.jsp"><i class="fa fa-cart-plus "></i>My Orders </a>
                        </li>
                        <li>
                            <a href="EditAcc.jsp"><i class="fa fa-user "></i>Edit Your Account</a>
                        </li>
                        <li>
                            <a href="ChangePass.jsp"><i class="fa fa-cog "></i>Change Password</a>
                        </li> 
                        <li>
                            <a class="active-menu"  href="#"><i class="fa fa-paypal"></i>Payment</a>
                        </li>
                    </ul>
                </div>

            </nav>
            <!-- /. SIDEBAR MENU (navbar-side) -->
            <div id="page-wrapper" class="page-wrapper-cls">
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="page-head-line">Payment Infomation!</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    Premium mebership
                                </div>
                                <div class="panel-body">
                                    <p>You can see the recipe of any cake on the website if you are a premium membership</p>
                                </div>
                                <div class="panel-footer">
                                    <p>Pay 9$ Monthly To Premium mebership</p>
                                    <a href="loginAuthenticate.jsp?ac=toPre" class="btn btn-warning">Upgrade Account</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    Professional mebership
                                </div>
                                <div class="panel-body">
                                    <p><strong>1</strong>. You can see the recipe of any cake on the website if you are a premium membership</p>
                                    <p><strong>2</strong>. You can upload your cake and sale in website if you are a professional  membership</p>
                                </div>
                                <div class="panel-footer">
                                    <p>Pay 20$ To Professional mebership</p>
                                    <a href="loginAuthenticate.jsp?ac=toPro" class="btn btn-warning">Upgrade Account</a>
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
