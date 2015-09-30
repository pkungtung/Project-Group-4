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
<!--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>-->
<!--<script src="http://malsup.github.io/jquery.cycle2.js"></script>-->
<script src="../jQuery/jquery 1.11.1 for cycle2.js" type="text/javascript"></script>
<script src="../jQuery/jquery.cycle2.js" type="text/javascript"></script>

<link rel="stylesheet" href="css/login/style.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js?ver=1.4.2"></script>
<script src="js/login.js"></script>
        <c:set var="urlPage" value="${pageContext.request.getRequestURL()}" />
        <c:set var="paramPage" value="${pageContext.request.getQueryString()}" />
        <c:choose>
        <c:when test="${!empty param.dangnhap}">
                <c:set var="dangnhap" value="${param['dangnhap']}" />
                <c:if test="${dangnhap =='loi'}" >
                    <script>
                        alert("Signin Failed");
                        window.location.href = "Signin.jsp";
                    </script>
                </c:if>
                <c:if test="${dangnhap =='thanhcong'}" >
                    <script>
                        alert("Dang nhap thanh cong");
                        window.location.href = "Home.jsp";
                    </script>
                </c:if>
            </c:when>
        </c:choose>
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
<div id="link">
<div id="loginContainer" style="margin: 20px 190px -20px 0;">
    <a href="#" id="loginButton"><span>Login</span><em></em></a>
    <div style="clear:both"></div>
    <div id="loginBox">                
        <form id="loginForm" method="post" action="../Controlle?action=login">
                        <div hidden="visibility">
                            <input type="text" class="form-control" name="urlPage" value="${urlPage}"/>
                            <input type="text" class="form-control" name="paramPage" value="${paramPage}"/>
                        </div>
            <fieldset id="body">
                <fieldset>
                    <label for="InputUserName">Email Address</label>
                    <input type="text"  name="txtusername" id="email" />
                </fieldset>
                <fieldset>
                    <label for="InputPassword">Password</label>
                    <input type="password" name="password" id="password" />
                </fieldset>
                 <label for="checkbox"><input type="checkbox" id="checkbox"/>Remember me</label>
                <input type="submit" id="login" value="Sign in" />
                <label id="checkbox">or</label>
                <input  type="button" value="Sign In with Google" id="login">
		<input  type="button" id="login" value="facebook">
            </fieldset>
            <span><a href="#">Forgot your password?</a></span>
        </form>
    </div>    
</div>
<div id="loginContainer" style="margin: 20px 0 -20px 0;">
    <a href="Signup.jsp" id="loginButton"><span>Sign up</span><em></em></a>
    <div style="clear:both"></div>
</div> 
</div>

<div id="header" style="background: #f5f5f5 url(images/bg-body.gif) repeat-x center top;">    
    <div>           
        <div id="top">
            <div id="logo">
                <a href="Home.jsp"><img src="images/logo1.gif" alt="Logo"/></a>
            </div>

            <div id="tright">


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
                                    <li><a href="Product.jsp?event=Engagement">Engagement</a></li>
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
                                    <li><a href="Product.jsp?event=Engagement">Engagement</a></li>
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
                                    <li><a href="Product.jsp?event=Engagement">Engagement</a></li>
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
                                    <li><a href="Product.jsp?event=Engagement">Engagement</a></li>
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
                                    <li><a href="Product.jsp?event=Engagement">Engagement</a></li>
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
                                    <li><a href="Product.jsp?event=Engagement">Engagement</a></li>
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

