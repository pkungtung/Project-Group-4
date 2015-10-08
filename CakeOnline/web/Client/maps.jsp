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
        <title>Maps</title>
        <link rel="shortcut icon" href="images/logo_footer.png">
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <meta property="fb:app_id"       content="711249222340969" />
        <meta property="fb:admins" content="100005491393252"/>
    </head>
       <div id="fb-root"></div>
       <script>
               (function(d, s, id) {
                 var js, fjs = d.getElementsByTagName(s)[0];
                 if (d.getElementById(id)) return;
                 js = d.createElement(s); js.id = id;
                 js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.4&appId=711249222340969";
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
                                    <span class="date">Store 1</span>
                                    <span class="connect">
                                        <div class="fb-like" data-href="http://localhost:8080/CakeOnline/Client/Blog.jsp" data-layout="button_count" data-action="like" data-show-faces="true" data-share="true">
    
                                        </div>
                                    </span>
                                    <h1>61 Tu Xuong - P7 - Q3 - TP.HCM</h1>
                                    <h1>Tel: 08.2200.5000</h1>
                                    <div style="margin: 0 auto; width: 573px;">
                                        <iframe frameborder="0" scrolling="no" style="top: 0px; width: 573px; height: 400px; border: none; overflow: hidden; margin-bottom: 20px" src="maps.html">

                                        </iframe>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li>
                            <div>
                                <div>
                                    <span class="date">Store 2</span>
                                    <span class="connect">
                                        <div class="fb-like" data-href="http://localhost:8080/CakeOnline/Client/Blog.jsp" data-layout="button_count" data-action="like" data-show-faces="true" data-share="true">
    
                                        </div>
                                    </span>
                                    <h1>251 Kham Thien - Dong Da - Ha Noi</h1>
                                    <h1>Tel: 04.2200.5555</h1>
                                    <div style="margin: 0 auto; width: 573px;">
                                        <iframe frameborder="0" scrolling="no" style="top: 0px; width: 573px; height: 400px; border: none; overflow: hidden; margin-bottom: 20px" src="maps3.html"></iframe>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div id="maps">
                    <div class="chinhanh" style="height: auto; margin-bottom: 10px; padding: 0px">
                        <div id="chinhanh-head">
                            HOTLINE
                        </div>
                        <div id="head-right-icon">
                            <img src="../Client/images/phone.png" height="22">
                        </div>
                        <div class="chinhanhbando" style="padding:0 5px; margin-top: -14px;">
                            <table style="width: 100%" class="hotline">

                                <tbody><tr>
                                        <td>HCM:</td>
                                        <td>08.2200.5000</td>
                                    </tr>

                                    <tr>
                                        <td>Hà Nội:</td>
                                        <td>04.2200.5555</td>
                                    </tr>

                                    <tr>
                                        <td>Hotline:</td>
                                        <td>0919101100</td>
                                    </tr>
                                </tbody></table>

                        </div>
                    </div>
                    <div class="chinhanh" style="height: auto; margin-bottom: 10px; padding: 0px">
                        <div id="chinhanh-head">
                            Hỗ trợ trực tuyến
                        </div>
                        <div id="head-right-icon">
                            <img src="../Client/images/hotroicon.png">
                        </div>
                        <div class="chinhanhbando">

                            <div class="hotro-item">
                                <h2>Bán sỉ &amp; hợp tác</h2>
                                <table width="100%">

                                    <tbody><tr>
                                            <td style="width: 50%; padding: 3px 0px 3px 20px">
                                                Mr Hòa
                                            </td>
                                            <td>
                                                <a href="ymsgr:sendIM?tranhoa1508&amp;m=Hỗ trợ trực tuyến Laptop No1"><img border="0" src="http://opi.yahoo.com/online?u=tranhoa1508&amp;m=g&amp;t=1&amp;l=us"></a>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td style="width: 50%; padding: 3px 0px 3px 20px">
                                                Mr Bảo
                                            </td>
                                            <td>
                                                <a href="ymsgr:sendIM?lebaono1&amp;m=Hỗ trợ trực tuyến Laptop No1"><img border="0" src="http://opi.yahoo.com/online?u=lebaono1&amp;m=g&amp;t=1&amp;l=us"></a>
                                            </td>
                                        </tr>

                                    </tbody></table>
                            </div>

                            <div class="hotro-item">
                                <h2>
                                    Tư vấn Hà Nội</h2>
                                <table width="100%">

                                    <tbody><tr>
                                            <td style="width: 50%; padding: 3px 0px 3px 20px">
                                                Mr Văn
                                            </td>
                                            <td>
                                                <a href="ymsgr:sendIM?kd_laptopno1&amp;m=Hỗ trợ trực tuyến Laptop No1"><img border="0" src="http://opi.yahoo.com/online?u=kd_laptopno1&amp;m=g&amp;t=1&amp;l=us"></a>
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>

                            <div class="hotro-item">
                                <h2>
                                    Tư vấn HCM</h2>
                                <table width="100%">

                                    <tbody><tr>
                                            <td style="width: 50%; padding: 3px 0px 3px 20px">
                                                Mr Kiệt
                                            </td>
                                            <td>
                                                <a href="ymsgr:sendIM?baoan_sale09&amp;m=Hỗ trợ trực tuyến Laptop No1"><img border="0" src="http://opi.yahoo.com/online?u=baoan_sale09&amp;m=g&amp;t=1&amp;l=us"></a>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td style="width: 50%; padding: 3px 0px 3px 20px">
                                                Mr Kha
                                            </td>
                                            <td>
                                                <a href="ymsgr:sendIM?baoan_sale05&amp;m=Hỗ trợ trực tuyến Laptop No1"><img border="0" src="http://opi.yahoo.com/online?u=baoan_sale05&amp;m=g&amp;t=1&amp;l=us"></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="qc-left">
                        <span style="font-weight: bold; background: #fff">Quảng cáo</span>
                        <p></p>
                        <div class="qc"></div>
                    </div>
                    <div class="chinhanh" style="height: auto; margin-bottom: 10px; padding: 0px">
                        <div id="chinhanh-head">
                            Thống kê truy cập
                        </div>
                        <div id="head-right-icon">
                            <img src="../Client/images/thongkeicon.png">
                        </div>
                        <div class="chinhanhbando">
                            <table style="width: 100%">
                                <tbody><tr>
                                        <td style="height: 30px; padding-left:5px;">
                                            <b>Online</b>
                                        </td>
                                        <td style="height: 30px; padding-left:5px;">
                                            <span class="truycap">1</span><span class="truycap">0</span><span class="truycap">4</span><span class="truycap">9</span><span class="truycap">6</span>
                                        </td>
                                    </tr>
                                    <tr><td style="width: 50%; padding-left:5px;"><b>Lượt truy cập</b></td><td></td></tr><tr><td colspan="2" style="padding-left:5px;"><span class="truycap">2</span><span class="truycap">0</span><span class="truycap">5</span><span class="truycap">1</span><span class="truycap">8</span><span class="truycap">6</span><span class="truycap">1</span><span class="truycap">4</span></td></tr>
                                </tbody></table>
                        </div>
                    </div>
                    <div class="chinhanh" style="height: auto; margin-bottom: 10px; padding: 0px">
                        <div class="fb-page" data-href="https://www.facebook.com/thecake2015" data-width="204" data-height="300" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="false">
                            <div class="fb-xfbml-parse-ignore">
                                <blockquote cite="https://www.facebook.com/thecake2015">
                                    <a href="https://www.facebook.com/thecake2015">The Cake</a>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <jsp:include page="include/newfooter.jsp" />
       <script src="js/chat.js" type="text/javascript"></script>
    </body>
</html>
