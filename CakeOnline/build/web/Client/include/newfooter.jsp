<%-- 
    Document   : newfooter
    Created on : Sep 17, 2015, 9:08:46 AM
    Author     : nguyen.muoi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div id="footer">
            <div class="section">
                <div>
                    <div class="aside">
                        <div class="side">
                            <div>
                                <b>Too <span>BUSY</span> to shop?</b>
                                <a data-toggle="modal" data-target="#signUpModal" href="#">Sign up for free</a>
                                <p>and we&#39;ll deliver it on your doorstep</p>
                            </div>
                        </div>
                          <div class="desi" style="margin-top: 10px;">
                            <p style="padding-right:10px; text-align:center; clear:both; overflow:hidden; padding-bottom:8px;">
                                <span class="linkxanh">
                                    <a href="http://hocwebgiare.com/nguyen-phat-tai-youtube-channel.html">
                                        <i class="fa fa-youtube fa-2x"></i>
                                    </a>
                                </span> 
                                <span class="linkxanh">
                                    <a href="https://twitter.com/123hocweb" target="_blank">
                                        <i class="fa fa-twitter fa-2x"></i> 
                                    </a>
                                </span>
                                <span class="linkxanh">
                                    <a href="https://www.google.com/+NguyenPhatTai" target="_blank">
                                        <i class="fa fa-google-plus fa-2x"></i> 
                                    </a>
                                </span> 
                                <span class="linkxanh"><a href="https://www.facebook.com/hocwebgiare" target="_blank">
                                        <i class="fa fa-facebook-square fa-2x"></i> 
                                    </a>
                                </span> 
                                <span class="linkxanh">
                                    <a href="https://www.pinterest.com/hocwebgiare/" target="_blank">
                                        <i class="fa fa-pinterest fa-2x"></i>
                                    </a>
                                </span>
                            </p>
                        </div>
                    </div>
                    <div class="connect">
                        <div id="fb-root"></div>
                        <script>(function(d, s, id) {
                          var js, fjs = d.getElementsByTagName(s)[0];
                          if (d.getElementById(id)) return;
                          js = d.createElement(s); js.id = id;
                          js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.4";
                          fjs.parentNode.insertBefore(js, fjs);
                        }(document, 'script', 'facebook-jssdk'));</script>
                        <div class="fb-page" data-href="https://www.facebook.com/thecake2015" data-width="450" data-height="220" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="false">
                            <div class="fb-xfbml-parse-ignore">
                                <blockquote cite="https://www.facebook.com/thecake2015">
                                    <a href="https://www.facebook.com/thecake2015">The Cake</a>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="featured">
                <ul>
                    <li class="first">
                        <a href="Home.jsp"><img src="images/fruit-cake.jpg" alt="Image" /></a>
                        <h2><a href="Home.jsp">Tips on how to preserve</a></h2>
                        <p> <a href="Home.jsp" class="readmore">read more</a></p>
                    </li>
                    <li>
                        <a href="Home.jsp"><img src="images/italian.jpg" alt="Image" /></a>
                        <h2><a href="Home.jsp">Menu of the day: Italian</a></h2>
                        <p> <a href="Home.jsp" class="readmore">read more</a></p>
                    </li>
                    <li>
                        <a href="Home.jsp"><img src="images/fruit.jpg" alt="Image" /></a>
                        <h2><a href="Home.jsp">Fruit menu for your diet</a></h2>
                        <p> <a href="Home.jsp" class="readmore">read more</a></p>
                    </li>
                    <li>
                        <a href="Home.jsp"><img src="images/desserts.jpg" alt="Image" /></a>
                        <h2><a href="Home.jsp">Desserts for every occassion</a></h2>
                        <p> <a href="Home.jsp" class="readmore">read more</a></p>
                    </li>
                </ul>
            </div>
            <div id="navigation">
                <div>
                    <ul>
                        <li class="first"><a href="Home.jsp">help</a></li>
                        <li><a href="About.jsp">about cake delight</a></li>
                        <li><a href="Home.jsp">cake delight talk</a></li>
                        <li><a href="Home.jsp">developers</a></li>
                        <li><a href="Home.jsp">privacy policy</a></li>
                        <li><a href="Home.jsp">terms of use(updated 10/15/08)</a></li>
                    </ul>
                    <p>Copyright &copy; 2006-2008 cake delight  All rights reserved</p>
                </div>
            </div>
        </div>
    </body>
</html>
