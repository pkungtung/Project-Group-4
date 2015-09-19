<%-- 
    Document   : Signin
    Created on : Sep 16, 2015, 10:49:12 PM
    Author     : Windows 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8" />
        <title>Sign In </title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <c:set var="urlPage" value="${pageContext.request.getRequestURL()}" />
    <c:set var="paramPage" value="${pageContext.request.getQueryString()}" />

    <c:choose>
        <c:when test="${!empty param.dangnhap}">
            <c:set var="dangnhap" value="${param['dangnhap']}" />
            <c:if test="${dangnhap =='loi'}" >
                <script>
                    alert("Dang nhap khong thanh cong");
                    window.location.href = "${param.u}?${param.p}";
                </script>
            </c:if>
        </c:when>
        <c:otherwise>
            <body>
                <jsp:include page="include/menu.jsp" />
                <div id="content">
                    <div>
                        <div id="account">
                            <div>
                                <form action="Controlle?action=Login" method="POST">
                                    <span>SIGN-IN</span>
                                    <table>
                                        <tr>
                                            <td><label for="name">Name</label></td>
                                            <td><input type="text" id="name" name="txtUsername" placeholder="Enter Name" /></td>
                                        </tr>
                                        <tr>
                                            <td><label for="password">Password</label></td>
                                            <td><input type="password" id="password"  name="txtPassword" placeholder="Password" value="${paramPage}"/></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td class="rememberme">
                                                <label for="rememberme">
                                                    <input type="checkbox" <c:if test="${cookie['cb'].value == 'ok'}">checked</c:if> name="cbRemember"> Remember me on this computer
                                                </label>
                                            </td>
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
        </c:otherwise>
    </c:choose>
</html>