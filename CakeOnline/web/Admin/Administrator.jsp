<%-- 
    Document   : Administrator
    Created on : Oct 7, 2015, 12:58:48 PM
    Author     : Pkung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>

<html lang="en-US">
    <head>

        <meta charset="utf-8">
        <title>Login</title>
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Varela+Round">
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <style>
            body {
                background: url('http://i.imgur.com/Eor57Ae.jpg') no-repeat fixed center center;
                background-size: cover;
                font-family: Montserrat;
            }

            .logo {
                width: 340px;
                height: 100px;
                background: url('../Client/images/logo1.gif') no-repeat;
                margin: 30px auto;
            }

            .login-block {
                width: 320px;
                padding: 20px;
                background: #fff;
                border-radius: 5px;
                border-top: 5px solid #ff656c;
                margin: 0 auto;
            }

            .login-block h1 {
                text-align: center;
                color: #000;
                font-size: 18px;
                text-transform: uppercase;
                margin-top: 0;
                margin-bottom: 20px;
            }

            .login-block input {
                width: 100%;
                height: 42px;
                box-sizing: border-box;
                border-radius: 5px;
                border: 1px solid #ccc;
                margin-bottom: 20px;
                font-size: 14px;
                font-family: Montserrat;
                padding: 0 20px 0 50px;
                outline: none;
            }

            .login-block input#username {
                background: #fff url('http://i.imgur.com/u0XmBmv.png') 20px top no-repeat;
                background-size: 16px 80px;
            }

            .login-block input#username:focus {
                background: #fff url('http://i.imgur.com/u0XmBmv.png') 20px bottom no-repeat;
                background-size: 16px 80px;
            }

            .login-block input#password {
                background: #fff url('http://i.imgur.com/Qf83FTt.png') 20px top no-repeat;
                background-size: 16px 80px;
            }

            .login-block input#password:focus {
                background: #fff url('http://i.imgur.com/Qf83FTt.png') 20px bottom no-repeat;
                background-size: 16px 80px;
            }

            .login-block input:active, .login-block input:focus {
                border: 1px solid #ff656c;
            }

            .login-block button {
                width: 100%;
                height: 40px;
                background: #ff656c;
                box-sizing: border-box;
                border-radius: 5px;
                border: 1px solid #e15960;
                color: #fff;
                font-weight: bold;
                text-transform: uppercase;
                font-size: 14px;
                font-family: Montserrat;
                outline: none;
                cursor: pointer;
            }

            .login-block button:hover {
                background: #ff7b81;
            }

        </style>
    </head>

    <body>
        <sql:setDataSource var="conn" 
                           driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                           url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                           user="sa" 
                           password="123456"
                           scope="session"/>
        <c:if test="${not empty param.username and not empty param.pass}">
            <sql:query dataSource="${conn}" var="admin">
                select *from administrator where username = '${param.username}' and pass='${param.pass}';
            </sql:query>
            <c:if test="${empty admin.rows}">
                <c:set var="login" value="failed" scope="session"/>
                <c:redirect url="Administrator.jsp">
                </c:redirect>
            </c:if>
            <c:set var="userAdmin" value="${admin}" scope="session"/>
            <c:redirect url="Home.jsp"/>s
        </c:if>
        <c:choose>
            <c:when test="${'failed' eq sessionScope.login}">
                <div class="logo"></div>
                <div class="login-block">
                    <h1>Login</h1> ${param.ac} ${param.username}
                    <form action="#" method="Post" onsubmit="validate()">
                        <input type="text" required value="" placeholder="Username" id="username" name="username" />
                        <input type="password" required value="" placeholder="Password" id="password" name="password"/>
                        <h4 id="checkf" style="color: #FF0000;margin:5px 5px 10px 5px;">UserName or Password incorrect</h4>
                        <button type="submit">Login</button>
                    </form>
                </div>
                <c:remove var="login"/>
            </c:when>
            <c:otherwise>
                <div class="logo"></div>
                <div class="login-block">
                    <h1>Login</h1>
                    <form action="#" method="Post">
                        <input type="text" value="" placeholder="Username" id="username" required name="username" />
                        <input type="password" value="" placeholder="Password" id="password" required name="pass"/>
                        <h4 id="check" style="color: #FF0000;margin:5px 5px 10px 5px;"></h4>
                        <button type="submit">Login</button>
                    </form>
                </div>
            </c:otherwise>
        </c:choose>
        <c:if test="${param.ac eq 'logout'}">
            <c:remove var="userAdmin"/>
            <c:redirect url="Administrator.jsp"/>
        </c:if>
    </body>	
</html>