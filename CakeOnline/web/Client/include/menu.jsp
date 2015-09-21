<%-- 
    Document   : menu
    Created on : Sep 16, 2015, 10:21:12 PM
    Author     : Windows 10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:set var="path" value="${pageContext.request.servletPath}" />
<!--<script type="text/javascript" src="css/coin-slider.js"></script>-->
<!--<script src="../jQuery/jquery 1.11.1 for cycle2.js" type="text/javascript"></script>-->
<!--<script src="../jQuery/jquery.cycle2.js" type="text/javascript"></script>-->
<script src="../jQuery/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script src="http://malsup.github.io/jquery.cycle2.js"></script>
<script src="../jQuery/script.js" type="text/javascript"></script>
<style type="text/css">
    .slide {
        position:relative; 
        width:940px; 
        background: #aa6581;
        padding: 10px;
        height: 240px;
    }
    /*.slide img {position:absolute;}*/
    /*.slide a {position:absolute;}*/
</style>
<div id='cssmenu'>
    <ul>
        <li class='has-sub'><a href='#'><span>Home</span></a>
            <ul>
                <li><a href='#'><span>Product 1</span></a></li>
                <li><a href='#'><span>Product 2</span></a></li>
                <li class='last'><a href='#'><span>Product 3</span></a></li>
            </ul></li>
        <li class='has-sub'><a href='#'><span>Products</span></a>
            <ul>
                <li><a href='#'><span>Product 1</span></a></li>
                <li><a href='#'><span>Product 2</span></a></li>
                <li class='last'><a href='#'><span>Product 3</span></a></li>
            </ul>
        </li>
        <li class='has-sub'><a href='#'><span>About</span></a>
            <ul>
                <li><a href='#'><span>Company</span></a></li>
                <li class='last'><a href='#'><span>Contact</span></a></li>
            </ul>
        </li>
        <li class='last'><a href='#'><span>Contact</span></a></li>
    </ul>
</div>
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
                <div id="cssmenu">
                    <ul>
                        <li class="active"><a href="Home.jsp"><span>Home</span></a></li>
                        <li class="has-sub"><a href="Product.jsp"><span>All Cakes</span></a>
                            <ul>
                                <li><a href="#"><span>BirthDay</span></a></li>
                                <li><a href="#"><span>Anniversary</span></a></li>
                                <li><a href="#"><span>Engage</span></a></li>
                                <li><a href="#"><span>Marriage</span></a></li>
                            </ul>
                        </li>
                        <li><a href="About.jsp"><span>About us</span></a></li>
                        <li class="last"><a href="Contact.jsp"><span>Contact Us</span></a></li>
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
        <div class="slide" style="height: 240px;">
            <div class="cycle-slideshow"  style="height: 240px;"
                 data-cycle-pause-on-hover="true"
                 data-cycle-fx="scrollHorz"
                 data-cycle-speed="600"    
                 data-cycle-timeout="1200"
                 >
                <a href="Home.jsp"><img src="images/wedding-cupcakes-small.jpg" height="240" width="940" alt="Image"/></a>
                <img src="images/1.jpg" width="960" height="240" />
                <img src="images/2.jpg" width="960" height="240" />
                <img src="images/3.jpg" width="960" height="240" />
                <img src="images/4.jpg" width="960" height="240" />
                <img src="images/5.jpg" width="960" height="240" />
                <img src="images/6.jpg" width="960" height="240" />
            </div>
        </div>
    </div>
</div>
