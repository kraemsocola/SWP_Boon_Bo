<%-- 
    Document   : change_profile
    Created on : Feb 12, 2023, 1:28:53 PM
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
        <style>
            .lbtentt{
                color: rgba(85,85,85,.8);
            }
            .bgtt{
                background-color: #f9f9f9;
                width: 1000px;
                height: 550px;
                margin-left: 260px;
            }
            .bgttr{
                width: 650px;
                height: 400px;
                margin-left: 60px;
                margin-top: 20px;
                border: 1px;
                border-style: groove;
                border-color: #f3f3f3;
            }
            .divtt{
                width: 80%;
                margin-left: 50px;
                margin-top: 20px;
                display: flex
            }
            .inputtt{
                margin-left: 30px;
                width: 350px;
                height: 40px;
                border-radius: 5px;
                border: 2px solid #dbe4d8;
                padding: 0 10px;
            }

            .btnform{
                width: 100px;
                height: 40px;
                margin-left: 182px;
                margin-top: 20px;
                background-color: #dbe4d8;
                border: none;
                border-radius: 2px;
            }
            .lbhoso{
                font-size: 1.125rem;
                font-weight: 500;
                margin-left: 80px;
                margin-top: 20px;
                color: #333;
            }

            .message{
                margin-left: 90px;
                margin-top: 25px;
                color: #397222;
            }

            .image{
                margin-left: 80px;
                margin-top: 30px;
            }
            img{
                width: 200px;
                height: 200px;
                margin-right: 40px;
                margin-top: 40px;
            }
            .back{
                width: 150px;
                height: 30px;
                background-color: #dbe4d8;
                text-align: center;
                border-radius: 5px;
                display: flex;
                margin-left: 30px;
            }

            .back i{
                margin-top: 6px;
                margin-left: 2px;
            }
            .back a{
                text-decoration: none;
                margin-left: 5px;
                margin-top: 2px;
            }
            .back h4{


            }

            .back:hover {
                background: #45a049;
            }

        </style>
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
                            <span>H??? tr??? tr???c tuy???n 24/7</span>
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
                        <input type="text" placeholder="T??m Ki???m..." class="input_search">
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
                <div class="back">
                    <i class="fa fa-angle-double-left"></i>
                    <a href="profile"><h4>V??? trang c?? nh??n</h4></a>
                </div>
            </div>
            <!-- end mid -->
        </div>
        <!-- end header -->

        <!-- body -->
        <div id="body">
            <!-- container -->
            <c:set var="a" value="${requestScope.userNow}"></c:set>


                <div class="bgtt">
                    <div style="float: left">
                        <div class="lbhoso">
                            <label>H??? s?? c???a t??i</label>
                        </div>

                        <div style="width: 200px; height: auto">
                            <div class="bgttr">

                                <form action="changeprofile" method="post">
                                    <div class="divtt">
                                        <label style="color: rgba(85,85,85,.8);"> T??n ????ng nh???p</label>
                                        <label style="margin-left: 30px">${a.username} </label>
                                    <a style="margin-left: 120px" href="changepassword">?????i m???t kh???u</a>
                                </div>
                                <div class="divtt"style="margin-left: 115px">
                                    <label class="lbtentt"> Email</label>
                                    <label style="margin-left: 33px">${a.email} </label>
                                </div>
                                <div  class="divtt"style="margin-left: 130px">
                                    <label class="lbtentt">H???</label>
                                    <c:choose>
                                        <c:when test="${a.firstname == null}">
                                            <input class="inputtt" name="firstname" placeholder="   ( Th??m h??? )"> 
                                        </c:when>
                                        <c:otherwise>
                                            <input class="inputtt" name="firstname" value="${a.firstname}"> 
                                        </c:otherwise>
                                    </c:choose>
                                </div>

                                <div class="divtt"style="margin-left: 127px">
                                    <label class="lbtentt">T??n</label>
                                    <c:choose>
                                        <c:when test="${a.lastname == null}">
                                            <input class="inputtt" name="lastname"placeholder="   ( Th??m t??n )"> 
                                        </c:when>
                                        <c:otherwise>
                                            <input class="inputtt" name="lastname" value="${a.lastname}"> 
                                        </c:otherwise>
                                    </c:choose>
                                </div>

                                <div class="divtt"style="margin-left: 58px">
                                    <label class="lbtentt">S??? ??i???n tho???i</label>
                                    <c:choose>
                                        <c:when test="${a.phone_number == null}">
                                            <input class="inputtt" name="phone_number" placeholder="   ( Th??m s??? ??i???n tho???i )"> 
                                        </c:when>
                                        <c:otherwise>
                                            <input class="inputtt" name="phone_number" value="${a.phone_number}"> 
                                        </c:otherwise>
                                    </c:choose>
                                </div>

                                <div class="divtt"style="margin-left: 103px">
                                    <label class="lbtentt">?????a ch???</label>
                                    <c:choose>
                                        <c:when test="${a.address == null}">
                                            <input class="inputtt" name="address" placeholder="   ( Th??m s??? ?????a ch??? )"> 
                                        </c:when>
                                        <c:otherwise>
                                            <input class="inputtt" name="address" value="${a.address}"> 
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div style="display: flex">
                                    <button type="submit" class="btnform">L??u th??ng tin</button>
                                    <label class="message">${requestScope.message}</label>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
                <div style="float: right">
                    <div class="image">
                        <img src="./assets/img/frog (7).png" alt="con ech">
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
                Mua c??c m?? h??nh, lego, trang tr?? t???i c???a h??ng Bot Store.
            </p>
            <div class="footer_contact-logo-onlineshop">
                <a href="#" id="onlineshop">
                    <div class="online-shop">
                        <!-- logo shopee -->
                        <div class="shopee-tiki">
                            <img class="online-shop-logo" src="../assets/img/shopee.png" alt="shopee logo">
                        </div>
                        <!-- ch??? b??n c???nh logo -->
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
                        <!-- ch??? b??n c???nh logo -->
                        <div>
                            <span class="online-shop-text-top">Shopping on</span>
                            <p class="online-shop-text-bot">Tiki</p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <!-- v??? ch??ng t??i -->
        <div class="footer_contact-about">
            <!-- title -->
            <div class="footer_contact-title">V??? ch??ng t??i</div>
            <!-- about us link -->
            <div class="footer_contact-about-link">
                <a class="about-link" href="#">Careers</a>
                <a class="about-link" href="#">C???a h??ng c???a ch??ng t??i</a>
                <a class="about-link" href="#">Ch??nh s??ch giao h??ng</a>
                <a class="about-link" href="#">??i???u kho???n d???ch v???</a>
                <a class="about-link" href="#">Ch??nh s??ch quy???n ri??ng t??</a>
            </div>
        </div>
        <!-- d???ch v??? ch??m s??c kh??ch h??ng -->
        <div class="footer_contact-customer">
            <!-- title -->
            <div class="footer_contact-title">H??? tr??? kh??ch h??ng</div>
            <!-- customer care link -->
            <div class="footer_contact-about-link">
                <a class="about-link" href="#">Trung t??m h??? tr???</a>
                <a class="about-link" href="#">C??ch ????? mua h??ng</a>
                <a class="about-link" href="#">Truy c???u ????n h??ng</a>
                <a class="about-link" href="#">H???p t??c</a>
                <a class="about-link" href="#">Ho??n tr??? v?? ho??n ti???n</a>
            </div>
        </div>
        <!-- li??n h??? -->
        <div class="footer_contact-contact">
            <!-- title -->
            <div class="footer_contact-title">Li??n h??? ch??ng t??i</div>
            <!-- ?????a ch??? -->
            <p class="footer_contact-text">69 Th??i H??, Trung Li???t, ?????ng ??a, H?? N???i</p>
            <p class="footer_contact-text">Email: botstore.vn@gmail.com</p>
            <p class="footer_contact-text">S??? ??i???n tho???i: +84 969420123</p>
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

    <!-- end footer -->
</body>
</html>

