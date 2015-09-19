<%-- 
    Document   : Product
    Created on : Sep 16, 2015, 9:56:00 PM
    Author     : Windows 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8" />
        <title>The Pastry Shop</title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <jsp:include page="include/menu.jsp" />
        <div id="content">
            <div>
                <h1>The Pastry shop</h1>
                <ul>
                    <li>
                        <div>
                            <div>
                                <h2><a href="Home.jsp">Special Treats</a></h2>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>
                                <a href="Home.jsp" class="view">view all</a>
                            </div>
                            <a href="Home.jsp"><img src="images/special-treats.jpg" alt="Image" /></a>
                        </div>
                    </li>
                    <li>
                        <div>
                            <div>
                                <h2><a href="Home.jsp">Tarts</a></h2>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>
                                <a href="Home.jsp" class="view">view all</a>
                            </div>
                            <a href="Home.jsp"><img src="images/tarts.jpg" alt="Image" /></a>
                        </div>
                    </li>
                    <li>
                        <div>
                            <div>
                                <h2><a href="Home.jsp">Cakes</a></h2>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>
                                <a href="Home.jsp" class="view">view all</a>
                            </div>
                            <a href="Home.jsp"><img src="images/cakes.jpg" alt="Image" /></a>
                        </div>
                    </li>
                    <li>
                        <div>
                            <div>
                                <h2><a href="Home.jsp">Desserts</a></h2>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>
                                <a href="Home.jsp" class="view">view all</a>
                            </div>
                            <a href="Home.jsp"><img src="images/dessert.jpg" alt="Image" /></a>
                        </div>
                    </li>
                    <li>
                        <div>
                            <div>
                                <h2><a href="Home.jsp">Pastries</a></h2>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>
                                <a href="Home.jsp" class="view">view all</a>
                            </div>
                            <a href="Home.jsp"><img src="images/pastries.jpg" alt="Image" /></a>
                        </div>
                    </li>
                    <li>
                        <div>
                            <div>
                                <h2><a href="Home.jsp">Healthy Food</a></h2>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh</p>
                                <a href="Home.jsp" class="view">view all</a>
                            </div>
                            <a href="Home.jsp"><img src="images/healthy-food.jpg" alt="Image" /></a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <jsp:include page="include/newfooter.jsp" />
    </body>
</html>