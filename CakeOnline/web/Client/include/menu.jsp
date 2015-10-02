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

<c:set var="urlPage" value="${pageContext.request.getRequestURL()}" />
<jsp:useBean id="mrBean" class="model.DataProcess" />
<script type="text/javascript">
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

    $(document).ready(function () {
        $("input#autosearch").autocomplete(
                {
                    source: getListSearch(),
                    minLength: 1,
                    delay: 100,
                    autoFocus: false,
                    open: function () {
                        $('.ui-autocomplete').width('250px');
                        $('.ui-widget-content').css('background', '#fff');
                        $('.ui-menu-item a').removeClass('ui-corner-all');
                    },
                    select: function (event, ui) {
                        window.location.href = ui.item.url;
                    }
                }
        );
    });
    //signin
    function signin() {
        $('#fomSignin').submit();
    }
    $(function () {
//        $('#singinBtn').click(function () {
//        });

    });
    function resetField() {
        document.getElementById('usernamelb').innerHTML = "UserName";
        document.getElementById('usernamelb').style.color = "#000";
        document.getElementById('passlb').innerHTML = "Password";
        document.getElementById('passlb').style.color = "#000";
        document.getElementById("username").value = "";
        document.getElementById("pass").value = "";
    }
    function validateSignIn() {
        var userName = document.getElementById('username').value;
        var pass = document.getElementById('pass').value;
        var f = false;
        var f2 = false;
        if (userName === null || userName === "") {
            document.getElementById('usernamelb').innerHTML = "UserName not Blank";
            document.getElementById('usernamelb').style.color = "#cc0000";
            f = false;
        } else {
            document.getElementById('usernamelb').innerHTML = "UserName";
            document.getElementById('usernamelb').style.color = "#000";
            f = true;
        }
        if (pass === null || pass === "") {
            document.getElementById('passlb').innerHTML = "Password not Blank";
            document.getElementById('passlb').style.color = "#cc0000";
            f2 = false;
        } else {
            document.getElementById('passlb').innerHTML = "Password";
            document.getElementById('passlb').style.color = "#000";
            f2 = true;
        }
        if (f && f2) {
//            var login = value: ${mrBean.checkLogin(userName, pass)};
            return true;
        } else {
            return false;
        }
    }
</script>

</script>
<style>
    .ui-autocomplete {
        max-height: 300px;
        overflow-y: auto;
        /* prevent horizontal scrollbar */
        overflow-x: hidden;
    }
    /* IE 6 doesn't support max-height
     * we use height instead, but this forces the menu to always be this tall
     */
    * html .ui-autocomplete {
        height: 100px;
    }
</style>
<div onchange="onchangeFunction()" class="modal fade in" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display: none;background: #9C9C9C;background-color:rgba(0, 0, 0, 0.6);">
    <div class="modal-dialog" >
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">Signin to Site</h4>
            </div>
            <div class="modal-body">
                <form name="phom" action="#?ac=signin" method="Post" id="fomSignin" onsubmit="return  validateSignIn()">
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
                        <button type="button" class="btn btn-default" onclick="resetField()" data-dismiss="modal">Close</button>
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
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">Signup to Site</h4>
            </div>
            <div class="modal-body">
                <form action="../Controller?ac=signup" method="Post">
                    <div class="form-group has-success">
                        <label for="userName">UserName</label>
                        <input type="text" class="form-control" id="userName" placeholder="UserName">
                    </div>
                    <div class="form-group has-warning">
                        <label for="pass">Password</label>
                        <input type="password" class="form-control" id="pass" placeholder="Password">
                    </div>
                    <div class="modal-footer">
                        <button type="reset" class="btn btn-primary"><i class="fa fa-refresh"></i>  Reset</button>
                        <button type="submit" class="btn btn-primary">Sign up</button>                        
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
                    <a href="#" data-toggle="modal" data-target="#signUpModal" >Sign up</a>
                    <a href="index.html">Help</a>
                    <a href="#" data-toggle="modal" data-target="#myModal" class="last">Sign in</a>
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
            </c:when>          
            <c:when test="${path == '/Client/Service.jsp'}">
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

        <div id="slidee" style="height: 260px; z-index: 1; width: 960px;">
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
<sql:setDataSource var="conn" 
                   driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                   url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                   user="sa" 
                   password="123456"
                   scope="session"/>

