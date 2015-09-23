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
        <link href="css/bootstrap.css" rel="stylesheet">
    </head>
    
        <c:set var="urlPage" value="${pageContext.request.getRequestURL()}" />
        <c:set var="paramPage" value="${pageContext.request.getQueryString()}" />
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
            <c:otherwise>
  <body>
                <jsp:include page="include/menu.jsp" />
                <div id="content">
                    <div>
                        <div class="modal-dialog">
                            <form method="post" action="../Controlle?action=login" >
                                <div hidden="visibility">
                                    <input type="text" class="form-control" name="urlPage" value="${urlPage}"/>
                                    <input type="text" class="form-control" name="paramPage" value="${paramPage}"/>
                                </div>
                                <div class="modal-content">
                                    <div class="modal-header">

                                        <h4 class="modal-title">Signin</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label for="InputUserName">User Name</label>
                                            <input type="text" class="form-control" name="txtUsername" id="InputUserName" placeholder="Enter email">
                                        </div>
                                        <div class="form-group">
                                            <label for="InputPassword">Password</label>
                                            <input type="password" class="form-control" name="txtPassword" id="InputPassword" placeholder="Password">
                                        </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" <c:if test="${cookie['cb'].value == 'ok'}">checked</c:if> name="cbRemember">  Ghi nhớ đăng nhập
                                                </label>
                                            </div>                                
                                        </div>
                                        <div class="modal-footer">
                                            <input type="submit" value="Sign-In" name="submit"  class="btn btn-warning" />
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                <jsp:include page="include/newfooter.jsp" />
            </c:otherwise>
        </c:choose>
    </body>
</html>