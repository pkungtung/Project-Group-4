
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8" />
        <title>Cake </title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>

        <jsp:include page="include/menu.jsp" />

        <div id="content">
            <div class="home">
                <div class="aside">
                    <h1>Welcome to our site</h1>
                    <p>Pastry is the name given to various kinds of baked goods made from ingredients such as flour, butter, shortening, baking powder or eggs. Small cakes, tarts and other sweet baked goods are called &#34;pastries&#34;.</p> 
                    <p>Pastry may also refer to the dough from which such baked goods are made. Pastry dough is rolled out thinly and used as a base for baked goods. Common pastry dishes include pies, tarts and quiches. 
                    <p>Pastry is distinguished from bread by having a higher fat content, which contributes to a flaky or crumbly texture. A good pastry is light and airy and fatty, but firm enough to support the weight of the filling. When making a shortcrust pastry, care must be taken to blend the fat and flour thoroughly before adding. <a href="index.html" class="readmore">read more</a></p>
                </div>
                <div class="section">
                    <div>
                        <h2>The food story</h2>
                        <p>Lorem ipsum dolor sit amet, consectetuer adispiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exercitation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</p>
                    </div>
                    <ul>
                        <li class="first">
                            <a href="Home.jsp"><img src="images/cake.jpg" alt="Image" /></a>
                        </li>
                        <li>
                            <a href="Home.jsp"><img src="images/burgercake.jpg" alt="Image" /></a>
                        </li>
                        <li>
                            <a href="Home.jsp"><img src="images/cupcake.jpg" alt="Image" /></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <jsp:include page="include/footer.jsp" />
    </body>
</html>