<%-- 
    Document   : menu
    Created on : Sep 16, 2015, 10:21:12 PM
    Author     : Windows 10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:set var="path" value="${pageContext.request.servletPath}" />

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        <script type="text/javascript" src="css/coin-slider.js"></script>

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
            <c:when test="${path == '/Home.jsp'}">
                <ul>
                    <li class="current"><a href="Home.jsp">Home</a></li>
                    <li><a href="Product.jsp">All Cakes</a></li>
                    <li><a href="About.jsp">About us</a></li>
                    <li><a href="Contact.jsp">Contact Us</a></li>
                </ul>
            </c:when>
            <c:when test="${path == '/Product.jsp'}">
                <ul>
                    <li><a href="Home.jsp">Home</a></li>
                    <li class="current"><a href="Product.jsp">All Cakes</a></li>
                    <li><a href="About.jsp">About us</a></li>
                    <li><a href="Contact.jsp">Contact Us</a></li>
                </ul>
            </c:when>
            <c:when test="${path == '/Contact.jsp'}">
                <ul>
                    <li><a href="Home.jsp">Home</a></li>
                    <li><a href="Product.jsp">All Cakes</a></li>
                    <li><a href="About.jsp">About us</a></li>
                    <li class="current"><a href="Contact.jsp">Contact Us</a></li>
                </ul>
            </c:when>
            <c:when test="${path == '/About.jsp'}">
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


        <c:choose>
            <c:when test="${path == '/Home.jsp'}">
                <div id="section">
                    <ul>
                        <li><a href="Home.jsp">Birthday Cake</a></li>
                        <li><a href="Home.jsp">Anniversary</a></li>
                        <li><a href="Home.jsp">Engagement</a></li>
                        <li class="selected"><a href="Home.jsp">Marriage</a></li>
                    </ul>
                   <a href="Home.jsp"><img src="images/wedding-cupcakes-large.jpg" alt="Image"/></a>
                   
<!--             <div id="games">

            <a href="http://www.minininjas.com/" target="_blank">
                <img src="images/Bakarta.jpg" alt="Image"/>
                <span>
                    <b>Mini Ninjas</b><br />
                    Your quest to defeat the Evil Samurai Warlord has begun. Control the powers of nature, possess creatures, use your
                    furious Ninja skills to free your Ninja friends.
                </span>
            </a>

            <a href="http://www.princeofpersiagame.com/" target="_blank">
               <img src="images/banh.jpg" alt="Image"/>
            </a>

            <a href="http://spidermandimensions.marvel.com/" target="_blank">
               <img src="images/wedding-cupcakes-large.jpg" alt="Image"/>
            </a>

            <a href="http://brinkthegame.com/" target="_blank">
                <img src="images/wedding-cupcakes-large.jpg" alt="Image"/>
            </a>

            <a href="http://www.godofwar.com/" target="_blank" >
                <img src="images/wedding-cupcakes-large.jpg" alt="Image"/>
            </a>

            <a href="http://www.borderlandsthegame.com/" target="_blank">
               <img src="images/wedding-cupcakes-large.jpg" alt="Image"/>
                <span>
                    <b>Borderlands</b><br />
                    Fun combat and a steady flow of rewards make this journey a massively enjoyable one, especially with some fellow mercenaries along for the ride.
                </span>
            </a>

            <a href="http://www.swtor.com/" target="_blank">
                <img src="images/wedding-cupcakes-large.jpg" alt="Image"/>
            </a>

            <a href="http://www.batmanarkhamasylum.com/" target="_blank">
               <img src="images/wedding-cupcakes-large.jpg" alt="Image"/>
            </a>

        </div>
       
        <script>
            $('#games').coinslider();
        </script>-->

                </div>
            </c:when>
            <c:otherwise>
                <div class="section">
                    <a href="Home.jsp"><img src="images/wedding-cupcakes-small.jpg" alt="Image"/></a>
                </div>
            </c:otherwise>
        </c:choose>

    </div>
</div>
