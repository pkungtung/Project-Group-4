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
<script type = "text/javascript" >
//    $(function () {
//        $('.slide img:gt(0)').hide();
//        setInterval(function () {
//            $('.slide :first-child').fadeOut()
//                    .next('img').fadeIn()
//                    .end().appendTo('.slide');
//        },
//                1500);
//    })
    //slide
    var progress = $('#progress'),
            slideshow = $('.cycle-slideshow');

    slideshow.on('cycle-initialized cycle-before', function (e, opts) {
        progress.stop(true).css('width', 0);
    });

    slideshow.on('cycle-initialized cycle-after', function (e, opts) {
        if (!slideshow.is('.cycle-paused'))
            progress.animate({width: '100%'}, opts.timeout, 'linear');
    });

    slideshow.on('cycle-paused', function (e, opts) {
        progress.stop();
    });

    slideshow.on('cycle-resumed', function (e, opts, timeoutRemaining) {
        progress.animate({width: '100%'}, timeoutRemaining, 'linear');
    });
</script>
<style type="text/css">
    #progress { position: absolute; bottom: 0; height: 6px; width: 0px; background: #c00; z-index: 500; }

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
            <div class="cycle-slideshow"  style="height: 240px;"
                 data-cycle-pause-on-hover="true"
                 data-cycle-fx="scrollHorz"
                 data-cycle-speed="600"    
                 data-cycle-timeout="1200"
                 >
                <div class="cycle-prev"></div>
                <div class="cycle-next"></div>
                <a href="Home.jsp"><img src="images/wedding-cupcakes-small.jpg" height="240" width="940" alt="Image"/></a>
                <img src="images/healthy.jpg" width="960" height="240" />
                <img src="images/cakes1.jpg" width="960" height="240" />
                <img src="images/dog.jpg" width="960" height="240" />
                <img src="images/Star.jpg" width="960" height="240" />
                <img src="images/valentine-day-cake.jpg" width="960" height="240" />
                

            </div>
            <div id="progress"></div>

        </div>
    </div>
</div>
