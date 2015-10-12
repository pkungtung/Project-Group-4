/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function resetModal() {
    $(function () {
        document.getElementById("myModal").style.display = "none";
        document.getElementById('myModalLabel').innerHTML = "Signin to Site";
        document.getElementById('myModalLabel').style.color = "#000";
        document.getElementById('signUpModal').style.display = "none";
        document.getElementById('myModalSignupLabel').innerHTML = "Signup to Site";
        document.getElementById('myModalSignupLabel').style.color = "#000";
    });
}
// show and hide sub menu
$(function () {
    $('nav ul li').hover(
            function () {
                //show its submenu
                $('ul', this).slideDown(150);
            },
            function () {
                //hide its submenu
                $('ul', this).slideUp(150);
            }
    );
});
//end  
function signin() {
    $('#fomSignin').submit();
}
function resetField() {
    document.getElementById('usernamelb').innerHTML = "UserName";
    document.getElementById('usernamelb').style.color = "#000";
    document.getElementById('passlb').innerHTML = "Password";
    document.getElementById('passlb').style.color = "#000";
    document.getElementById("username").value = "";
    document.getElementById("pass").value = "";
}
function validateSignIn() {
    var userName = document.getElementById('username').value;
    var pass = document.getElementById('pass').value;
    var f = false;
    var f2 = false;
    if (userName === null || userName === "") {
        document.getElementById('usernamelb').innerHTML = "UserName not Blank";
        document.getElementById('usernamelb').style.color = "#cc0000";
        f = false;
    } else {
        document.getElementById('usernamelb').innerHTML = "UserName";
        document.getElementById('usernamelb').style.color = "#000";
        f = true;
    }
    if (pass === null || pass === "") {
        document.getElementById('passlb').innerHTML = "Password not Blank";
        document.getElementById('passlb').style.color = "#cc0000";
        f2 = false;
    } else {
        document.getElementById('passlb').innerHTML = "Password";
        document.getElementById('passlb').style.color = "#000";
        f2 = true;
    }
    if (f && f2) {
        return true;
    } else {
        return false;
    }
}

$(document).ready(function () {
    $("input#autosearch").autocomplete(
            {
                source: getListSearch(),
                minLength: 1,
                delay: 100,
                autoFocus: false,
                open: function () {
                    $('.ui-autocomplete').width('250px');
                    $('.ui-widget-content').css('background', '#fff');
                    $('.ui-menu-item a').removeClass('ui-corner-all');
                },
                select: function (event, ui) {
                    window.location.href = ui.item.url;
                }
            }
    );
});
//Scroll_Top
        jQuery('body').append('<div id="autoTop"><!----></div>'); //Chèn thêm thẻ div với id='top' vào cuối cặp thẻ body
        jQuery(window).scroll(function () { //Bắt sự kiện cuộn trang
            if (jQuery(window).scrollTop() > 300) { //Kiểm tra vị trí cuộn trang (Cách top 700px)
                jQuery('#autoTop').animate({'width': 'show'}, 300);  //Nếu cách top 700px thì gán thuộc tính right:10px cho thẻ div để hiển thị
            } else {
                jQuery('#autoTop').animate({'width': 'hide'}, 300); //Nếu cách top dưới 700px thì gán thuộc tính right:-80px để ẩn thẻ div
            }
        });
        jQuery('#autoTop').click(function () { //Bắt sự kiện click vào "Slide to top"
            jQuery('html, body').animate({scrollTop: 0}, 1000); //Trượt trang lên đầu
        });