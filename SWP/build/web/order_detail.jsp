<%-- 
    Document   : order_detail
    Created on : Jan 31, 2023, 4:15:32 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/header_footer.css">
    <link rel="stylesheet" href="./assets/css/profile_info.css">
    <link rel="stylesheet" href="./assets/css/order_info.css">
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
                    <div class="login-cart_item">
                        <!-- test -->
                        <a href="../src/login.html" class="login_cart-item-link">
                            <i class="fa-solid fa-user"></i>
                        </a>
                    </div>
                    <div class="login-cart_item">
                        <a href="../src/cart.html" class="login_cart-item-link">
                            <i class="fa-solid fa-bag-shopping"></i>
                        </a>
                    </div>
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
                    <a href="./oder.html" class="body_left-dashboard_child" id="current_page">
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
                    <a href="../src/profile_info.html" class="body_left-dashboard_child">
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
                            <i class="fa-solid fa-cart-shopping  body_right-title_icon"></i>
                            <p id="body_right-title">Chi tiết đơn hàng</p>
                        </div>
                        <a class="body_right-edit_button" href="#">
                            Đặt lại đơn hàng
                        </a>
                    </div>
                    <!-- content -->
                    <div class="body_right-order_info">
                        <div class="oders_info-child">
                            <div class="oders_info-status">
                                <div class="oders_info-status-circle statusbar_active">
                                    <div class="check_status">
                                        <i class="fa-solid fa-check"></i>
                                    </div>
                                    <div>
                                        <i class="fa-solid fa-box"></i>
                                    </div>
                                </div>
                                <div class="statusbar statusbar_active"></div>
                                <div class="oders_info-status-circle statusbar_active">
                                    <i class="fa-solid fa-truck"></i>
                                </div>
                                <div class="statusbar"></div>
                                <div class="oders_info-status-circle">
                                    <i class="fa-solid fa-truck-ramp-box"></i>
                                </div>
                            </div>
                            <div class="oders_info-estimated">
                                <div id="oders_info-estimated">
                                    Ngày giao dự kiến 
                                    <b>10/10/2022</b>
                                </div>
                            </div>
                        </div>
                        <!-- something i dont know -->
                        <div class="oders_info-child details">
                            <div>
                                <div class="oders_info-details">
                                    <div>
                                        <span>Mã vận đơn: </span>
                                        2835070
                                    </div>
                                    <div>
                                        <span>Đơn vị vận chuyển: </span>
                                        Giaohangnhanh
                                    </div>
                                    <div>
                                        <span>Ngày đặt: </span>
                                        10/6/2022
                                    </div>
                                    <div>
                                        <span>Ngày giao: </span>
                                        12/6/2022
                                    </div>
                                </div>
                                <div class="oders_info-description">
                                    <div class="oders_info-product">
                                        <div class="oders_info-product-child">
                                            <div>
                                                <img src="../assets/img/Albed2.jpg" alt="" class="product_img">
                                            </div>
                                            <div class="product-name">
                                                <span class="product-name-title">Mô hình Albedo</span>
                                                <span>$250 x 1</span>
                                            </div>
                                        </div>
                                        <div>
                                            <span class="description">Mô tả: tỉ lệ 1:20</span>
                                        </div>
                                        <div>
                                            <span class="review">Viết nhận xét</span>
                                        </div>
                                    </div>
                                    <!--  -->
                                    <div class="oders_info-product">
                                        <div class="oders_info-product-child">
                                            <div>
                                                <img src="../assets/img/Figure DARLING IN THE FRANXX - ZERO TWO (2).jpeg" alt="Albedo" class="product_img">
                                            </div>
                                            <div class="product-name">
                                                <span class="product-name-title">Mô hình Zero Two</span>
                                                <span>$299 x 1</span>
                                            </div>
                                        </div>
                                        <div>
                                            <span class="description">Mô tả: tỉ lệ 1:20</span>
                                        </div>
                                        <div>
                                            <span class="review">Viết nhận xét</span>
                                        </div>
                                    </div>
                                    <!--  -->
                                    <div class="oders_info-product">
                                        <div class="oders_info-product-child">
                                            <div>
                                                <img src="../assets/img/kaneki (2).jpg" alt="" class="product_img">
                                            </div>
                                            <div class="product-name">
                                                <span class="product-name-title">Mô hình Kaneki Ken</span>
                                                <span>$100 x 1</span>
                                            </div>
                                        </div>
                                        <div>
                                            <span class="description">Mô tả: tỉ lệ 1:20</span>
                                        </div>
                                        <div>
                                            <span class="review">Viết nhận xét</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- detail order(adress and billing,etc..) -->
                        <div class="biling">
                            <!-- left -->
                            <div class="biling_left">
                                <p class="biling_left-title">Địa chỉ giao hàng</p>
                                <p class="biling_left-address">326 Phạm Văn Đồng, Mai Dịch, Cầu Giấy, Hà Nội</p>
                            </div>
                            <!-- right -->
                            <div class="biling_right">
                                <div class="biling_right-1">
                                    <p class="biling_right-title">Thành tiền</p>
                                    <div class="biling_right-something">
                                        <div class="biling_right-something-oke">
                                            <p>Tạm tính:</p>
                                            <p>$649</p>
                                        </div>
                                        <div>
                                            <p>Phí vận chuyển:</p>
                                            <p>$20</p>
                                        </div>
                                        <div>
                                            <p>Giảm giá:</p>
                                            <p>-$50</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="biling_right-something">
                                    <div>
                                        <p class="total">Tổng cộng:</p>
                                        <p>$619</p>
                                    </div>
                                    <p>Trả bằng thẻ ngân hàng</p>
                                </div>
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
