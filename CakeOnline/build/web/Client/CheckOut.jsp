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
                    <form name="fom" action="loginAuthenticate.jsp?ac=order" method="Post" onsubmit="return ValidateEmail(document.fom.email)">
                        <c:choose>
                            <c:when test="${empty sessionScope.loginUser}">
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input required type="text" class="form-control" name="name"/>
                                </div>
                                <div class="form-group">
                                    <label for="">Email</label>
                                    <input required type="text" class="form-control" name="email"/>
                                </div>
                                <div class="form-group">
                                    <label>Address</label>
                                    <input required type="text" class="form-control" name="address"/>
                                </div>
                                <div class="form-group">
                                    <label>Contact number</label>
                                    <input required type="text" class="form-control" name="number"/>
                                </div>
                            </c:when>
                            <c:otherwise>

                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input required type="text" class="form-control" name="name" value="${loginUser.rows[0].name}"/>
                                </div>
                                <div class="form-group">
                                    <label for="">Email</label>
                                    <input required type="text" class="form-control" name="email" value="${loginUser.rows[0].email}"/>
                                </div>
                                <div class="form-group">
                                    <label>Address</label>
                                    <input required type="text" class="form-control" name="address" value="${loginUser.rows[0].addr}"/>
                                </div>
                                <div class="form-group">
                                    <label>Contact number</label>
                                    <input required type="text" class="form-control" name="number" value="${loginUser.rows[0].number}"/>
                                </div>
                            </c:otherwise>
                        </c:choose>
                        <div class="form-group">
                            <label for="">Delivery address</label>
                            <input required type="text" class="form-control" name="deAddress"/>
                        </div>
                        <div class="form-group">
                            <label for="">Delivery Date</label>
                            <input required type="date" class="form-control" name="deDate"/>
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
                            <c:set var="total" value="0" scope="session"/>
                            <c:forEach var="ct" items="${cart.content}">
                                <sql:query dataSource="${conn}" var="result">
                                    select * from Product where itemcode= '${ct.key}';
                                </sql:query>
                                <c:forEach var="p" items="${result.rows}">
                                    <tr>
                                        <c:set var="count" value="${count=count+1}"/>
                                        <td><img src="${result.rows[0].img}" height="50px" width="50px"/><input type="hidden" value="${result.rows[0].itemcode}" name="id"/></td>
                                        <td><a href="Detail.jsp?id=${p.itemcode}">${p.name}</a></td>          
                                        <td>$ ${result.rows[0].price}</td>
                                        <td><input readonly type="number" value="${ct.value}" min="1" name="quantity"/></td>
                                        <td>$ ${result.rows[0].price * ct.value}</td>
                                    </tr>
                                    <c:set var="amount" value="${result.rows[0].price * ct.value}"/>
                                    <c:set var="total" value="${total = total + amount}" scope="session"/>
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