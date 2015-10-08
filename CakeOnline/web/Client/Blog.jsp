<%-- 
    Document   : About
    Created on : Sep 16, 2015, 10:35:29 PM
    Author     : nguyen.muoi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8" />
        <title>Blog</title>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
        <div id="fb-root"></div>
        <script>
                (function(d, s, id) {
                  var js, fjs = d.getElementsByTagName(s)[0];
                  if (d.getElementById(id)) return;
                  js = d.createElement(s); js.id = id;
                  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.5&appId=711249222340969";
                  fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));
        </script>
    <body>
        <jsp:include page="include/menu.jsp" />
        <div id="content">
            <div id="blog">
                <div id="articles">
                    <ul>
                        <li>
                            <div>
                                <div>
                                    <span class="date">Dec 3</span>
                                    <span class="connect">
                                        <div class="fb-like" data-href="http://localhost:8080/CakeOnline/Client/Blog.jsp" data-layout="button_count" data-action="like" data-show-faces="true" data-share="true">
    
                                        </div>
                                    </span>
                                    <h1><a href="Home.jsp">New Recipes: Fancy Desserts</a></h1>
                                    <h2>Let&#39;s bake!</h2>
                                    <p>Nullam ut mollis odio. Duis tempor interdum tellus, sit amet aliquet dui dictum a. Quisque in lacus vel dui tempus porttitor mollis vitae dolor. Phasellus lacinia est at massa mattis consequat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis condimentum ultricies scelerisque. Quisque vulputate laoreet erat at consequat. Sed sit amet sem sed lectus consectetur ultrices. Ut tincidunt, augue id sollicitudin placerat, magna nisl tempor arcu, vitae blandit risus ligula nec erat. Nunc convallis, erat in ornare tempus, ligula ipsum lacinia metus, nec bibendum tortor neque eget diam. Donec imperdiet faucibus enim, vel sodales tortor blandit a. Suspendisse potenti. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam eleifend tincidunt iaculis.</p>
                                    <span id="tag">Tag: <a href="Home.jsp">Cookies</a> <a href="Home.jsp">Recipes</a></span>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div>
                                <div>
                                    <span class="date">Nov 29</span>
                                    <span class="connect">
                                        <div class="fb-like" data-href="http://localhost:8080/CakeOnline/Client/Blog.jsp" data-layout="button_count" data-action="like" data-show-faces="true" data-share="true"></div>
                                    </span>
                                    <h1><a href="Home.jsp">3 Day Christmas Sale on the Shop</a></h1>
                                    <h2>December 3-5&#44; 2011 Crazy Discounts</h2>
                                    <p>Pellentesque placerat sollicitudin metus eget euismod. Suspendisse potenti. Sed nibh augue, rutrum quis posuere quis, elementum et enim. Morbi varius varius odio ac facilisis. Pellentesque ut erat vulputate ligula elementum ultrices. Morbi tempor magna sed tellus pellentesque ac ultricies justo euismod. Proin vitae enim non eros eleifend aliquam. Morbi posuere nibh vitae sapien ultrices molestie. Vivamus elit nulla, dignissim non fringilla vel, facillisis et arcu.</p>
                                    <span id="tag">Tag: <a href="Home.jsp">Sale</a> <a href="Home.jsp">Promos</a> <a href="Home.jsp">Food</a></span>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="section">
                        <a href="Home.jsp" class="newpost">New Post</a>
                        <a href="Home.jsp" class="oldpost">Old Post</a>
                    </div>
                </div>
                <div id="sidebar">
                    <h2 id="bog">Archives</h2>
                    <h3 class="first" id="bogfile"><a href="Home.jsp" id="down">2011 <span>(60)</span></a></h3>
                    <div id="bogrigh">
                        <p><a href="Home.jsp">November <span>(11)</span></a></p>
                        <p><a href="Home.jsp">October <span>(3)</span></a></p>
                        <p><a href="Home.jsp">September <span>(8)</span></a></p>
                        <p><a href="Home.jsp">August <span>(3)</span></a></p>
                        <p><a href="Home.jsp">July <span>(2)</span></a></p>
                        <p><a href="Home.jsp">June</a></p>
                        <p><a href="Home.jsp">May <span>(8)</span></a></p>
                        <p><a href="Home.jsp">April <span>(7)</span></a></p>
                        <p><a href="Home.jsp">March <span>(7)</span></a></p>
                        <p><a href="Home.jsp">April <span>(7)</span></a></p>
                        <p><a href="Home.jsp">February <span>(10)</span></a></p>
                        <p><a href="Home.jsp">January <span>(1)</span></a></p>
                    </div>
                    <h3><a href="Home.jsp">2010</a></h3>
                    <h3><a href="Home.jsp">2009</a></h3>
                </div>
            </div>
        </div>
       <jsp:include page="include/newfooter.jsp" />
       <script src="js/chat.js" type="text/javascript"></script>
    </body>
</html>
