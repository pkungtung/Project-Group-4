<%-- 
    Document   : Signup
    Created on : Sep 16, 2015, 10:50:08 PM
    Author     : Windows 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8" />
        <title>Sign Up </title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>

    <c:choose>
        <c:when test="${!empty param.dangky}">
            <c:set var="dangky" value="${param['dangky']}" />
            <c:if test="${dangky =='loi'}" >
                <script>
                    alert("Tài khoản tồn tại");
                            window.location.href = "${param.u}?${param.p}";</script>
                </c:if>
                <c:if test="${dangky =='thanhcong'}" >
                <script>
                            alert("Đăng ký thành công, mời bạn đăng nhập");
                            window.location.href = "Signin.jsp";</script>
                </c:if>
            </c:when>
            <c:otherwise>
            <script language="JavaScript">

                        function isValidUsername() {
                        txtusername = document.myform.username;
                                regexU = /^[a-z0-9 ]{4,20}$/;
                                ;
                                testUsername = regexU.test(txtusername.value);
                                if (!testUsername) {
                        document.getElementById("failUser").innerHTML = "Tên đăng nhập không hợp lệ";
                                return false;
                        } else {
                        document.getElementById("failUser").innerHTML = "";
                                return true;
                        }
                        }

                function isValidEmail() {
                email = document.myform.email;
                        reg1 = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                        testmail = reg1.test(email.value);
                        if (!testmail) {
                document.getElementById("failEmail").innerHTML = "Email không hợp lệ!";
                        return false;
                } else {
                document.getElementById("failEmail").innerHTML = "";
                        return true;
                }
                }


                function isValidPassword() {
                password = document.myform.password;
                        regexP = /^[A-Za-z0-9!@#$%...]{6,32}$/
                        testP = regexP.test(password.value);
                        if (!testP) {
                document.getElementById("password_error").innerHTML = "Password quá ngắn, từ 6 trở lên";
                        return false;
                } else {
                document.getElementById("password_error").innerHTML = "";
                        return true;
                }
                }


                function isValidPassword2() {
                password = document.myform.password;
                        password1 = document.myform.password1;
                        if (password1.value !== password.value) {
                document.getElementById("password1_error").innerHTML = "Mật khẩu xác nhận không khớp";
                        return false;
                } else {
                document.getElementById("password1_error").innerHTML = "";
                        return true;
                }
                }


                function checkUsername() {
                username_error = document.myform.username_error;
                        if (username_error.value !== null) {
                return false;
                } else {
                return true;
                }
                }
                function checkinput() {

                checkbox = document.myform.checkbox;
                        if (!isValidUsername()) {
                return false;
                }

                if (!checkUsername()) {
                return false;
                }


                if (!isValidEmail()) {
                return false;
                }

                if (!isValidPassword()) {
                return false;
                }
                if (!isValidPassword2()) {
                return false;
                }



                if (checkbox.checked == false) {
                alert("Ban chua chon dong y voi dieu khoan cua website");
                        return false;
                }
                return true;
                }
            </script>
            <body>
                <jsp:include page="include/menu.jsp" />
                <div id="content">
                    <div>
                        <div id="account">
                            <div>
                                <form action="Controlle?action=register" method="POST" name="myform">
                                    <span>SIGN-UP</span>
                                    <table>
                                        <tr>
                                            <td><label for="login">Login</label></td>
                                            <td>
                                                <input type="text" id="login" name="username" placeholder="Enter your name" onkeyup="isValidUsername()" />
                                                 <p id ="failUser" style="color: red"></p> 
                                            </td>
                                           

                                        </tr>
                                        <tr>
                                            <td><label for="email">E-mail</label></td>
                                            <td>
                                                <input type="text" id="email" name="email" id="fname" placeholder="Enter your email" onkeyup="isValidEmail()"/>
                                                 <p id ="failEmail" style="color: red"></span>
                                            </td>
                                           
                                        </tr>

                                        <tr>
                                            <td><label for="password">Password</label></td>
                                            <td>
                                                <input name="password" type="text" id="password" placeholder="Password" onkeyup="isValidPassword()"/> 
                                                <p id ="password_error" style="color: red"></span>
                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><label for="confirmpass">Confirm<br />Password</label></td>
                                            <td>
                                                <input type="text" id="confirmpass" name="password1" placeholder="Retype Password" onkeyup="isValidPassword2() "/>
                                                 <p id ="password1_error" style="color: red"></span>
                                            </td>
                                           
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td class="rememberme">
                                                <label for="rememberme">
                                                    <input type="checkbox" name="checkbox"  > Bạn đồng ý với <a href="about-common.html">điều khoản</a> và <a href="about-common.html">quy định của chúng tôi</a> 
                                                </label>
                                            </td>
                                        </tr>
                                    </table>
                                    <input type="submit" value="Sign-up" class="submitbtn" />
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