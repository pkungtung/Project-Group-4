<%-- 
    Document   : AddNew
    Created on : Sep 30, 2015, 1:39:37 AM
    Author     : PkungTung
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Update Product</title>
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
        <sql:setDataSource var="conn" 
                           driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                           url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                           user="sa" 
                           password="123456"
                           scope="request"/>
        <sql:query dataSource="${conn}" var="pro">
            Select * from Product where itemcode ='${param.id}';
        </sql:query>
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
                            <a href="Home.jsp"><i class="fa fa-dashboard "></i>Home</a>
                        </li>
                        <li>
                            <a href="Order.jsp"><i class="fa fa-venus "></i>Order </a>
                        </li>
                        <li>
                            <a href="Product.jsp"><i class="fa fa-bolt "></i>Product</a>
                        </li>
                        <li>
                            <a href="Customer.jsp"><i class="fa fa-code "></i>Customer</a>
                        </li>
                    </ul>
                </div>

            </nav>
            <div id="page-wrapper" class="page-wrapper-cls">
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 style="color: #ff3333">${pro.rows[0].name}</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6" style="margin: auto;">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <form action="../Controller?ac=updateProduct" method="Post" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>Item Code</label>
                                            <input type="text" readonly="" value="${pro.rows[0].itemcode}" class="form-control" name="itemcode" placeholder="Item Code">
                                        </div>
                                        <div class="form-group">
                                            <label>Product Name</label>
                                            <input type="text" class="form-control" value="${pro.rows[0].name}" name="name" placeholder="Name">
                                        </div>
                                        <div class="form-group">
                                            <label>Price $</label>
                                            <input type="text" class="form-control" value="${pro.rows[0].price}" name="price" placeholder="Price">
                                        </div>
                                        <div class="form-group">
                                            <label>Egge</label>
                                            <select class="form-control" name="egge">
                                                <c:if test="${pro.rows[0].egg eq 'yes'}">
                                                    <option>yes</option>
                                                    <option>no</option>
                                                </c:if>
                                                <c:if test="${pro.rows[0].egg eq 'no'}">
                                                    <option>no</option>
                                                    <option>yes</option>
                                                </c:if>

                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Event</label>
                                            <select class="form-control" name="event">
                                                <c:if test="${pro.rows[0]._event eq 'Birthday'}">
                                                    <option>Birthday</option>
                                                    <option>Anniversary</option>
                                                    <option>Engagement</option>
                                                    <option>Marriage</option>
                                                </c:if>   
                                                <c:if test="${pro.rows[0]._event eq 'Anniversary'}">
                                                    <option>Anniversary</option>
                                                    <option>Birthday</option>
                                                    <option>Engagement</option>
                                                    <option>Marriage</option>
                                                </c:if>
                                                <c:if test="${pro.rows[0]._event eq 'Engagement'}">
                                                    <option>Engagement</option>
                                                    <option>Birthday</option>
                                                    <option>Anniversary</option>
                                                    <option>Marriage</option>
                                                </c:if>
                                                <c:if test="${pro.rows[0]._event eq 'Marriage'}">
                                                    <option>Marriage</option>
                                                    <option>Birthday</option>
                                                    <option>Anniversary</option>
                                                    <option>Engagement</option>
                                                </c:if>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control" name="status">
                                                <c:if test="${pro.rows[0].stt eq 'show'}">
                                                    <option>show</option>
                                                    <option>hidden</option>
                                                </c:if>
                                                <c:if test="${pro.rows[0].egg eq 'hidden'}">
                                                    <option>hidden</option>
                                                    <option>show</option>
                                                </c:if>                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputFile">Product Image</label>
                                            <p><img src="${pro.rows[0].img}" height="100" width="100" alt=""/></p>
                                            Chang image Product
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
