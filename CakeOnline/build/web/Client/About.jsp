<%-- 
    Document   : Blog
    Created on : Sep 16, 2015, 10:47:02 PM
    Author     : Windows 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8" />
        <title>About</title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <jsp:include page="include/menu.jsp" />
        <div id="content">
            <div id="about">
                <div class="aside">
                    <h1>About The Cake</h1>
                    <span></span>
                    <p>
                        The Cake is the name given to various kinds of baked goods made from ingredients such as flour, butter, shortening, baking powder or eggs. Small cakes, tarts and other sweet baked goods are called "pastries".
                        The Cake may also refer to the dough from which such baked goods are made. Pastry dough is rolled out thinly and used as a base for baked goods. Common pastry dishes include pies, tarts and quiches.
                        The Cake is distinguished from bread by having a higher fat content, which contributes to a flaky or crumbly texture. A good pastry is light and airy and fatty, but firm enough to support the weight of the filling. When making a shortcrust pastry, care must be taken to blend the fat and flour thoroughly before adding. 
                    </p>
                </div>
                <div class="section">
                    <div id="visitshop">
                        <div>
                            <p><span>Sweets from the heart</span> Treat your loveones</p>
                            <a href="Product.jsp" class="visit">visit the shop</a>
                        </div>
                    </div>
                    <div>
                    </div>
                    <div>
                        <h3>Address</h3>
                        <p>8 Ton That Thuyet<br/>
                            Cau Giay district<br/>
                            Ha Noi, Vietnam <br /> 
                        </p>
                    </div>
                    <div>
                        <a class="callus">CALL US <span>043 456 789</span></a>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="include/newfooter.jsp" />
        <script src="js/chat.js" type="text/javascript"></script>
    </body>
</html>
