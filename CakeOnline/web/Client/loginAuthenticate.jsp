<%-- 
    Document   : loginAuthenticate
    Created on : May 19, 2015, 4:01:40 AM
    Author     : Pkung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Abc Page</title>
    </head>
    <body>
        <h1>Wrong</h1>
        <sql:setDataSource var="conn" 
                           driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                           url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                           user="sa" 
                           password="123456"
                           scope="session"/>
        <c:if test="${param.ac eq 'changePass'}">
            <c:if test="${sessionScope.loginUser.rows[0].pass != param.oldpass}">
                <c:set var="alert" value="Invaild oldpassword" scope="session"/>
                <c:redirect url="ChangePass.jsp"/>
            </c:if>
            <c:if test="${param.newpass != param.confirmpass}">
                <c:set var="alert" value="Confirm new password not macth!" scope="session"/>
                <c:redirect url="ChangePass.jsp"/>
            </c:if>
            <sql:update dataSource="${conn}">
                update Customer set pass = '${param.newpass}' where CusId=${sessionScope.loginUser.rows[0].CusId};
            </sql:update>
            <c:set var="alert" value="" scope="session"/>
            <c:redirect url="ChangePass.jsp"/>
        </c:if>
        <c:if test="${param.ac eq 'toPre'}">
            <sql:update dataSource="${sessionScope.conn}" var="pre">
                update Customer set member = 'Pre' where CusId =${sessionScope.loginUser.rows[0].CusId};
            </sql:update>
            <c:redirect url="https://www.sandbox.paypal.com/cgi-bin/webscr" >
                <c:param name="cmd" value="_xclick"/>
                <c:param name="business" value="phungtung1993@gmail.com"/>
                <c:param name="item_name" value="Upgrade to Premium"/>
                <c:param name="return" value="http://localhost:8080/CakeOnline/Client/Payment.jsp"/>
                <c:param name="amount" value="9.00"/>
                <c:param name="currency_code" value="USD"/>
            </c:redirect> 
        </c:if> 
        <c:if test="${param.ac eq 'toPro'}">
            <sql:update dataSource="${sessionScope.conn}" var="pre">
                update Customer set member = 'Pro' where CusId =${sessionScope.loginUser.rows[0].CusId};
            </sql:update>
            <c:redirect url="https://www.sandbox.paypal.com/cgi-bin/webscr" >
                <c:param name="cmd" value="_xclick"/>
                <c:param name="business" value="phungtung1993@gmail.com"/>
                <c:param name="item_name" value="Upgrade to Professional"/>
                <c:param name="return" value="http://localhost:8080/CakeOnline/Client/Payment.jsp"/>
                <c:param name="amount" value="9.00"/>
                <c:param name="currency_code" value="USD"/>
            </c:redirect> 
        </c:if>
        <c:if test="${param.ac eq 'order'}">
            <c:if test="${empty sessionScope.loginUser}">
                <sql:update dataSource="${conn}" var="insertCus">
                    insert into Customer(name,email,addr,number) values(?,?,?,?);
                    <sql:param value="${param.name}"/>
                    <sql:param value="${param.email}"/>
                    <sql:param value="${param.address}"/>
                    <sql:param value="${param.number}"/>
                </sql:update>
                <sql:query dataSource="${conn}" var="cuslast">
                    select top 1 CusId from Customer order by CusId desc;
                </sql:query>
                <sql:update dataSource="${conn}" var="ad">
                    insert into OrderList values(?,?,?,?,?);
                    <sql:param value="${cuslast.rows[0].CusId}"/>
                    <sql:param value="${sessionScope.total}"/>
                    <sql:param value="${param.deAddress}"/>
                    <sql:param value="${param.deDate}"/>
                    <sql:param value="done"/>
                </sql:update>
                <sql:query dataSource="${conn}" var="orderlast">
                    select top 1 oid from OrderList order by oid desc;
                </sql:query>
                <c:forEach var="ca" items="${sessionScope.cart.content}">
                    <sql:update dataSource="${conn}" var="odde">
                        insert into OrderDetail values(?,?,?,default);
                        <sql:param value="${orderlast.rows[0].oid}"/>
                        <sql:param value="${ca.key}"/>
                        <sql:param value="${ca.value}"/>
                    </sql:update>
                </c:forEach>
                <c:set var="carttopay" value="${sessionScope.cart}" scope="session"/>
                <c:remove var="cart"/>
                <c:redirect url="https://www.sandbox.paypal.com/cgi-bin/webscr" >
                    <c:param name="upload" value="1" />
                    <c:param name="return" value="http://localhost:8080/CakeOnline/Client/Product.jsp" />
                    <c:param name="cmd" value="_cart" />
                    <c:param name="business" value="phungtung1993@gmail.com" />
                    <c:set var="num" value="1"/>
                    <c:forEach var="ct" items="${carttopay.content}">
                        <sql:query dataSource="${conn}" var="p">
                            select * from Product where itemcode= '${ct.key}';
                        </sql:query>
                        <c:param name="item_name_${num}" value="${p.rows[0].name}" />
                        <c:param name="item_number_${num}" value="${ct.key}" />
                        <c:param name="amount_${num}" value="${p.rows[0].price * ct.value}" />
                        <c:param name="quantity_${num}" value="${ct.value}" />
                        <c:set var="num" value="${num + 1}"/>
                    </c:forEach>
                </c:redirect> 
            </c:if>
            <sql:update dataSource="${conn}" var="ad">
                insert into OrderList values(?,?,?,?,?);
                <sql:param value="${sessionScope.loginUser.rows[0].CusId}"/>
                <sql:param value="${sessionScope.total}"/>
                <sql:param value="${param.deAddress}"/>
                <sql:param value="${param.deDate}"/>
                <sql:param value="done"/>
            </sql:update>
            <sql:query dataSource="${conn}" var="orderlast">
                select top 1 oid from OrderList order by oid desc;
            </sql:query>
            <c:forEach var="cab" items="${sessionScope.cart.content}">
                <sql:update dataSource="${conn}" var="odde">
                    insert into OrderDetail values(?,?,?,default);
                    <sql:param value="${orderlast.rows[0].oid}"/>
                    <sql:param value="${cab.key}"/>
                    <sql:param value="${cab.value}"/>
                </sql:update>
            </c:forEach>
            <c:set var="carttopay" value="${sessionScope.cart}" scope="session"/>
            <c:remove var="cart"/>
            <c:redirect url="https://www.sandbox.paypal.com/cgi-bin/webscr" >
                <c:param name="upload" value="1" />
                <c:param name="return" value="http://localhost:8080/CakeOnline/Client/Product.jsp" />
                <c:param name="cmd" value="_cart" />
                <c:param name="business" value="phungtung1993@gmail.com" />
                <c:set var="num" value="1"/>
                <c:forEach var="ct" items="${carttopay.content}">
                    <sql:query dataSource="${conn}" var="p">
                        select * from Product where itemcode= '${ct.key}';
                    </sql:query>
                    <c:param name="item_name_${num}" value="${p.rows[0].name}" />
                    <c:param name="item_number_${num}" value="${ct.key}" />
                    <c:param name="amount_${num}" value="${p.rows[0].price * ct.value}" />
                    <c:param name="quantity_${num}" value="${ct.value}" />
                    <c:set var="num" value="${num + 1}"/>
                </c:forEach>
            </c:redirect>  
        </c:if>
        <c:if test="${param.ac eq 'showModal'}">
            <c:set var="code" scope="session" value="${param.id}"/>
            <c:redirect url="${urlPage}"/>
        </c:if>
        <c:if test="${param.ac eq 'signup'}">
            <sql:query dataSource="${conn}" var="user" scope="request">
                select username from Customer;
            </sql:query>
            <c:forEach var="cus" items="${user.rows}">
                <c:if test="${param.userName eq cus.username}">
                    <c:set var="flag" scope="session" value="signupExist"/>
                    <c:redirect url="${sessionScope.urlPage}">
                        <c:if test="${!empty sessionScope.tic}">
                            <c:param name="id" value="${sessionScope.tic}"/>
                        </c:if>
                    </c:redirect>        
                </c:if>
                <sql:update dataSource="${conn}" var="insert">
                    insert into Customer values('${param.userName}','${param.pass}','${param.name}','${param.email}','${param.address}','${param.number}','no','../imgProduct/user-default.jpg');
                </sql:update>
                <c:set var="flag" scope="session" value="signupOK"/>
                <c:redirect url="${sessionScope.urlPage}">
                    <c:if test="${!empty sessionScope.tic}">
                        <c:param name="id" value="${sessionScope.tic}"/>
                    </c:if>
                </c:redirect>
            </c:forEach>


        </c:if>
        <c:if test="${param.ac eq 'signin'}">
            <sql:query dataSource="${conn}" var="sql" scope="request">
                select * from Customer where username='${param.username}' and pass='${param.pass}'
            </sql:query>
            <c:choose>
                <c:when test="${empty sql.rows}">
                    <c:set var="flag" scope="session" value="signinFailed"/>
                    <c:redirect url="${sessionScope.urlPage}">
                        <c:if test="${!empty sessionScope.tic}">
                            <c:param name="id" value="${sessionScope.tic}"/>
                        </c:if>
                    </c:redirect>  
                </c:when>
                <c:otherwise>
                    <c:set scope="session" var="loginUser" value="${sql}"/>
                    <c:redirect url="${sessionScope.urlPage}">
                        <c:if test="${!empty sessionScope.tic}">
                            <c:param name="id" value="${sessionScope.tic}"/>
                        </c:if>
                    </c:redirect>
                </c:otherwise>
            </c:choose> 
        </c:if>
        <c:if test="${param.ac eq 'signout'}">
            <c:remove var="loginUser"/>
            <c:redirect url="${sessionScope.urlPage}">
                <c:if test="${!empty sessionScope.tic}">
                    <c:param name="id" value="${sessionScope.tic}"/>
                </c:if>
            </c:redirect>
        </c:if>
    </body>
</html>
