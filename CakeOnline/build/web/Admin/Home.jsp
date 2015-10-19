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
        <link href="assets/css/style.css" rel="stylesheet" />    


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

        <script src="assets/js/morris.min.js"></script>
        <script src="assets/js/raphael.min.js"></script>
        <script src="assets/js/morris.js"></script>
        <link href="assets/css/morris.css" rel="stylesheet" />
    </head>

    <sql:setDataSource var="conn" 
                       driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                       url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                       user="sa" 
                       password="123456"
                       scope="session"/>
    <sql:query dataSource="${conn}" var="Revenue">
        SELECT SUM(total) AS cTotal, MONTH(OrderList.deliveriDate) AS cMonth FROM OrderList GROUP BY MONTH(OrderList.deliveriDate);
    </sql:query>


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
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    So luong san pham
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div id="morris-area-chart"></div>
                                </div>
                                <!-- /.panel-body -->
                            </div>
                            <!-- /.panel -->
                        </div>

                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><i class="fa fa-long-arrow-right fa-fw"></i> Donut Chart</h3>
                                </div>
                                <div class="panel-body">
                                    <div id="morris-donut-chart"><svg height="347" version="1.1" width="306" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with RaphaÃ«l 2.1.2</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs><path fill="none" stroke="#0b62a4" d="M153,271.3333333333333A95.33333333333333,95.33333333333333,0,0,0,243.10368304650171,207.1411423345388" stroke-width="2" opacity="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 0;"></path><path fill="#0b62a4" stroke="#ffffff" d="M153,274.3333333333333A98.33333333333333,98.33333333333333,0,0,0,245.93911363188113,208.12110835205925L283.4298069274535,221.0784368059408A138,138,0,0,1,153,314Z" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><path fill="none" stroke="#3980b5" d="M243.10368304650171,207.1411423345388A95.33333333333333,95.33333333333333,0,0,0,67.48942206387726,133.85281141671817" stroke-width="2" opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 1;"></path><path fill="#3980b5" stroke="#ffffff" d="M245.93911363188113,208.12110835205925A98.33333333333333,98.33333333333333,0,0,0,64.79852975120207,132.52650128647502L24.734133095815878,112.77921712507725A143,143,0,0,1,288.1555245697525,222.71171350180822Z" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><path fill="none" stroke="#679dc6" d="M67.48942206387726,133.85281141671817A95.33333333333333,95.33333333333333,0,0,0,152.97005015052835,271.33332862882196" stroke-width="2" opacity="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 0;"></path><path fill="#679dc6" stroke="#ffffff" d="M64.79852975120207,132.52650128647502A98.33333333333333,98.33333333333333,0,0,0,152.96910767274778,274.3333284807779L152.9566460220935,313.999993189973A138,138,0,0,1,29.218953616941192,114.98973400881582Z" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="153" y="166" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: 800; font-stretch: normal; font-size: 15px; line-height: normal; font-family: Arial;" font-size="15px" font-weight="800" transform="matrix(1.4793,0,0,1.4793,-73.3345,-84.8379)" stroke-width="0.675990675990676"><tspan dy="6" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">In-Store Sales</tspan></text><text x="153" y="186" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 14px; line-height: normal; font-family: Arial;" font-size="14px" transform="matrix(1.9861,0,0,1.9861,-150.875,-175.5278)" stroke-width="0.5034965034965035"><tspan dy="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">30</tspan></text></svg></div>
                                    <div class="text-right">
                                        <a href="#">View Details <i class="fa fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><i class="fa fa-clock-o fa-fw"></i> Tasks Panel</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="list-group">
                                        <a href="#" class="list-group-item">
                                            <span class="badge">just now</span>
                                            <i class="fa fa-fw fa-calendar"></i> Calendar updated
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <span class="badge">4 minutes ago</span>
                                            <i class="fa fa-fw fa-comment"></i> Commented on a post
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <span class="badge">23 minutes ago</span>
                                            <i class="fa fa-fw fa-truck"></i> Order 392 shipped
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <span class="badge">46 minutes ago</span>
                                            <i class="fa fa-fw fa-money"></i> Invoice 653 has been paid
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <span class="badge">1 hour ago</span>
                                            <i class="fa fa-fw fa-user"></i> A new user has been added
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <span class="badge">2 hours ago</span>
                                            <i class="fa fa-fw fa-check"></i> Completed task: "pick up dry cleaning"
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <span class="badge">yesterday</span>
                                            <i class="fa fa-fw fa-globe"></i> Saved the world
                                        </a>
                                        <a href="#" class="list-group-item">
                                            <span class="badge">two days ago</span>
                                            <i class="fa fa-fw fa-check"></i> Completed task: "fix error on sales page"
                                        </a>
                                    </div>
                                    <div class="text-right">
                                        <a href="#">View All Activity <i class="fa fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><i class="fa fa-money fa-fw"></i> Transactions Panel</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Order #</th>
                                                    <th>Order Date</th>
                                                    <th>Order Time</th>
                                                    <th>Amount (USD)</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>3326</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:29 PM</td>
                                                    <td>$321.33</td>
                                                </tr>
                                                <tr>
                                                    <td>3325</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:20 PM</td>
                                                    <td>$234.34</td>
                                                </tr>
                                                <tr>
                                                    <td>3324</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:03 PM</td>
                                                    <td>$724.17</td>
                                                </tr>
                                                <tr>
                                                    <td>3323</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:00 PM</td>
                                                    <td>$23.71</td>
                                                </tr>
                                                <tr>
                                                    <td>3322</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:49 PM</td>
                                                    <td>$8345.23</td>
                                                </tr>
                                                <tr>
                                                    <td>3321</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:23 PM</td>
                                                    <td>$245.12</td>
                                                </tr>
                                                <tr>
                                                    <td>3320</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:15 PM</td>
                                                    <td>$5663.54</td>
                                                </tr>
                                                <tr>
                                                    <td>3319</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:13 PM</td>
                                                    <td>$943.45</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="text-right">
                                        <a href="#">View All Transactions <i class="fa fa-arrow-circle-right"></i></a>
                                    </div>
                                </div>
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
        <script>
            $(function () {

                Morris.Area({
                    element: 'morris-area-chart',
                    data: [
            <c:forEach var="i" items="${Revenue.rows}">
                        {
                            month: '2011-${i.cMonth}',
                            quantity: ${i.cTotal}
                        },
            </c:forEach>
                    ],
                    xkey: 'month',
                    ykeys: ['quantity'],
                    labels: ['so luong'],
                    pointSize: 2,
                    hideHover: 'auto',
                    resize: true
                });
            });
        </script>
    </body>
</html>
