<%-- 
    Document   : menu
    Created on : Sep 16, 2015, 10:21:12 PM
    Author     : Windows 10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:set var="path" value="${pageContext.request.servletPath}" />
<script src="../jQuery/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script src="http://malsup.github.io/jquery.cycle2.js"></script>
<script>
    // show and hide sub menu
    $(function () {
        $('nav ul li').hover(
                function () {
                    //show its submenu
                    $('ul', this).slideDown(150);
                },
                function () {
                    //hide its submenu
                    $('ul', this).slideUp(150);
                }
        );
    });
//end
</script>
<style type="text/css">
    /* Slider
http://www.freshdesignweb.com/drop-down-responsive-menu-with-css3-and-jquery.html
    */
    @import url(http://fonts.googleapis.com/css?family=Gentium+Basic:400,700|Yanone+Kaffeesatz);
    /*===== nav style ======*/
    #fdw nav select {
        display:none; /* this is just for the mobile display */
    }
    #fdw nav ul {
        display:block;
        z-index:999999;
    }
    #fdw nav ul li {
        display:inline-block;
        padding:50px 3px 30px;
        margin-left:30px;
        position:relative;
    }
    #fdw nav ul li a:link, #fdw nav ul li a:visited {
        color:#444;
        font:normal 20px 'Yanone Kaffeesatz', sans-serif;
        text-transform:uppercase;
        display:inline-block;
        position:relative;
    }
    #fdw nav ul li a:hover, #fdw nav ul li a:active {
        color:#e25d29;
        text-decoration:none;
    }
    #fdw nav ul li span {
        position:absolute;
        right:-12px;
        bottom:6px;
        width:7px;
        height:8px;
        margin:0 0 0 3px;
        float:right;
        display:block;
        background:url('images/nav_arrow.png') no-repeat left -8px;
        font:0/0 a;
    }
    #fdw nav ul li.current {
        border-bottom:2px solid #e25d29;
    }
    #fdw nav ul li.current a {
        color:#e25d29;
        cursor: default;
    }
    #fdw nav ul li.current a span {
        background:url('../images/nav_arrow.png') no-repeat left 0;
    }
    #fdw nav ul li.current ul li a {
        cursor:pointer;
    }

    /*===== sub_menu Style =======*/
    #fdw nav ul li ul.sub_menu {
        position:absolute;
        top:90px;
        left:0;
        margin:0;
        padding:0;
        background:#fff;
        border:1px solid #ececec;
        border-top:5px solid #e25d29;
        display:none;
        z-index:999999;
        -moz-box-shadow: 0px 6px 7px #121012;
        -webkit-box-shadow: 0px 6px 7px #121012;
        box-shadow: 0px 6px 7px #121012;
    }
    #fdw nav ul li ul.sub_menu li.arrow_top {
        position:absolute;
        top:-12px;
        left:12px;
        width:13px;
        height:8px;
        display:block;
        border:none;
        background:url('images/arrow_top.png') no-repeat left top;
    }
    #fdw nav ul li ul.sub_menu li {
        float:none;
        margin:0;
        padding:0;
        border-bottom:1px solid #ececec;
    }
    #fdw nav ul li ul.sub_menu li a {
        white-space: nowrap;
        width: 150px;
        padding:12px;
        font:13px Arial, tahoma, sans-serif;
        text-transform:capitalize;
        color:#777;
    }
    #fdw nav ul li ul.sub_menu li a:hover {
        background:#f9f9f9;
        color:#333;
    }
    #fdw nav ul li ul.sub_menu li a.subCurrent {
        color:#e25d29;
        cursor:default;
    }
    #fdw nav ul li ul.sub_menu li a.subCurrent:hover {
        background:none;
    }
    /*===================== end Header style ======================*/


    @media only screen and (min-width: 768px) and (max-width: 959px) {
        /* nav */
        #fdw nav ul li{
            margin-left:12px;
        }
    }

    /* All Mobile Sizes (devices and browser) */
    @media only screen and (max-width: 767px) {

        /* nav menu ul & select */
        #fdw nav ul {
            display:none;
        }
        #fdw nav select {
            width:100%;
            display:block;
            margin-bottom:30px;
            cursor:pointer;
            padding:6px;
            background:#f9f9f9;
            border:1px solid #e3e3e3;
            color:#777;
        }
    }

    #progress { position: absolute; bottom: 0; height: 6px; width: 0px; background: #c00; z-index: 500; }

    #slide {
        width:940px; 
        background: #aa6581;
        padding: 10px;
        height: 240px;
        z-index: 989;
    }
    .cycle-slideshow{
        background: #ff9999;
        position: absolute;
        z-index: 89;
    }
    #menu{
        background: #ff9999;
        width: 940px;
        padding: 10px;
        height: 100px;
        z-index: 9999;
        position: relative;
    }
    #menu ul{
        background: #1F568B;
        list-style-type: none;
        text-align: center;
    }
    #menu li {
        color: #f1f1f1;
        display: inline-block;
        width: 120px;
        height: 40px;
        line-height: 40px;
        margin-left: -5px;
    }
    #menu a {
        text-decoration: none;
        color: #fff;
        display: block;
    }
    #menu a:hover {
        background: #F1F1F1;
        color: #333;
    }
    /*==Dropdown Menu==*/
    .sub-menu {
        display: none;
        position: absolute;
    }
    .sub-menu li {
        display: none;
    }
    #menu li {
        position: relative;
    }

    #menu li:hover .sub-menu {
        display: block;
    }
    .sub-menu li {
        margin-left: 0 !important;
    }
