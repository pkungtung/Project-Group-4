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
<!--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>-->
<!--<script src="http://malsup.github.io/jquery.cycle2.js"></script>-->
<script src="../jQuery/jquery 1.11.1 for cycle2.js" type="text/javascript"></script>
<script src="../jQuery/jquery.cycle2.js" type="text/javascript"></script>
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
<div id="header" style="background: #f5f5f5 url(images/bg-body.gif) repeat-x center top;">    
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
                <form action="Product.jsp?">
                    <input type="text" id="search" name="search" maxlength="30" />
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
                                    <li><a href="Product.jsp?event=Engage">Engage</a></li>
                                    <li><a href="Product.jsp?event=Marriage">Marriage</a></li>
                                </ul>
                            </li>
                            <li><a href="About.jsp">About Us</a></li>
                            <li class="current"><a href="Contact.jsp">contact us</a></li>
                            <li><a href="Service.jsp">Service</a></li>
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
                                    <li><a href="Product.jsp?event=Engage">Engage</a></li>
                                    <li><a href="Product.jsp?event=Marriage">Marriage</a></li>
                                </ul>
                            </li>
                            <li class="current"><a href="About.jsp">About Us</a></li>
                            <li><a href="Contact.jsp">contact us</a></li>
                            <li><a href="Service.jsp">Service</a></li>
                            <li><a href="Blog.jsp">Blog</a></li>
                        </ul>
                    </nav>
                </div>
            </c:when>           <c:when test="${path == '/Client/Service.jsp'}">
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
                            <li class="current"><a href="Service.jsp">Service</a></li>
                            <li><a href="Blog.jsp">Blog</a></li>
                        </ul>
                    </nav>
                </div>
            </c:when>           <c:when test="${path == '/Client/Blog.jsp'}">
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

        <div id="slide" style="height: 240px; z-index: 1; width: 940px;">
            <div class="cycle-slideshow"  style="height: 240px;z-index: 2; width: 940px;"
                 data-cycle-pause-on-hover="true"
                 data-cycle-fx="scrollHorz"
                 data-cycle-speed="600"    
                 data-cycle-timeout="1200"
                 data-cycle-slides="> a"
                 >
                <a href="Home.jsp"><img src="images/wedding-cupcakes-small.jpg" height="240" width="940" alt="Image"/></a>
                <a href="#"><img src="images/healthy.jpg" width="940" height="240" /></a>
                <a href="#"><img src="images/cakes1.jpg" width="940" height="240" /></a>
                <a href="#"><img src="images/dog.jpg" width="940" height="240" /></a>
                <a href="#"><img src="images/Star.jpg" width="940" height="240" /></a>
                <a href="#"><img src="images/valentine-day-cake.jpg" width="940" height="240" /></a>
            </div>
        </div>
    </div>
</div>

