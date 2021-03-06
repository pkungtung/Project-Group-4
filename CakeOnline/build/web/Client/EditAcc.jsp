<%-- 
    Document   : EditAcc
    Created on : Oct 16, 2015, 1:17:01 AM
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
    </head>
    <body>
        <c:if test="${empty loginUser}">
            <c:set var="flag" scope="session" value="loginPlease"/>
            <c:redirect url="${sessionScope.urlPage}"/>
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
                            <a class="active-menu" href="#"><i class="fa fa-user "></i>My Account</a>
                        </li>
                        <li>
                            <a href="ChangePass.jsp"><i class="fa fa-cog "></i>Change Password</a>
                        </li>
                        <li>
                            <a href="Payment.jsp"><i class="fa fa-paypal"></i>Payment</a>
                        </li>
                        <li>
                            <a href="NewCake.jsp"><i class="fa fa-birthday-cake"></i>Add New Cake</a>
                        </li>
                    </ul>
                </div>

            </nav>
            <!-- /. SIDEBAR MENU (navbar-side) -->
            <div id="page-wrapper" class="page-wrapper-cls">
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="page-head-line">Edit Infomation</h1>
                        </div>
                        <div class="row">
                            <div class="col-md-6" style="margin: auto;">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <form action="../Controller?ac=editAcc" method="post" enctype="multipart/form-data">
                                            <div class="form-group">
                                                <label>User Name</label>
                                                <input readonly="" type="text" class="form-control" value="${sessionScope.loginUser.rows[0].username}" name="user" placeholder="User Name">
                                            </div>
                                            <input type="hidden" value="${sessionScope.loginUser.rows[0].CusId}" name="id"/>

                                            <div class="form-group">
                                                <label>Name</label>
                                                <input type="text" class="form-control" value="${sessionScope.loginUser.rows[0].name}" name="name"/>
                                            </div>
                                            <div class="form-group">
                                                <label>Email</label>
                                                <input type="text" class="form-control" value="${sessionScope.loginUser.rows[0].email}" name="email"/>
                                            </div>
                                            <div class="form-group">
                                                <label>Address</label>
                                                <input type="text" class="form-control" 
                                                       value="${sessionScope.loginUser.rows[0].addr}" name="address"/>
                                            </div>
                                            <div class="form-group">
                                                <label>Phone Number</label>
                                                <input type="text" class="form-control" 
                                                       value="${sessionScope.loginUser.rows[0].number}" name="number"/>
                                            </div>
                                            <div class="form-group">
                                                <c:if test="${sessionScope.loginUser.rows[0].member eq 'no'}">
                                                    <label>Account: No Membership</label>
                                                </c:if>
                                                <c:if test="${sessionScope.loginUser.rows[0].member eq 'Pre'}">
                                                    <label>Account: Premium Membership</label>
                                                </c:if>
                                                <c:if test="${sessionScope.loginUser.rows[0].member eq 'Pro'}">
                                                    <label>Account: Professional Membership</label>
                                                </c:if>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputFile">Avatar Image</label>
                                                <p><img src="${sessionScope.loginUser.rows[0].ava}" height="100" width="100" alt=""/></p>
                                                Change Avatar Image
                                                <input type="file" id="exampleInputFile" name="file">
                                            </div>
                                            <button type="submit" class="btn btn-default">Update</button>
                                            <hr>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
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
