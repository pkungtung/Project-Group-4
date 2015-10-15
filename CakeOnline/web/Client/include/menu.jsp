<%-- 
    Document   : menu
    Created on : Sep 16, 2015, 10:21:12 PM
    Author     : Windows 10
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:set var="path" value="${pageContext.request.servletPath}" />
<script src="../jQuery/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="../jQuery/jquery 1.11.1 for cycle2.js" type="text/javascript"></script>
<script src="../jQuery/jquery.cycle2.js" type="text/javascript"></script>

<link rel="stylesheet" href="css/search/jquery-ui.css" type="text/css"/>
<script src="js/search/jquery-ui.js"></script>
<script src="js/search/jquery.ui.autocomplete.accentFolding.js"></script>

<!--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js?ver=1.4.2"></script>-->
<!--login-->
<link href="../Admin/assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="../Admin/assets/css/font-awesome.css" rel="stylesheet" type="text/css"/>
<link href="../Admin/assets/css/style.css" rel="stylesheet" type="text/css"/>
<script src="../Admin/assets/js/bootstrap.js" type="text/javascript"></script>
<style>
    #autoTop {
        background: url(images/TopBtn.png) no-repeat left top;
        width: 121px;
        height: 50px;
        position: fixed;
        _position: absolute;
        right: 0;
        bottom: 41px;
        cursor: pointer;
        display: none;
    }
</style>
<script src="../jQuery/MyJs.js" type="text/javascript"></script>
<sql:setDataSource var="conn" 
                   driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                   url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                   user="sa" 
                   password="123456"
                   scope="session"/>

<c:set var="urlPage" value="${pageContext.request.getRequestURL()}" scope="session" />
<jsp:useBean id="mrBean" class="model.DataProcess" />
<c:if test="${'signinFailed' eq sessionScope.flag}">
    <c:set var="flag" scope="session" value=""/>
    <script>
        $(function () {
            $("#myModal").modal();
//            document.getElementById("myModal").style.display = "block";
            document.getElementById('myModalLabel').innerHTML = "UserName or Password incorrect";
            document.getElementById('myModalLabel').style.color = "#cc0000";
        });

    </script>

</c:if>
<c:if test="${'signupOK' eq sessionScope.flag}">
    <c:set var="flag" scope="session" value=""/>
    <script>
        $(function () {
            $("#myModal").modal();
//            document.getElementById("myModal").style.display = "block";
            document.getElementById('myModalLabel').innerHTML = "Signup success, now you can signin!";
            document.getElementById('myModalLabel').style.color = "#0033CC";
        });
    </script>
</c:if>
<c:if test="${'signupExist' eq sessionScope.flag}">
    <c:set var="flag" scope="session" value=""/>
    <script>
        $(function () {
            $("#signUpModal").modal();
//            document.getElementById("signUpModal").style.display = "block";
            document.getElementById('myModalSignupLabel').innerHTML = "Username exist, please input again!";
            document.getElementById('myModalSignupLabel').style.color = "#cc0000";
        });
    </script>
</c:if>
<script type="text/javascript">

    //search a Muoi
    function getListSearch() {

        var source = [
    <c:forEach var="item" items="${mrBean.listCake}">
            {
                url: "Detail.jsp?id=${item.itemCode}",
                value: "${item.name}"
            },
    </c:forEach>
        ];
        return source;
    }

    //signin button click

    function showMyCart() {
        //        document.getElementById("myCart").style.display = "block";

    }
</script>
<div class="modal fade in" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display: none;background-color:rgba(0, 0, 0, 0.6);">
    <div class="modal-dialog" >
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" onclick="resetModal()" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">Signin to Site</h4>
            </div>
            <div class="modal-body">
                <form action="loginAuthenticate.jsp?ac=signin" method="Post" id="fomSignin" onsubmit="return  validateSignIn()">
                    <div class="form-group has-success">
                        <label for="userName" id="usernamelb">UserName</label>
                        <input type="text" class="form-control" id="username" placeholder="UserName" name="username"/>
                    </div>
                    <div class="form-group has-warning">
                        <label for="password" id="passlb">Password</label>
                        <input type="password" class="form-control" id="pass" placeholder="Password" name="pass"/>
                    </div>
                    <div class="modal-footer">
                        <button type="button" id="singinBtn" class="btn btn-primary" onclick="signin()">Sign in</button>
                        <button type="button" class="btn btn-default" onclick="resetModal()" data-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
