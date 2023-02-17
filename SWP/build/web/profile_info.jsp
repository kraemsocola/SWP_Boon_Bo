<%-- 
    Document   : profile
    Created on :  Feb 11, 2023, 11:39:29 PM
    Author     : Phuong-Linh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./assets/css/header_footer.css">
        <link rel="stylesheet" href="./assets/css/profile_info.css">
        <script type="text/javascript" language="javascript" src="../main.js"></script>
        <link rel="stylesheet" href="./assets/font/fontawesome-free-6.1.1/css/all.min.css">
        <link rel="icon" href="./assets/img/small_logo1.png">
        <title>BOT STORE</title>
        
    </head>
    <body>
        <!-- header -->
        <div id="header">
            <!-- header top -->
            <div class="header_top">
                <div class="header_top-intro">
                    <div class="header_top-intro-support">
                        <div class="sp-child hotline">
                            <i class="fa-solid fa-phone icon-sup"></i>
                            <span>+84 123456789</span>
                        </div>
                        <div class="sp-child email">
                            <i class="fa-solid fa-at icon-sup"></i>
                            <span>botstore@gmail.com</span>
                        </div>
                        <div class="sp-child question">
                            <i class="fa-solid fa-headset icon-sup"></i>
                            <span>Hỗ trợ trực tuyến 24/7</span>
                        </div>
                    </div>
                    <div class="header_top-intro-language">
                        Language
                        <i class="fa-solid fa-chevron-down icon_arrowdown"></i>
                        <ul class="language-child">
                            <li class="language_item">
                                <img src="../assets/img/flagVN.jpg" class="language-item_child flag">
                                <span class="language-item_child ">VietNam</span>
                            </li>
                            <li class="language_item">
                                <img src="../assets/img/la-co-vuong-quoc-anh.jpg" class="language-item_child flag">
                                <span class="language-item_child ">English</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- end header top -->
            <!-- header mid -->
            <div class="header_mid">
                <!-- header mid top -->
                <div class="mid-top">
                    <div class="logo">
                        <a href="../index.html">
                            <img src="../assets/img/Logo.png" alt="Logo" id="img_logo">
                        </a>
                    </div>
                    <div class="search">
                        <input type="text" placeholder="Tìm Kiếm..." class="input_search">
                        <div class="search-item">
                            <i class="fa-solid fa-magnifying-glass icon-search"></i>
                        </div>
                    </div>
                    <div class="login-cart">
                        <a href="../src/login.html" class="login_cart-item-link">
                            <div class="login-cart_item">
                                <i class="fa-solid fa-user"></i>
                            </div>
                        </a>
                        <a href="../src/cart.html" class="login_cart-item-link">
                            <div class="login-cart_item">
                                <i class="fa-solid fa-bag-shopping"></i>
                            </div>
                        </a>
                    </div>
                </div>
                <!-- end header mid top -->
                <!-- header mid bot -->
                <div class="mid-bot">
                    <!-- menu left -->
                    <button class="menu_left">
                        <i class="fa-solid fa-bars icon_list"></i>
                        Danh mục sản phẩm
                        <div class="menu_left-child">
                            <ul>
                                <li class="menu_left-item">
                                    Mô hình xe hơi
                                </li>
                                <li class="menu_left-item">
                                    Mô hình Lego
                                </li>
                                <li class="menu_left-item">
                                    <div class="menu_left-item-title">
                                        <div class="menu_left-item-title-child">Mô hình phim</div>
                                        <i class="fa-solid fa-angle-right icon_arrow-menulv2"></i> 
                                    </div>
                                    <div class="menu_left-item-lv2">
                                        <ul>
                                            <li class="menu_left-item-child">Marvel</li>
                                            <li class="menu_left-item-child">DC</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="menu_left-item">
                                    Mô hình Transformer
                                </li>
                                <li class="menu_left-item">
                                    <div class="menu_left-item-title">
                                        <div class="menu_left-item-title-child">Mô hình anime</div>
                                        <i class="fa-solid fa-angle-right icon_arrow-menulv2"></i> 
                                    </div>
                                    <div class="menu_left-item-lv2">
                                        <ul>
                                            <li class="menu_left-item-child">Naruto</li>
                                            <li class="menu_left-item-child">One Piece</li>
                                            <li class="menu_left-item-child">Dragon Ball</li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="menu_left-item">
                                    Mô hình Figger
                                </li>
                                <li class="menu_left-item">
                                    <div class="menu_left-item-title">
                                        <div class="menu_left-item-title-child">Mô hình khác</div>
                                        <i class="fa-solid fa-angle-right icon_arrow-menulv2"></i> 
                                    </div>
                                    <div class="menu_left-item-lv2">
                                        <ul>
                                            <li class="menu_left-item-child">Mô hình cây mini</li>
                                            <li class="menu_left-item-child">Mô hình trang trí</li>
                                            <li class="menu_left-item-child">Mô hình PC</li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </button>
                    <!-- end menu left -->
                    <!-- menu right -->
                    <ul class="menu_right">
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="../index.html">Trang chủ</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="#">Hàng mới</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="#">Thương hiệu</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="../src/oder.html">Đơn hàng</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="../src/profile_info.html">Trang cá nhân</a>
                        </li>
                    </ul>
                    <!-- end menu right -->
                </div>
                <!-- end header mid bot -->
            </div>
            <!-- end mid -->
        </div>
        <!-- end header -->

        <!-- body -->
        <div id="body">
            <!-- container -->
            <div class="body_container">
                <!-- body left -->
                <div class="body_left">
                    <!-- body left top (dashboard)-->
                    <div class="body_left-dashboard">
                        <div class="body_left-dashboard_title">THÔNG TIN</div>
                        <a href="./oder.html" class="body_left-dashboard_child">
                            <div id="hover_icon">
                                <i class="fa-solid fa-cart-shopping  dashboard_icon"></i>
                                Đơn hàng
                            </div>
                            <span>69</span>
                        </a>
                        <a href="./favorite.html" class="body_left-dashboard_child">
                            <div id="hover_icon">
                                <i class="fa-solid fa-heart  dashboard_icon"></i>
                                Yêu thích
                            </div>
                            <span>420</span>
                        </a>
                        <a href="./support.html" class="body_left-dashboard_child">
                            <div id="hover_icon">
                                <i class="fa-solid fa-headset  dashboard_icon"></i>
                                Hỗ trợ
                            </div>
                            <span>1</span>
                        </a>
                    </div>
                    <!-- body left bot (acc setting)-->
                    <div class="body_left-setting">
                        <div class="body_left-dashboard_title">TÀI KHOẢN</div>
                        <a href="../src/profile_info.html" class="body_left-dashboard_child" id="current_page">
                            <div id="hover_icon">
                                <i class="fa-solid fa-user dashboard_icon"></i>
                                Trang cá nhân
                            </div>
                            <span>1</span>
                        </a>
                        <a href="../src/address.html" class="body_left-dashboard_child">
                            <div id="hover_icon">
                                <i class="fa-solid fa-location-arrow dashboard_icon"></i>
                                Địa chỉ
                            </div>
                            <span>2</span>
                        </a>
                        <a href="../src/thanh_toan.html" class="body_left-dashboard_child">
                            <div id="hover_icon">
                                <i class="fa-solid fa-credit-card dashboard_icon"></i>
                                Phương thức thanh toán
                            </div>
                            <span>3</span>
                        </a>
                    </div>
                </div>
                <!-- body right -->
                <div class="body_right">
                    <div>
                        <!-- title -->
                        <div class="body_right-title">
                            <div class="body_right-title-1">
                                <i class="fa-solid fa-user body_right-title_icon"></i>
                                <p id="body_right-title">Trang Cá Nhân</p>
                            </div>
                            <a class="body_right-edit_button" href="changeprofile">
                                Sửa thông tin cá nhân
                            </a>
                        </div>
                        <!-- tên và trang thái -->
                        <div class="body_right-status">
                            <!-- avatar -->
                            <div class="body_right-status_avatar">
                                <img src="./assets/img/frog (7).png" alt="con ech" id="body_right-status_avatar">
                            </div>
                            <!-- name and crown -->
                            <div class="body_right-status_right">
                                <!-- name -->
                                <c:set var="a" value="${requestScope.userNow}"/>
                                <div class="body_right-status_name">
                                    <div id="body_right-status_name">${a.username}</div>
                                    <div class="body_right-status_name-money">
                                        Đã chi tiêu:
                                        <span id="body_right-status_name-money">${requestScope.sumMoney}$</span>
                                    </div>

                                    <c:choose>
                                        <c:when test="${requestScope.sumMoney < 1000000}">
                                            <c:set var="lack" value="${1000000 - requestScope.sumMoney}"></c:set>
                                                <div class="body_right-status_name-level">
                                                    Thành viên mới
                                                </div>

                                        </c:when>
                                        <c:when test="${requestScope.sumMoney >= 1000000 && requestScope.sumMoney < 5000000}">
                                            <c:set var="lack" value="${5000000 - requestScope.sumMoney}"></c:set>
                                                <div class="body_right-status_name-level">
                                                    Thành viên bạc
                                                </div>
                                        </c:when>
                                        <c:when test="${requestScope.sumMoney >= 5000000 && requestScope.sumMoney < 10000000}">
                                            <c:set var="lack" value="${10000000 - requestScope.sumMoney}"></c:set>
                                                <div class="body_right-status_name-level">
                                                    Thành viên vàng
                                                </div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="body_right-status_name-level" style="width: 160px">
                                                Thành viên kim cương
                                            </div>
                                        </c:otherwise>
                                    </c:choose>

                                </div>
                                <!-- crown -->
                                <div class="body_right-status_crown">
                                    <div class="body_right-status_crown-child">
                                        <c:choose>
                                            <c:when test="${requestScope.sumMoney < 1000000}">
                                                <p id="body_right-status_crown-child">
                                                    Hãy mua thêm ${lack}$ để lên thành viên bạc
                                                </p>

                                            </c:when>
                                            <c:when test="${requestScope.sumMoney >= 1000000 && requestScope.sumMoney < 5000000}">
                                                <p id="body_right-status_crown-child">
                                                    Hãy mua thêm ${lack}$ để lên thành viên vàng
                                                </p>
                                            </c:when>
                                            <c:when test="${requestScope.sumMoney >= 5000000 && requestScope.sumMoney < 10000000}">
                                                <p id="body_right-status_crown-child">
                                                    Hãy mua thêm ${lack}$ để lên thành viên kim cương
                                                </p>
                                            </c:when>
                                            <c:otherwise>

                                            </c:otherwise>
                                        </c:choose>

                                        <div id="progressBar">
                                            <div id="barStatus"></div>
                                        </div>
                                    </div>
                                    <i class="fa-solid fa-crown" id="body_right-status_crown"></i>
                                </div>
                            </div>
                        </div>
                        <!-- lịch sử các đơn hàng -->
                        <div class="body_right-history">
                            <div class="body_right-history_child">
                                <span class="body_right-history_child-number">267</span>
                                <p>Đơn hàng đã mua</p>
                            </div>
                            <div class="body_right-history_child">
                                <span class="body_right-history_child-number">6</span>
                                <p>Đơn hàng đợi thanh toán</p>
                            </div>
                            <div class="body_right-history_child">
                                <span class="body_right-history_child-number">2</span>
                                <p>Đơn hàng đã huỷ</p>
                            </div>
                            <div class="body_right-history_child">
                                <span class="body_right-history_child-number">10</span>
                                <p>Đơn hàng đang giao</p>
                            </div>
                        </div>
                        <!-- thông tin cá nhân -->
                        <div class="body_right-info">
                            <div class="body_right-info_child">
                                <div class="body_right-info_child-title">
                                    Họ
                                </div>

                                <c:choose>
                                    <c:when test = "${a.firstname == null}">
                                        <div class="body_right-info_child-text">
                                            <a href="" style="text-decoration: none">Thêm thông tin</a>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        ${a.firstname}
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <div class="body_right-info_child">

                                <div class="body_right-info_child-title">
                                    <a>Tên</a>
                                </div>

                                <c:choose>
                                    <c:when test = "${a.lastname == null}">
                                        <div class="body_right-info_child-text">
                                            <a href="" style="text-decoration: none">Thêm thông tin</a>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="body_right-info_child-text">
                                            ${a.lastname}
                                        </div>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <div class="body_right-info_child">
                                <div class="body_right-info_child-title">
                                    Email
                                </div>
                                <div class="body_right-info_child-text">
                                    ${a.email}
                                </div>
                            </div>
                            <div class="body_right-info_child">
                                <div class="body_right-info_child-title">
                                    Điện thoại
                                </div>

                                <c:choose>
                                    <c:when test="${a.phone_number == null}">
                                            <div class="body_right-info_child-text">
                                                <a href="" style="text-decoration: none">Thêm thông tin</a>
                                            </div>
                                </c:when>
                                <c:otherwise>
                                    <div class="body_right-info_child-text">
                                        ${a.phone_number}
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <div class="body_right-info_child">
                            <div class="body_right-info_child-title">
                                Ngày sinh
                            </div>
                            <div class="body_right-info_child-text">
                                29/12/2001
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end body -->

    <!-- footer -->
    <div id="footer">
        <!-- container footer -->
        <div class="container_footer">
            <!-- footer logo / online shop -->
            <div class="footer_contact-logo">
                <a href="#">
                    <img class="footer_logo-resize" src="../assets/img/Logo.png" alt="logo">
                </a>
                <p class="footer_contact-logo-text">
                    Mua các mô hình, lego, trang trí tại của hàng Bot Store.
                </p>
                <div class="footer_contact-logo-onlineshop">
                    <a href="#" id="onlineshop">
                        <div class="online-shop">
                            <!-- logo shopee -->
                            <div class="shopee-tiki">
                                <img class="online-shop-logo" src="../assets/img/shopee.png" alt="shopee logo">
                            </div>
                            <!-- chữ bên cạnh logo -->
                            <div>
                                <span class="online-shop-text-top">Shopping on</span>
                                <p class="online-shop-text-bot">Shopee</p>
                            </div>
                        </div>
                    </a>
                    <a href="#" id="onlineshop">
                        <div class="online-shop">
                            <!-- logo tiki -->
                            <div class="shopee-tiki">
                                <img class="online-shop-logo" src="../assets/img/tiki.png" alt="tiki logo">
                            </div>
                            <!-- chữ bên cạnh logo -->
                            <div>
                                <span class="online-shop-text-top">Shopping on</span>
                                <p class="online-shop-text-bot">Tiki</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <!-- về chúng tôi -->
            <div class="footer_contact-about">
                <!-- title -->
                <div class="footer_contact-title">Về chúng tôi</div>
                <!-- about us link -->
                <div class="footer_contact-about-link">
                    <a class="about-link" href="#">Careers</a>
                    <a class="about-link" href="#">Của hàng của chúng tôi</a>
                    <a class="about-link" href="#">Chính sách giao hàng</a>
                    <a class="about-link" href="#">Điều khoản dịch vụ</a>
                    <a class="about-link" href="#">Chính sách quyền riêng tư</a>
                </div>
            </div>
            <!-- dịch vụ chăm sóc khách hàng -->
            <div class="footer_contact-customer">
                <!-- title -->
                <div class="footer_contact-title">Hỗ trợ khách hàng</div>
                <!-- customer care link -->
                <div class="footer_contact-about-link">
                    <a class="about-link" href="#">Trung tâm hỗ trợ</a>
                    <a class="about-link" href="#">Cách để mua hàng</a>
                    <a class="about-link" href="#">Truy cứu đơn hàng</a>
                    <a class="about-link" href="#">Hợp tác</a>
                    <a class="about-link" href="#">Hoàn trả và hoàn tiền</a>
                </div>
            </div>
            <!-- liên hệ -->
            <div class="footer_contact-contact">
                <!-- title -->
                <div class="footer_contact-title">Liên hệ chúng tôi</div>
                <!-- địa chỉ -->
                <p class="footer_contact-text">69 Thái Hà, Trung Liệt, Đống Đa, Hà Nội</p>
                <p class="footer_contact-text">Email: botstore.vn@gmail.com</p>
                <p class="footer_contact-text">Số điện thoại: +84 969420123</p>
                <div class="footer_contact-icon">
                    <a class="about-link" href="#">
                        <div class="footer_contact-icon-child">
                            <i class="fa-brands fa-facebook-f"></i>
                        </div>
                    </a>
                    <a class="about-link" href="#">
                        <div class="footer_contact-icon-child">
                            <i class="fa-brands fa-instagram"></i>
                        </div>
                    </a>
                    <a class="about-link" href="#">
                        <div class="footer_contact-icon-child">
                            <i class="fa-brands fa-twitter"></i>
                        </div>
                    </a>
                    <a class="about-link" href="#">
                        <div class="footer_contact-icon-child">
                            <i class="fa-brands fa-youtube"></i>
                        </div>
                    </a>
                    <a class="about-link" href="https://github.com/EmLongDauLung/WebDoChoi">
                        <div class="footer_contact-icon-child">
                            <i class="fa-brands fa-github"></i>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- end footer -->
</body>
</html>
