<%-- 
    Document   : MyCart
    Created on : Oct 6, 2015, 2:56:57 PM
    Author     : Pkung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
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
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Cake Name</th>
                            <th>Cake Price</th>
                            <th>Quantity</th>
                            <th>Amount</th>  
                            <th>Remove</th>

                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="ct" items="${cart.content}">
                            <sql:query dataSource="${conn}" var="result">
                                select * from Product where itemcode= '${ct.key}';
                            </sql:query>
                            <c:forEach var="p" items="${result.rows}">
                                <tr>
                                    <td>${p.itemcode}<input type="hidden" value="${p.itemcode}" name="id"/></td>
                                    <td>${p.name}</td>          
                                    <td>$ ${p.price}</td>
                                    <td><input type="number" value="${ct.value}" name="quantity"/></td>
                                    <td>$ ${p.price * ct.value}</td>
                                    <td>
                                        <a href="/ProductAssignment/Controller?ac=del&id=${p.itemcode}" class="btn btn-default">Remove</a>
                                    </td>
                                </tr>
                            <input type="hidden" value="${total = total + p.price * ct.value}"/>
                        </c:forEach>
                    </c:forEach>
                    <tr>
                        <td  colspan="3" >Total</td>
                        <td><button class="btn btn-default">Update Quantity</button></td>
                        <td>$ ${total}</td>
                        <td></td>
                    </tr>
                    <tr height="20">

                    </tr>

                    </tbody>
                </table> 
                <div style="float: right;">
                    <a href="#" class="btn btn-success" style="width: 200px;">Check Out</a>
                    <a href="#" class="btn btn-primary" >Remove All</a>
                    <a href="Product.jsp" class="btn btn-primary" >Continus Shopping</a>

                </div>
            </div>
        </div>
        <jsp:include page="include/footer.jsp" />
    </body>
</html>