<%-- 
    Document   : menu
    Created on : Sep 16, 2015, 10:21:12 PM
    Author     : Windows 10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:set var="path" value="${pageContext.request.servletPath}" />
<script type="text/javascript" src="css/coin-slider.js"></script>
<script src="../jquery-2.1.4.min.js" type="text/javascript"></script>
<script type = "text/javascript" >
    $(function () {
        $('.slide img:gt(0)').hide();
        setInterval(function () {
            $('.slide :first-child').fadeOut()
                    .next('img').fadeIn()
                    .end().appendTo('.slide');
        },
                1500);
    })
</script>
<style type="text/css">
    .slide {
        position:relative; width:940px; 
        background: #aa6581;
        padding: 10px;
        height: 240px;
    }
    .slide img {position:absolute;}
    .slide a img {position:absolute;}
</style>
<link rel="stylesheet" href="css/coin-slider-styles.css" type="text/css" />
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
                <ul>
                    <li class="current"><a href="Home.jsp">Home</a></li>
                    <li><a href="Product.jsp">All Cakes</a></li>
                    <li><a href="About.jsp">About us</a></li>
                    <li><a href="Contact.jsp">Contact Us</a></li>
                </ul>
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
            <img src="images/1.jpg" width="960" height="240" />
            <img src="images/2.jpg" width="960" height="240" />
            <img src="images/3.jpg" width="960" height="240" />
            <img src="images/4.jpg" width="960" height="240" />
            <img src="images/5.jpg" width="960" height="240" />
            <img src="images/6.jpg" width="960" height="240" />
            <!--            <a href="Home.jsp"><img src="images/wedding-cupcakes-small.jpg" height="240" width="940" alt="Image"/></a>-->
        </div>

    </div>
</div>
