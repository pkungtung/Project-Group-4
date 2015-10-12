<%-- 
    Document   : CheckOut
    Created on : Oct 7, 2015, 8:03:19 AM
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
        <style>
            #content div#blog div#articles div.section {
                background: url(../images/border-horizontal.gif) no-repeat 40px top;
                float: none;
                overflow: hidden;
                padding-left: 35px;
                width: 617px;
            }
        </style>
    </head>
    <body>

        <jsp:include page="include/menu.jsp" />
        <div id="content">
            <div class="home">
                <div class="aside" style="width: 400px; padding: 10px;">
                    <h2 style="text-align: center; color: #0033ff;">Infomation</h2>
                    <form action="loginAuthenticate.jsp" method="Post">
                        <div class="form-group">
                            <label for="">Name</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="">Address</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="">Contact number</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="">Delivery address</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="">Delivery Date</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="">
                        </div>
                        <button type="submit" class="btn btn-warning" style="width: 100px;">Order</button>

                    </form>
                </div>
                <div class="section" style="width: 540px;min-height: 600px;background: #E8E8E8;">
                    <h2 style="text-align: center; color: #0033ff;border-bottom: 1px #E8E8E8 solid;">Order</h2>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th></th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Quantity</th>  
                                <th>Amount</th>  

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="ct" items="${cart.content}">
                                <sql:query dataSource="${conn}" var="result">
                                    select * from Product where itemcode= '${ct.key}';
                                </sql:query>
                                <c:forEach var="p" items="${result.rows}">
                                    <tr>
                                        <td><img src="${p.img}" height="50px" width="50px"/><input type="hidden" value="${p.itemcode}" name="id"/></td>
                                        <td>${p.name}</td>
                                        <td>$ ${p.price}</td>
                                        <td>${ct.value}</td>
                                        <td>$ ${p.price * ct.value}</td>
                                    </tr>
                                <input type="hidden" value="${total = total + p.price * ct.value}"/>
                            </c:forEach>
                        </c:forEach>
                        <tr>
                            <td  colspan="4" >Total</td>
                            <td>$ ${total}</td>

                        </tr>
                        <tr height="20">
                        </tr>
                        </tbody>
                    </table> 
                </div>
            </div>
        </div>
        <jsp:include page="include/footer.jsp" />
    </body>
</html>