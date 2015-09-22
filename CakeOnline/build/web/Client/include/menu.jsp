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
    #header {
        background: #f5f5f5 url(images/bg-body.gif) repeat-x center top;
    }
    #header div {
        margin: 0 auto;
        width: 960px;
    }
    #top{
       	height: 120px;
        overflow: hidden;
        position: relative;
    }

    #header div div div#logo {
        float: left;
        width: 331px;
    }
    #header div div div#tright {
        float: right;
        height: 110px;
        width: auto;
    }
    #header div div div div#link {
        display: block;
        float: none;
        height: auto;
        padding-bottom: 40px;
        padding-left: 134px;
        margin-top: 20px;
        overflow: hidden;
        width: auto;
    }
    #header div div div div#link a {
        border-right: 1px solid #6c404f;
        color: #6c404f;
        display: block;
        float: left;
        font-weight: bold;
        line-height: 13px;
        padding: 0 5px;
        text-decoration: none;
    }

    #header div div div div#link a.last {
        border: 0;
        padding-right: 0;
    }

    #header div div div form {
        position: absolute;
        right: 0;
        top: 70px;
        height: 30px;
        width: 290px;
    }

    #header div div div form input {
        float: left;
        line-height: 30px;
    }

    #header div div div form input#search {
        background: url(images/input-search.gif) no-repeat 0 0;
        border: 0;
        height: 30px;
        padding: 0 5px;
        width: 220px;
    }

    #header div div div form input#searchbtn {
        background: url(images/sprite-buttons.gif) no-repeat 0 -291px;
        border: none;
        height: 30px;
        width: 60px;
    }

    #slide {
        width:940px; 
        background: #aa6581;
        padding: 10px;
        height: 240px;
    }
    /*===== Dropdown Menu style ======*/
    #fdw{
        margin-top: 5px;
        height: 50px;
    }
    #fdw nav select {
        display:none; /* this is just for the mobile display */
    }
    #fdw nav ul {
        display:block;
        z-index:999999;
        margin: 0;
        padding: 0;
    }
    #fdw nav ul li {
        /*background: url(images/sprite-buttons.gif) no-repeat 0 -205px;*/
        position:relative;
        list-style-type: none;
        float: left;
        height: 50px;
        line-height: 50px;
        width: 160px;
        text-align: center;
    }
    #fdw nav ul li a{
        height: 100%;
        width: 100%;
        background: url(images/sprite-buttons.gif) no-repeat 0 -205px;
        color: #000;
        display: block;
        font-size: 14px;
        text-align: center;
        text-decoration: none;
        text-shadow: 1px 1px 0 #e8edf1;
        text-transform: capitalize;
    }
    #fdw nav ul li a:hover, #fdw nav ul li.current a {
        color: #b13c68;
        text-shadow: 1px 1px 0 #ebb8c7;
        background: url(images/sprite-buttons.gif) no-repeat 0 -97px;
    }
    #header div ul li.current a{
        height: 100%;
        width: 100%;
        background: url(images/sprite-buttons.gif) no-repeat 0 -97px;
    }

    #fdw nav ul li a:link, #fdw nav ul li a:visited {
        color:#000;
        /*text-transform:uppercase;*/
        display:inline-block;
        position:relative;
    }
    #fdw nav ul li a:active {
        color:#b13c68;
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
        /*border-bottom:2px solid #e25d29;*/
    }
    #fdw nav ul li.current a {
        color:#e25d29;
        cursor: default;
    }
    #fdw nav ul li.current a span {
        background:url('images/nav_arrow.png') no-repeat left 0;
    }
    #fdw nav ul li a span {
        background:url('images/nav_arrow.png') no-repeat left 0;
    }
    #fdw nav ul li.current ul li a {
        cursor:pointer;
    }

    /*===== sub_menu Style =======*/
    #fdw nav ul li ul.sub_menu {
        position:absolute;
        top:52px;
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
        top:-10px;
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
    #fdw nav ul li ul.sub_menu a:hover{
        height: 100%;
        width: 100%;
        color: #000;
        background: #f1ffff;
        text-shadow: 1px 1px 0 #ebb8c7;
    }
    #fdw nav ul li ul.sub_menu li a{
        height: 100%;
        width: 100%;
        background: url(images/sprite-buttons.gif) no-repeat 0 -205px;
        color: #5b5c5e;
        display: block;
        font-size: 14px;
        text-align: center;
        text-decoration: none;
        text-shadow: 1px 1px 0 #e8edf1;
        text-transform: capitalize;
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
</style>
<div id="header">    
    <div>                
        <div id="top">
            <div id="logo">
                <a href="Home.jsp"><img src="images/logo1.gif" alt="Logo"/></a>
            </div>
            <div id="tright">
                <div id="link">
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
                <div id="fdw">
                    <nav>
                        <ul>
                            <li class="current"><a href="Home.jsp">home</a></li>
                            <li><a href="Product.jsp">All Cake<span></span></a>
                                <ul class="sub_menu" style="display: none">
                                    <li><a href="#">Birthday</a></li>
                                    <li><a href="#">Anniversary</a></li>
                                    <li><a href="#">Engage</a></li>
                                    <li><a href="#">Marriage</a></li>
                                </ul>
                            </li>
                            <li><a href="About.jsp">About Us</a></li>
                            <li><a href="Contact.jsp">contact us</a></li>
                            <li><a href="Contact.jsp">Service</a></li>
                            <li><a href="Contact.jsp">Blog</a></li>
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
                                    <li><a href="#">Birthday</a></li>
                                    <li><a href="#">Anniversary</a></li>
                                    <li><a href="#">Engage</a></li>
                                    <li><a href="#">Marriage</a></li>
                                </ul>
                            </li>
                            <li><a href="About.jsp">About Us</a></li>
                            <li><a href="Contact.jsp">contact us</a></li>
                            <li><a href="Contact.jsp">Service</a></li>
                            <li><a href="Contact.jsp">Blog</a></li>
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
                                    <li><a href="#">Birthday</a></li>
                                    <li><a href="#">Anniversary</a></li>
                                    <li><a href="#">Engage</a></li>
                                    <li><a href="#">Marriage</a></li>
                                </ul>
                            </li>
                            <li><a href="About.jsp">About Us</a></li>
                            <li class="current"><a href="Contact.jsp">contact us</a></li>
                            <li><a href="Contact.jsp">Service</a></li>
                            <li><a href="Contact.jsp">Blog</a></li>
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
                                    <li><a href="#">Birthday</a></li>
                                    <li><a href="#">Anniversary</a></li>
                                    <li><a href="#">Engage</a></li>
                                    <li><a href="#">Marriage</a></li>
                                </ul>
                            </li>
                            <li class="current"><a href="About.jsp">About Us</a></li>
                            <li><a href="Contact.jsp">contact us</a></li>
                            <li><a href="Contact.jsp">Service</a></li>
                            <li><a href="Contact.jsp">Blog</a></li>
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
                                    <li><a href="#">Birthday</a></li>
                                    <li><a href="#">Anniversary</a></li>
                                    <li><a href="#">Engage</a></li>
                                    <li><a href="#">Marriage</a></li>
                                </ul>
                            </li>
                            <li><a href="About.jsp">About Us</a></li>
                            <li><a href="Contact.jsp">contact us</a></li>
                            <li><a href="Contact.jsp">Service</a></li>
                            <li><a href="Contact.jsp">Blog</a></li>
                        </ul>
                    </nav>
                </div>
            </c:otherwise>
        </c:choose>

        <div id="slide" style="height: 240px; z-index: 1;">
            <div class="cycle-slideshow"  style="height: 240px;z-index: 2;"
                 data-cycle-pause-on-hover="true"
                 data-cycle-fx="scrollHorz"
                 data-cycle-speed="600"    
                 data-cycle-timeout="1200"
                 data-cycle-slides="> a"
                 >
                <a href="Home.jsp"><img src="images/wedding-cupcakes-small.jpg" height="240" width="960" alt="Image"/></a>
                <a href="#"><img src="images/healthy.jpg" width="960" height="240" /></a>
                <a href="#"><img src="images/cakes1.jpg" width="960" height="240" /></a>
                <a href="#"><img src="images/dog.jpg" width="960" height="240" /></a>
                <a href="#"><img src="images/Star.jpg" width="960" height="240" /></a>
                <a href="#"><img src="images/valentine-day-cake.jpg" width="960" height="240" /></a>
            </div>
        </div>
    </div>
</div>

