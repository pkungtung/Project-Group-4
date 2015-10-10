<%-- 
    Document   : Sitemap2
    Created on : Oct 6, 2015, 12:52:36 PM
    Author     : Hoang Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script language="javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style1.css" />
        <style> 
        ul li{ list-style-type: none;}
            a{ text-decoration: none;}
            ul li .submenu{ display: none;}
            ul li.selected .submenu{ display: block;}
            .submenu ul{ margin: 0px; padding: 0px;}
            
            ul li ul li{margin-left: 25px}            
        </style>

        <script language="javascript">
            /*VIẾT JAVASCRIPT TẠI ĐÂY*/
            $(document).ready(function() {
                $("ul li a").click(function() 
                {
                    var li = $(this).parent();

                    // Kiểm tra có phải click vào menu đã active ko
                    // nếu phải thì ko làm gì, ngược lại sẽ xử lý xổ menu con ra
                    if (li.hasClass("selected")) {
                        return false;
                    } 
                    else {
                        // Xóa class selected khỏi các thẻ li khác
                        $('ul li').removeClass('selected');
                        // Thêm class selected vào thẻ li hiện tại
                        li.addClass("selected");
                    }
                    
                    // return false nghĩa là cho trang đứng im
                    return false; 

                });
            });
        </script>
    </head>
    <body>
        <jsp:include page="include/menu.jsp" />
        <div id="content">
            <div id="blog">
        <ul>
            <li><a  href="#"><img src="images/13755211047.jpg">  Home</a>
            </li>
            <li><a  href="#"><img src="images/13755211047.jpg">  All Cake</a>
                <div class="submenu">
                    <ul>
                        <li><a href="#" style="color: #000"><img src="images/thecake.png" style="text-height: 5px">  Birth Day</a></li>
                        <li><a href="#" style="color: #000"><img src="images/thecake.png" style="text-height: 5px">  Anniversary</a></li>
                        <li><a href="#" style="color: #000"><img src="images/thecake.png" style="text-height: 5px">  Engagement</a></li>
                        <li><a href="#" style="color: #000"><img src="images/thecake.png" style="text-height: 5px">  Marriage</a></li>
                        <li><a href="#" style="color: #000"><img src="images/thecake.png" style="text-height: 5px">  Dessert</a></li>
                    </ul>	
                </div>
            </li>
            <li><a  href="#"><img src="images/13755211047.jpg">  Contact Us</a>
            </li>
            <li><a  href="#"><img src="images/13755211047.jpg">  SiteMap</a>
            </li>
            <li><a  href="#"><img src="images/13755211047.jpg">  Blog</a>
            </li>
        </ul>
        </div>
        </div>
         <jsp:include page="include/newfooter.jsp" />
    </body>
</html>

