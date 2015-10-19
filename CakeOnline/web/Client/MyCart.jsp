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
        <script>
            function submitForm() {
                document.getElementById('cartForm').submit();
            }
        </script>
    </head>
    <body>
        <jsp:include page="include/menu.jsp" />
        <div id="content">
            <div class="home">
                <form action="../Controller?ac=updateCart" id="cartForm" method="Post">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th></th>
                                <th>Cake Name</th>
                                <th>Cake Price</th>
                                <th>Quantity</th>
                                <th>Amount</th>  
                                <th></th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:set var="total" value="0" scope="session"/>
                            <c:forEach var="ct" items="${cart.content}">
                                <sql:query dataSource="${conn}" var="result">
                                    select * from Product where itemcode= '${ct.key}';
                                </sql:query>
                                <tr>
                                    <c:set var="count" value="${count=count+1}"/>
                                    <td><img src="${result.rows[0].img}" height="50px" width="50px"/><input type="hidden" value="${result.rows[0].itemcode}" name="id"/></td>
                                    <td><a href="Detail.jsp?id=${p.itemcode}">${p.name}</a></td>          
                                    <td>$ ${result.rows[0].price}</td>
                                    <td><input type="number" value="${ct.value}" min="1" name="quantity"/></td>
                                    <td>$ ${result.rows[0].price * ct.value}</td>
                                    <td>
                                        <a href="../Controller?ac=delProduct&id=${result.rows[0].itemcode}" class="btn btn-danger">Remove</a>
                                    </td>
                                </tr>
                                <c:set var="amount" value="${result.rows[0].price * ct.value}"/>
                                <c:set var="total" value="${total = total + amount}" scope="session"/>
                            </c:forEach>
                            <tr>
                                <td  colspan="3" >Total</td>
                                <td><a href="#" onclick="submitForm()" class="btn btn-default">Update Quantity</a></td>
                                <td>$ ${total}</td>
                                <td><a href="../Controller?ac=delCart" class="btn btn-danger">Remove All</a>
                                </td>
                            </tr>
                            <tr height="20">
                            </tr>
                        </tbody>
                    </table> 
                </form>
                <div style="float: right;">
                    <a href="CheckOut.jsp" class="btn btn-success" style="width: 200px;">Check Out</a>
                    <a href="Product.jsp" class="btn btn-primary" >Continus Shopping</a>

                </div>
            </div>
        </div>
        <jsp:include page="include/footer.jsp" />
        <script src="js/chat.js" type="text/javascript"></script>
    </body>
</html>