<div class="modal fade in" id="signUpModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display: none;background-color:rgba(0, 0, 0, 0.6);">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" onclick="resetModal()" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalSignupLabel">Signup to Site</h4>
            </div>
            <div class="modal-body">
                <form action="loginAuthenticate.jsp?ac=signup" method="Post">
                    <div class="form-group">
                        <label for="userName">UserName</label>
                        <input type="text" class="form-control" id="userName" placeholder="UserName" name="userName"/>
                    </div>
                    <div class="form-group">
                        <label for="pass">Password</label>
                        <input type="password" class="form-control" id="pass" placeholder="Password" name="pass"/>
                    </div>
                    <div class="form-group">
                        <label for="Name">Name</label>
                        <input type="text" class="form-control" id="name" placeholder="Name" name="name"/>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text" class="form-control" id="email" placeholder="Email" name="email"/>
                    </div>
                    <div class="form-group">
                        <label for="address">Address</label>
                        <input type="text" class="form-control" id="address" placeholder="Address" name="address"/>
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone Number</label>
                        <input type="text" class="form-control" id="phone" placeholder="Phone Number" name="number"/>
                    </div>
                    <div class="modal-footer">
                        Already have an account? <a href="loginAuthenticate.jsp?ac=signin">Sign in</a> &nbsp;
                        <button type="reset" class="btn btn-warning"><i class="fa fa-refresh"></i>  Reset</button>
                        <button type="submit" class="btn btn-warning">Sign up</button>                        
                        <button type="button" onclick="resetModal()" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