</style>

<div id="header">    
    <div>                
        <div>
            <div id="logo">
                <a href="Home.jsp"><img src="images/logo1.gif" alt="Logo"/></a>
            </div>
            <div>
                <div>
                    <a href="Signup.jsp">My Account</a>
                    <a href="Home.jsp">Help</a>
                    <a href="Signin.jsp" class="last">Sign in</a>
                </div>
                <form action="#">
                    <input type="text" id="search" maxlength="30" />
                    <input type="submit" value="" id="searchbtn" />
                </form>
            </div>
        </div>

        <c:choose>
            <c:when test="${path == '/Client/Home.jsp'}">
                <div id="menu">
                    <ul>
                        <li><a href="Home.jsp">home</a></li>
                        <li><a href="Product.jsp">All Cake</span></a>
                            <ul class="sub-menu">
                                <li><a href="#">Birthday</a></li>
                                <li><a href="#">Anniversary</a></li>
                                <li><a href="#">Engage</a></li>
                                <li><a href="#">Marriage</a></li>
                            </ul>
                        </li>
                        <li><a href="About.jsp">About Us</a></li>
                        <li><a href="Contact.jsp">contact us</a></li>
                    </ul>
                </div>

            </c:when>
            <c:when test="${path == '/Client/Product.jsp'}">
                <ul>
                    <li><a href="Home.jsp">Home</a></li>
                    <li class="current"><a href="Product.jsp">All Cakes</a></li>
                    <li><a href="About.jsp">About us</a></li>
                    <li><a href="Contact.jsp">Contact Us</a></li>
                </ul>
            </c:when>
            <c:when test="${path == '/Client/Contact.jsp'}">
                <ul>
                    <li><a href="Home.jsp">Home</a></li>
                    <li><a href="Product.jsp">All Cakes</a></li>
                    <li><a href="About.jsp">About us</a></li>
                    <li class="current"><a href="Contact.jsp">Contact Us</a></li>
                </ul>
            </c:when>
            <c:when test="${path == '/Client/About.jsp'}">
                <ul>
                    <li><a href="Home.jsp">Home</a></li>
                    <li><a href="Product.jsp">All Cakes</a></li>
                    <li class="current"><a href="About.jsp">About us</a></li>
                    <li><a href="Contact.jsp">Contact Us</a></li>
                </ul>
            </c:when>
            <c:otherwise>
                <ul>
                    <li><a href="Home.jsp">Home</a></li>
                    <li><a href="Product.jsp">All Cakes</a></li>
                    <li><a href="About.jsp">About us</a></li>
                    <li><a href="Contact.jsp">Contact Us</a></li>
                </ul>
            </c:otherwise>
        </c:choose>

        <div id="slide" style="height: 240px;">
            <div class="cycle-slideshow"  style="height: 240px;"
                 data-cycle-pause-on-hover="true"
                 data-cycle-fx="scrollHorz"
                 data-cycle-speed="600"    
                 data-cycle-timeout="1200"
                 data-cycle-slides="> a"
                 >
                <a href="Home.jsp"><img src="images/wedding-cupcakes-small.jpg" height="240" width="940" alt="Image"/></a>
                <a href="#"><img src="images/healthy.jpg" width="960" height="240" /></a>
                <img src="images/cakes1.jpg" width="960" height="240" />
                <img src="images/dog.jpg" width="960" height="240" />
                <img src="images/Star.jpg" width="960" height="240" />
                <img src="images/valentine-day-cake.jpg" width="960" height="240" />


            </div>
            <div id="progress"></div>
        </div>
    </div>
</div>
<!--<div id="fdw">
    nav
    <nav>
        <ul>
            <li class="current"><a href="Home.jsp">home<span class="arrow"></span></a>
            </li>
            <li><a href="Product.jsp">All Cake<span class="arrow"></span></a>
                <ul style="display: none;" class="sub_menu">
                    <li class="arrow_top"></li>
                    <li><a href="#">Birthday</a></li>
                    <li><a href="#">Anniversary</a></li>
                    <li><a href="#">Engage</a></li>
                    <li><a href="#">Marriage</a></li>
                </ul>
            </li>
            <li><a href="About.jsp">About Us</a></li>
            <li><a href="Contact.jsp">contact us</a></li>
        </ul>
    </nav>
</div> end fdw -->
