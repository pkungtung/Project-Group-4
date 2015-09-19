<%-- 
    Document   : Signin
    Created on : Sep 16, 2015, 10:49:12 PM
    Author     : Windows 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Sign In - Cake Delights Web Template</title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <jsp:include page="include/menu.jsp" />
        <div id="content">
            <div>
                <div id="account">
                    <div>
                        <form action="#">
                            <span>SIGN-IN</span>
                            <table>
                                <tr>
                                    <td><label for="name">Name</label></td>
                                    <td><input type="text" id="name" /></td>
                                </tr>
                                <tr>
                                    <td><label for="password">Password</label></td>
                                    <td><input type="text" id="password" /></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td class="rememberme"><label for="rememberme"><input type="checkbox" id="rememberme" /> Remember me on this computer</label></td>
                                </tr>
                            </table>
                            <input type="submit" value="Sign-In" class="submitbtn" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="include/newfooter.jsp" />
    </body>
</html>