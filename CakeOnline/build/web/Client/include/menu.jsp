<%-- 
    Document   : menu
    Created on : Sep 16, 2015, 10:21:12 PM
    Author     : Windows 10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<script src="../jQuery/MyJs.js" type="text/javascript"></script>
<sql:setDataSource var="conn" 
                   driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                   url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                   user="sa" 
                   password="123456"
                   scope="session"/>

<c:set var="urlPage" value="${pageContext.request.getRequestURL()}" scope="session" />
<jsp:useBean id="mrBean" class="model.DataProcess" />
<c:if test="${!empty sessionScope['code']}">
    <script>
        $(function () {
            $("#addCart").modal();
        });

    </script>
    <sql:query dataSource="${conn}" var="p" scope="request">
        Select * from Product where itemcode='${sessionScope.code}';
    </sql:query>
    <div class="modal fade in" id="addCart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display: none;background-color:rgba(0, 0, 0, 0.6);">
        <div class="modal-dialog" >
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" onclick="resetModal()" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="myModalLabel">${p.rows[0].name}</h4>
                </div>
                <div class="modal-body">
                    <img src="${p.rows[0].img}" height="300" width="300"/>
                    <form action="../Controller?ac=addCart&id=${p.rows[0].itemcode}" method="Post">
                        <div class="form-group">
                            <label for="quantity" id="usernamelb">Quantity</label>
                            <input type="number" value="1" class="form-control" placeholder="Quantity" name="quantity"/>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-warning"><i class="fa fa-shopping-cart"></i>
                                Add to Cart</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Cancel</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
    <c:set var="code" scope="session" value="${null}"/>
</c:if>

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
                        <button type="button" class="btn btn-primary"data-dismiss="modal" data-toggle="modal" data-target="#signUpModal">Sign up</button>
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
                        <button type="reset" class="btn btn-warning"><i class="fa fa-refresh"></i>  Reset</button>
                        <button type="submit" class="btn btn-warning">Sign up</button>                        
                        <button type="button" onclick="resetModal()" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
<div class="modal fade in" id="myCart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display: none;background: #9C9C9C;background-color:rgba(0, 0, 0, 0.6);">
    <div class="modal-dialog" >
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" onclick="resetModal()" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">My Cart</h4>
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
                        <button type="button" class="btn btn-primary"data-dismiss="modal" data-toggle="modal" data-target="#signUpModal">Sign up</button>
                        <button type="button" class="btn btn-default" onclick="resetModal()" data-dismiss="modal">Close</button>
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
                            <a href="#" data-toggle="modal" data-target="#signUpModal"><i class="fa fa-reply-all"></i> Sign up</a>
                            <a href="About.jsp"  ><i class="fa fa-info"></i> Help</a>
                            <a href="#" data-toggle="modal" data-target="#myModal" class="last"><i class="fa fa-sign-in"></i> Sign in</a>
                        </c:when>
                        <c:otherwise>
                            <a href="#" ><i class="fa fa-user-plus"></i> Profile</a>
                            <a href="#" data-toggle="modal" data-target="#myCart" onmouseover="showMyCart()"><i class="fa fa-cart-plus "></i> Cart</a>
                            <a href="../Controller?ac=logout" class="last"><i class="fa fa-sign-out"></i> Sign out</a>

                        </c:otherwise>
                    </c:choose>
                </div>

                <form action="Product.jsp?">
                    <input type="text" id="autosearch" class="search" name="autosearch" maxlength="30" />
                    <input type="submit" value="" id="searchbtn" />
                </form>
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
                            <li><a href="Service.jsp">Service</a></li>
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
                <a href="Detail.jsp?id=tc27"><img src="images/wedding-cupcakes-small.jpg" height="240" width="940" alt="Image"/></a>
                <a href="Detail.jsp?id=tc30"><img src="images/healthy.jpg" width="940" height="240" /></a>
                <a href="Detail.jsp?id=tc29"><img src="images/cakes1.jpg" width="940" height="240" /></a>
                <a href="Detail.jsp?id=tc23"><img src="images/dog.jpg" width="940" height="240" /></a>
                <a href="Detail.jsp?id=tc36"><img src="images/sweetcupcake.jpg" width="940" height="240" /></a>
                <a href="Detail.jsp?id=tc26"><img src="images/valentine-day-cake.jpg" width="940" height="240" /></a>
            </div>
        </div>
    </div>
</div>