<div id="header" style="background: #f5f5f5 url(images/bg-body.gif) repeat-x center top;">    
    <div>           
        <div id="top">
            <div id="logo">
                <a href="Home.jsp"><img src="images/logo1.gif" alt="Logo"/></a>
            </div>

            <div id="tright">
                <div id="link">
                    <c:choose>
                        <c:when test="${empty sessionScope.loginUser}">
                            <a href="#" data-toggle="modal" data-target="#signUpModal"><i class="fa fa-bars"></i> Sign up</a>
                            <a href="#" data-toggle="modal" data-target="#myModal" class="last"><i class="fa fa-sign-in"></i> Sign in</a>
                        </c:when>
                        <c:otherwise>
                            <a href="#" ><i class="fa fa-user-plus"></i> Profile</a>
                            <a href="loginAuthenticate.jsp?ac=signout" class="last"><i class="fa fa-sign-out"></i> Sign out</a>
                        </c:otherwise>
                    </c:choose>
                </div>

                <form action="Product.jsp?" style="margin-right: 200px;top: 60px">
                    <input type="text" id="autosearch" class="search" name="autosearch" maxlength="30" />
                    <input type="submit" value="" id="searchbtn" />
                </form>
                <!--                <a href="MyCart.jsp" 
                                   class="btn btn-warning" 
                                   style="float: right; width: 100px;" 
                                   onmouseover="showMyCart()">
                                    <i class="fa fa-cart-plus "> </i>&nbsp Cart</a>-->
                <div class="header-cart-mini" style="width: 110px;">
                    <div class="topcart-mini-container" style="width: 190px;">
                        <div id="mini_cart_block" style="width: 190px;">
                            <div id="bcart" class="block-cart mini_cart_ajax" style="width: 190px;">
                                <div id="scart" class="block-cart" style="width: 190px;">
                                    <!--<span class="top-cart-icon"></span>-->
                                    <div class="cart-mini-title" style="width: 190px;">
                                        <a class="shopping-cart" href="MyCart.jsp" rel="tooltip" data-original-title="">
                                            <span class="cart-title"><i class="fa fa-shopping-cart"></i></span>
                                                <c:set var="it" value="0"/>
                                                <c:forEach var="xxx" items="${cart.content}">
                                                    <c:set var="it" value="${it+1}"/>
                                                </c:forEach>
                                            <span class="cart-count">${it} item <span class="asc">- </span><span class="price">My Cart</span></span>
                                            <!--<span class="cart-qty"></span>-->
                                            <span class="arrows"><i class="fa fa-arrow-right"></i></span>
                                        </a>
                                    </div>
                                    <div class="top-cart-content" style="width: 421px;position: fixed;margin-left: 20px;margin-right: 247px;margin-top: 60px;z-index: 999;">
                                        <!--              Xử lý chức năng giỏ hàng-->
                                        <c:choose>
                                            <c:when test="${empty sessionScope.cart}">
                                                <p class="empty">You have no items in your shopping cart.</p>
                                                <div class="top-subtotal" style="width: 190px;">Subtotal: <span class="price">$0.00</span></div>
                                            </c:when>
                                            <c:otherwise>
                                                <ol id="cart-sidebar" class="mini-products-list">

                                                    <c:forEach var="item" items="${sessionScope.cart.getContent()}">
                                                        <li class="item odd">
                                                            <sql:query dataSource="${conn}" var="cakes">
                                                                SELECT * FROM Product where itemcode = '${item.key}'
                                                            </sql:query>
                                                            <c:forEach var="cake" items="${cakes.rows}">
                                                                <a href="#" class="product-image">
                                                                    <!--     anh chinh anh o day-->
                                                                    <img src="../images/${cake.img}" width="50" height="50"></a>
                                                                <div class="product-details" style="width: 190px;">
                                                                    <a href="../Controller?ac=delProduct&id=${cake.itemcode}" id="${cake.itemcode}" title="Remove This Item" onclick="removeCart(${cake.itemcode})" class="btn-remove">Remove This Item</a>
                                                                    <a href="MyCart.jsp" title="Edit item" class="btn-edit">Edit item</a>
                                                                    <p class="product-name" style="width: 150px"><a href="#">${cake.name}</a></p>
                                                                    <strong>${item.value}</strong> x
                                                                    <span class="price">$${cake.price}</span>                    
                                                                </div>
                                                                <c:set var="multiplication" value="${item.value * cake.price}" scope="page"/>
                                                                <c:set var="total" value="${total + multiplication}" scope="page"/>
                                                            </c:forEach>
                                                        </li> 
                                                    </c:forEach>
                                                </ol>
                                                <div class="top-subtotal" style="width: 190px;">total: <span class="price">$${total}</span></div>
                                                <div class="actions" style="width: 190px;">
                                                    <button type="button" title="Checkout" class="button" onclick="window.location = '../Client/CheckOut.jsp'"><span><span>Checkout</span></span></button>
                                                </div>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <c:choose>
            <c:when test="${path == '/Client/Home.jsp'}">
                <div id="fdw">
                    <nav>
                        <ul>
                            <li class="current"><a href="Home.jsp">home</a></li>
                            <li><a href="Product.jsp">All Cake<span></span></a>
                                <ul class="sub_menu" style="display: none">
                                    <li><a href="Product.jsp?event=Birthday">Birthday</a></li>
                                    <li><a href="Product.jsp?event=Anniversary">Anniversary</a></li>
                                    <li><a href="Product.jsp?event=Engagement">Engagement</a></li>
                                    <li><a href="Product.jsp?event=Marriage">Marriage</a></li>
                                </ul>
                            </li>
                            <li><a href="About.jsp">About Us</a></li>
                            <li><a href="Contact.jsp">contact us</a></li>
                            <li><a href="maps.jsp">Store Location</a></li>
                            <li><a href="Blog.jsp">Blog</a></li>
                        </ul>
                    </nav>
                </div>
            </c:when>
            <c:when test="${path == '/Client/Product.jsp'}">
                <div id="fdw">
                    <nav>
                        <ul>
                            <li><a href="Home.jsp">home</a></li>
                            <li class="current"><a href="Product.jsp">All Cake<span></span></a>
                                <ul class="sub_menu" style="display: none">
                                    <li><a href="Product.jsp?event=Birthday">Birthday</a></li>
                                    <li><a href="Product.jsp?event=Anniversary">Anniversary</a></li>
                                    <li><a href="Product.jsp?event=Engagement">Engagement</a></li>
                                    <li><a href="Product.jsp?event=Marriage">Marriage</a></li>
                                </ul>
                            </li>
                            <li><a href="About.jsp">About Us</a></li>
                            <li><a href="Contact.jsp">contact us</a></li>
                            <li><a href="maps.jsp">Store Location</a></li>
                            <li><a href="Blog.jsp">Blog</a></li>
                        </ul>
                    </nav>
                </div>
            </c:when>
            <c:when test="${path == '/Client/Contact.jsp'}">
                <div id="fdw">
                    <nav>
                        <ul>
                            <li><a href="Home.jsp">home</a></li>
                            <li><a href="Product.jsp">All Cake<span></span></a>
                                <ul class="sub_menu" style="display: none">
                                    <li><a href="Product.jsp?event=Birthday">Birthday</a></li>
                                    <li><a href="Product.jsp?event=Anniversary">Anniversary</a></li>
                                    <li><a href="Product.jsp?event=Engagement">Engagement</a></li>
                                    <li><a href="Product.jsp?event=Marriage">Marriage</a></li>
                                </ul>
                            </li>
                            <li><a href="About.jsp">About Us</a></li>
                            <li class="current"><a href="Contact.jsp">contact us</a></li>
                            <li><a href="maps.jsp">Store Location</a></li>
                            <li><a href="Blog.jsp">Blog</a></li>
                        </ul>
                    </nav>
                </div>
            </c:when>
            <c:when test="${path == '/Client/About.jsp'}">
                <div id="fdw">
                    <nav>
                        <ul>
                            <li><a href="Home.jsp">home</a></li>
                            <li><a href="Product.jsp">All Cake<span></span></a>
                                <ul class="sub_menu" style="display: none">
                                    <li><a href="Product.jsp?event=Birthday">Birthday</a></li>
                                    <li><a href="Product.jsp?event=Anniversary">Anniversary</a></li>
                                    <li><a href="Product.jsp?event=Engagement">Engagement</a></li>
                                    <li><a href="Product.jsp?event=Marriage">Marriage</a></li>
                                </ul>
                            </li>
                            <li class="current"><a href="About.jsp">About Us</a></li>
                            <li><a href="Contact.jsp">contact us</a></li>
                            <li><a href="maps.jsp">Store Location</a></li>
                            <li><a href="Blog.jsp">Blog</a></li>
                        </ul>
                    </nav>
                </div>
            </c:when>          
            <c:when test="${path == '/Client/maps.jsp'}">
                <div id="fdw">
                    <nav>
                        <ul>
                            <li><a href="Home.jsp">home</a></li>
                            <li><a href="Product.jsp">All Cake<span></span></a>
                                <ul class="sub_menu" style="display: none">
                                    <li><a href="Product.jsp?event=Birthday">Birthday</a></li>
                                    <li><a href="Product.jsp?event=Anniversary">Anniversary</a></li>
                                    <li><a href="Product.jsp?event=Engagement">Engagement</a></li>
                                    <li><a href="Product.jsp?event=Marriage">Marriage</a></li>
                                </ul>
                            </li>
                            <li><a href="About.jsp">About Us</a></li>
                            <li><a href="Contact.jsp">contact us</a></li>
                            <li class="current"><a href="maps.jsp">Store Location</a></li>
                            <li><a href="Blog.jsp">Blog</a></li>
                        </ul>
                    </nav>
                </div>
            </c:when>          
            <c:when test="${path == '/Client/Blog.jsp'}">
                <div id="fdw">
                    <nav>
                        <ul>
                            <li><a href="Home.jsp">home</a></li>
                            <li><a href="Product.jsp">All Cake<span></span></a>
                                <ul class="sub_menu" style="display: none">
                                    <li><a href="Product.jsp?event=Birthday">Birthday</a></li>
                                    <li><a href="Product.jsp?event=Anniversary">Anniversary</a></li>
                                    <li><a href="Product.jsp?event=Engagement">Engagement</a></li>
                                    <li><a href="Product.jsp?event=Marriage">Marriage</a></li>
                                </ul>
                            </li>
                            <li><a href="About.jsp">About Us</a></li>
                            <li><a href="Contact.jsp">contact us</a></li>
                            <li><a href="maps.jsp">Store Location</a></li>
                            <li class="current"><a href="Blog.jsp">Blog</a></li>
                        </ul>
                    </nav>
                </div>
            </c:when>
            <c:otherwise>
                <div id="fdw">
                    <nav>
                        <ul>
                            <li><a href="Home.jsp">home</a></li>
                            <li><a href="Product.jsp">All Cake<span></span></a>
                                <ul class="sub_menu" style="display: none">
                                    <li><a href="Product.jsp?event=Birthday">Birthday</a></li>
                                    <li><a href="Product.jsp?event=Anniversary">Anniversary</a></li>
                                    <li><a href="Product.jsp?event=Engage">Engage</a></li>
                                    <li><a href="Product.jsp?event=Marriage">Marriage</a></li>
                                </ul>
                            </li>
                            <li><a href="About.jsp">About Us</a></li>
                            <li><a href="Contact.jsp">contact us</a></li>
                            <li><a href="maps.jsp">Store Location</a></li>
                            <li><a href="Blog.jsp">Blog</a></li>
                        </ul>
                    </nav>
                </div>
            </c:otherwise>
        </c:choose>

        <div id="slidee" style="height: 260px; z-index: 1; width: 960px;">
            <div class="cycle-slideshow"  style="height: 240px;z-index: 2; width: 940px;"
                 data-cycle-pause-on-hover="true"
                 data-cycle-fx="scrollHorz"
                 data-cycle-speed="600"    
                 data-cycle-timeout="1200"
                 data-cycle-slides="> a"
                 >
                <!--            empty element for pager links -->
                <div class="cycle-pager"></div>
                <a href="Detail.jsp?id=tc27"><img src="images/wedding-cupcakes-small.jpg" height="240" width="940" alt="Image"/></a>
                <a href="Detail.jsp?id=tc30"><img src="images/healthy.jpg" width="940" height="240" /></a>
                <a href="Detail.jsp?id=tc29"><img src="images/cakes1.jpg" width="940" height="240" /></a>
                <a href="Detail.jsp?id=tc23"><img src="images/dog.jpg" width="940" height="240" /></a>
                <a href="Detail.jsp?id=tc36"><img src="images/swcupcake.jpg" width="940" height="240" /></a>
                <a href="Detail.jsp?id=tc26"><img src="images/valentine-day-cake.jpg" width="940" height="240" /></a>
                <a href="Detail.jsp?id=tc26"><img src="images/banh sinh_n.png" width="940" height="240" /></a>
            </div>
        </div>
    </div>
</div>
