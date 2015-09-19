<%-- 
    Document   : Contact
    Created on : Sep 16, 2015, 10:46:11 PM
    Author     : Windows 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8" />
        <title>Contact Us </title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <jsp:include page="include/menu.jsp" />
        <div id="content">
            <div>
                <h1>Contact us</h1>
                <div id="visitshop">
                    <div>
                        <p><span>Sweets from the heart</span> Treat your loveones</p>
                        <a href="" class="visit">visit the shop</a>
                    </div>
                </div>
                <form action="#">
                    <p>If you need assistance feel free to e-mail us. <span>Mauris dictum congque porta. Duis dapibus tellus id dolor fringilla et viverra nibh semper. Praesent sit amet lacus tortor.</span></p>
                    <input type="text" maxlength="30" value="Name" class="textcontact" />
                    <input type="text" maxlength="30" value="E-mail Address" class="textcontact" />
                    <input type="text" maxlength="30" value="Subject" class="textcontact" />
                    <textarea name="message" id="message" cols="30" rows="10"></textarea>
                    <input type="submit" value="" class="submit" />
                </form>
            </div>
        </div>
        <jsp:include page="include/newfooter.jsp" />
    </body>
</html>