<%-- 
    Document   : Deatail
    Created on : Sep 19, 2015, 4:46:11 PM
    Author     : ChungPhung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Cake</title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />

    </head>
    <body>
        <sql:setDataSource var="conn" 
                           driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                           url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                           user="sa" 
                           password="123456"
                           scope="request"/>
        <sql:query dataSource="${conn}" var="pr">
            Select * from Product where itemcode ='${param.id}';
        </sql:query>

        <jsp:include page="include/menu.jsp" />
        <div id="content">
            <div class="home">
                <div class="imgpro" style="width: 450px; float: left;">
                    <img src="${pr.rows[0].img}" height="100%" width="100%" alt=""/>
                </div>
                <div class="detail">
                    <div>
                        <h2>${pr.rows[0].name}</h2>
                        <h3>Price: $ ${pr.rows[0].price}</h3>
                        <h3>Event: ${pr.rows[0]._event}</h3>
                        <p>Lorem ipsum dolor sit amet, consectetuer adispiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exercitation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</p>
                    </div>
                </div>


            </div>
        </div>
        <jsp:include page="include/newfooter.jsp" />    

    </body>
</html>
