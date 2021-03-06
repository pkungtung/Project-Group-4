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
        <meta property="fb:app_id" content="711249222340969" />
        <meta property="fb:admins" content="100005491393252"/>

    </head>
    <body>
        <sql:setDataSource var="conn" 
                           driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                           url="jdbc:sqlserver://127.0.0.1:1433;database=ProjectGroup4"
                           user="sa" 
                           password="123456"
                           scope="session"/>
        <c:set var="tic" value="${param.id}" scope="session"/>
        <sql:query dataSource="${conn}" var="pr">
            Select * from Product where itemcode ='${param.id}';
        </sql:query> 
        <jsp:include page="include/menu.jsp" />
        <div id="content">
            <div class="home">
                <div id="bl">
                    <div class="imgpro" style="width: 450px; float: left;">
                        <img src="${pr.rows[0].img}" height="100%" width="100%" alt=""/>
                    </div>
                    <div class="detail">
                        <div>
                            <h2>${pr.rows[0].name}</h2>
                            <h3>Price: $ ${pr.rows[0].price}</h3>
                            <h3>Event: ${pr.rows[0]._event}</h3>
                            <h3>Egge: ${pr.rows[0].egg}</h3>
                            <p>Lorem ipsum dolor sit amet, consectetuer adispiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exercitation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</p>
                            <form action="../Controller?ac=addCart&id=${pr.rows[0].itemcode}" method="Post">
                                <h3 for="quantity" id="usernamelb">Quantity</h3>
                                <input style="width: 100px;" type="number" value="1" min="1" class="form-control" placeholder="Quantity" name="quantity"/>
                                <button type="submit" class="btn btn-warning"><i class="fa fa-shopping-cart"></i>
                                    Add to Cart</button>
                            </form>
                            <c:if test="${!empty sessionScope.loginUser}">
                                <sql:query dataSource="${conn}" var="cus">
                                    Select * from Customer where CusId =${sessionScope.loginUser.rows[0].CusId};
                                </sql:query>
                                <c:if test="${cus.rows[0].member eq 'Pre'}">
                                    <button style="margin-top: 10px;" class="btn btn-info" data-toggle="modal" data-target="#recipes">Recipes</button>
                                </c:if>
                                <c:if test="${cus.rows[0].member eq 'Pro'}">
                                    <button style="margin-top: 10px;" class="btn btn-info" data-toggle="modal" data-target="#recipes">Recipes</button>
                                </c:if>
                            </c:if>
                        </div>
                    </div>
                </div>
                <div class="facecmt">
                    <div class="box socialshare">
                        <!--                                    Go to www.addthis.com/dashboard to customize your tools -->
                        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-51fb1dcd68d4a79c" async="async"></script>
                        <!--                                    Go to www.addthis.com/dashboard to customize your tools -->
                        <div class="addthis_native_toolbox"></div>
                    </div>
                    <div class="subtitile">Ý kiến bình luận</div>
                    <div class="fb-comments" data-href="Detail.jsp?id=${pr.rows[0].img}" data-width="700" data-numposts="10" data-colorscheme="light" scrolling="no" title="http://developers.facebook.com/thecake2015"></div>
                    <!--                                    <div class="fb-comments fb_iframe_widget" data-href="" data-width="715" num_posts="7" fb-xfbml-state="rendered"><span style="height: 300px; width: 715px;"><iframe id="f72821b8c" name="f18e972034" scrolling="no" title="http://developers.facebook.com/thecake2015" style="border: none; overflow: hidden; height: 236px; width: 715px;"></iframe></span></div>-->
                </div>



            </div>
        </div>
        <div class="modal fade in" id="recipes" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" style="display: none;background-color:rgba(0, 0, 0, 0.6);">
            <div class="modal-dialog" style="width: 880px;margin:auto;">
                <div class="modal-content" style="background: #FFFAF0;">
                    <div class="modal-header">
                        <button type="button" onclick="resetModal()" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" style="color: #ff0066;font-weight: bold;" id="myModalLabel">${pr.rows[0].name}</h4>
                    </div>
                    <div class="modal-body">

                        <img style="float: left;margin-top: 20px;" src="${pr.rows[0].img}" height="300" width="300"/>
                        <div style="margin-left: 340px;height: 300px;top: 5px;">
                            <h3>Ingredients</h3>
                            <ul class="unstyled">
                                <li>225g unsalted butter, softened, plus extra for greasing</li>
                                <li>350g caster sugar</li>
                                <li>1 tbsp vanilla extract</li>
                                <li>5 large egg whites</li>
                                <li>325g plain flour</li>
                                <li>25g cornflour</li>
                                <li>1½  tbsp baking powder</li>
                                <li>250ml buttermilk</li>
                            </ul>
                        </div>
                        <div style="margin: 10px 20px 20px 20px;padding: 10px;">
                            <h2>Recipes!</h2>
                            <ol>
                                <li>Heat oven to 180C/160C fan/gas 4 and grease 3 x 20cm sandwich tins, lining the bases with baking parchment and greasing the parchment too.</li>
                                <li>Beat the butter and sugar in a large bowl with an electric whisk until light and fluffy. Add the vanilla extract and the whites, a little at a time, beating until fully combined before adding more. Mix together the flour, cornflour an baking powder. Add the dry ingredients in 3 additions, alternating with the buttermilk. Divide the batter between the tins and level the tops.</li>
                                <li>Bake for 25-30 mins or until a skewer inserted into the middle comes out clean. Allow the cakes to cool in the tins for 10 mins, then turn out onto a wire rack, peeling off the parchment. Cool completely.</li>
                                <li>To make the buttercream, put the egg whites and sugar in a big bowl (the bowl of your tabletop mixer, if you have one) with the vanilla seeds and set over a pan of gently simmering water. Lightly whisk until the sugar has fully dissolved – you can test this by dipping two fingers into the bowl and rubbing them together; if you can’t feel any grains of sugar, the mixture is ready. Remove the bowl from the heat and keep whisking until a thick meringue has formed. Continue whisking until the meringue has cooled to room temperature, then slowly add in the butter, 1 tbsp at a time. By the time all the butter has been incorporated, the mixture should have transformed into a silky-smooth buttercream. If it hasn’t, continue to whisk until it does. If it still refuses to thicken, it may be the mixture is still too warm, so chill for 10 mins, then continue whisking. Add the vanilla extract and mix to combine.</li>
                                <li>To assemble the cake, place a sponge on a cake board or serving plate and top with a thin layer of buttercream. Repeat with the remaining cake layers and finish by spreading the remaining buttercream over the top and sides of the cake (see below). To get a smooth finish, use the edge of a palette knife, and drag carefully around the sides of the cake, smoothing out the buttercream. To decorate the cake, press the sides of it with the edible polka dot sprinkles creating a full border at the bottom with less and less the further up the cake you go. Best served within 2 days of baking, but the cake will keep for up to 4 days</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <c:set var="code" scope="session" value="${null}"/>

        <jsp:include page="include/newfooter.jsp" />    

    </body>
</html>
