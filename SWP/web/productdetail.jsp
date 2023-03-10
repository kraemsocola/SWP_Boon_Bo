
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- <link rel="stylesheet" href="./assets/css/header_footer.css"> -->
        <link rel="stylesheet" href="./assets/css/main.css">
        <link rel="stylesheet" href="./assets/css/products.css">
        <link rel="stylesheet" href="./assets/css/allproducts.css">
        <script type="text/javascript" language="javascript" src="./main.js"></script>
        <link rel="stylesheet" href="./assets/font/fontawesome-free-6.1.1/css/all.min.css">
        <link rel="icon" href="assets/img/small_logo1.png">
        <title>BOT STORE</title>
    </head>
    <style>
        /*css ratting review form*/
        .review_box .input-rating {
            margin-bottom: 15px;
        }

        .review_box .input-rating .stars {
            display: inline-block;
            vertical-align: top;
        }

        .review_box .input-rating .stars input[type="radio"] {
            display: none;
        }

        .review_box .input-rating .stars>label {
            float: right;
            cursor: pointer;
            padding: 0px 3px;
            margin: 0px;
        }

        .review_box .input-rating .stars>label:before {
            content: "\f006";
            font-family: FontAwesome;
            color: #E4E7ED;
            -webkit-transition: 0.2s all;
            transition: 0.2s all;
        }

        .review_box .input-rating .stars>label:hover:before,
        .review_box .input-rating .stars>label:hover~label:before {
            color: #fbd600;
        }

        .review_box .input-rating .stars>input:checked label:before,
        .review_box .input-rating .stars>input:checked~label:before {
            content: "\f005";
            color: #fbd600;
        }
        /*css review display*/
        .reviews li {
            position: relative;
            padding-left: 145px;
            margin-bottom: 30px;
        }

        .reviews .review-heading {
            position: absolute;
            width: 130px;
            left: 0;
            top: 0;
            height: 70px;
        }

        .reviews .review-body {
            min-height: 70px;
        }

        .reviews .review-heading .name {
            margin-bottom: 5px;
            margin-top: 0px;
        }

        .reviews .review-heading .date {
            color: #8D99AE;
            font-size: 10px;
            margin: 0;
        }

        .reviews .review-heading .review-rating {
            margin-top: 5px;
        }

        .reviews .review-heading .review-rating>i {
            color: #E4E7ED;
        }

        .reviews .review-heading .review-rating>i.fa-star {
            color: #D10024;
        }
    </style>
    <body >
        <!-- header -->
        <div id="header">
            <!-- header top -->
            <div class="header_top">
                <div class="header_top-intro">
                    <div class="header_top-intro-support">
                        <div class="sp-child hotline">
                            <i class="fa-solid fa-phone icon-sup"></i>
                            <span>+84 969420123</span>
                        </div>
                        <div class="sp-child email">
                            <i class="fa-solid fa-at icon-sup"></i>
                            <span>botstore.vn@gmail.com</span>
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
                                <img src="./assets/img/flagVN.jpg" class="language-item_child flag">
                                <span class="language-item_child ">VietNam</span>
                            </li>
                            <li class="language_item">
                                <img src="./assets/img/la-co-vuong-quoc-anh.jpg" class="language-item_child flag">
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
                        <a href="home">
                            <img src="./assets/img/Logo.png" alt="Logo" id="img_logo">
                        </a>
                    </div>
                    <div class="search">
                        <input type="text" placeholder="T??m Ki???m..." class="input_search">
                        <div class="search-item">
                            <i class="fa-solid fa-magnifying-glass icon-search"></i>
                        </div>
                    </div>
                    <div class="login-cart">
                        <c:if test="${sessionScope.userNow.role_id==null}">

                            <a href="login" class="login_cart-item-link">
                                <div class="login-cart_item">
                                    <i class="fa-solid fa-key"></i>
                                </div>
                            </a>      

                        </c:if>
                        <c:if test="${sessionScope.userNow.role_id!=null}">
                            <a href="#" class="login_cart-item-link" >
                                <div class="login-cart_item">
                                    <i class="fa-solid fa-user"></i>
                                </div>
                            </a>    

                        </c:if>

                        <a href="cart.html" class="login_cart-item-link">
                            <div class="login-cart_item">
                                <i class="fa-solid fa-bag-shopping"></i>
                            </div>
                        </a>
                        <c:if test="${sessionScope.userNow.role_id!=null}">
                            <a href="logout" class="login_cart-item-link">
                                <div class="login-cart_item">
                                    <i class="fa-solid fa-right-from-bracket"></i>
                                </div>
                            </a>    

                        </c:if>
                    </div>
                </div>
                <!-- end header mid top -->
                <!-- header mid bot -->
                <div class="mid-bot">
                    <!-- menu left -->
                    <button class="menu_left">
                        <i class="fa-solid fa-bars icon_list"></i>
                        Danh m???c s???n ph???m
                        <div class="menu_left-child">
                            <ul>
                                <li class="menu_left-item">
                                    M?? h??nh xe h??i
                                </li>
                                <li class="menu_left-item">
                                    M?? h??nh Lego
                                </li>
                                <li class="menu_left-item">
                                    <div class="menu_left-item-title">
                                        <div class="menu_left-item-title-child">M?? h??nh phim</div>
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
                                    M?? h??nh Transformer
                                </li>
                                <li class="menu_left-item">
                                    <div class="menu_left-item-title">
                                        <div class="menu_left-item-title-child">M?? h??nh anime</div>
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
                                    M?? h??nh Figger
                                </li>
                                <li class="menu_left-item">
                                    <div class="menu_left-item-title">
                                        <div class="menu_left-item-title-child">M?? h??nh kh??c</div>
                                        <i class="fa-solid fa-angle-right icon_arrow-menulv2"></i> 
                                    </div>
                                    <div class="menu_left-item-lv2">
                                        <ul>
                                            <li class="menu_left-item-child">M?? h??nh c??y mini</li>
                                            <li class="menu_left-item-child">M?? h??nh trang tr??</li>
                                            <li class="menu_left-item-child">M?? h??nh PC</li>
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
                            <a class="link_decor_remover hover-link" href="#">Trang ch???</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="#">H??ng m???i</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="#">Th????ng hi???u</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="./src/oder.html">????n h??ng</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="./src/profile_info.html">Trang c?? nh??n</a>
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


        <!--        <form action="pdetail" method="post" id="myform">
                    <input type="hidden" name="cid" value="${p.category_id}" readonly="readonly" />
                </form>-->

        <c:set value="${requestScope.detail}" var="pd"/>
        <c:set value="${requestScope.product}" var="p"/>

        <div id="body">
            <div class="body_container">
                <ul class="breadcrumb">
                    <li><a href="home">Home</a></li>
                    <li><a href="listproduct?cid=${p.category_id}">${cate.name}</a></li>
                    <li>${p.title}</li>
                </ul>

                <div class="body_container-item view_infoproducts">
                    <div class="info_products-left">
                        <div class="info_products-left-top">
                            <img src="${p.thumbnail}" id="img_products_big">
                        </div>
                        <div class="info_products-left-bot">
                            <% int i =1; %>
                            <c:forEach items="${requestScope.listgallery}" var="gl" >

                                <img src="${gl.thumbnail}" class="img_products-small" onclick="img_product<%=i%>()">
                                <%i++;%>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="info_products-right">
                        <div class="info_product-right-child">
                            <div class="info_products-right-item">
                                <span class="info_products-right-title">${p.title}</span>
                            </div>

                            <div class="info_products-right-item">
                                <span>Dung t??ch : </span>
                                <c:forEach items="${requestScope.size}" var="s">
                                    <button style="padding: 3px 6px;
                                            list-style: none;
                                            border-radius: 6px;
                                            cursor: pointer;
                                            background-color: #eeeeee;"><a style="text-decoration: none; color: #000000;" href="pdetail?id=${param.id}&sid=${s.id}&gid=${p.gender_id}">${s.value}</a></button>
                                    </c:forEach>

                            </div>
                            <c:set value="${requestScope.gender}" var="g"/>






                            <div class="info_products-right-item">
                                <span>Gi???i t??nh ph?? h???p:</span>
                                <span class="info_products-right-brand">${g.name}</span>

                            </div>
                            <div class="info_products-right-item">
                                <span class="info_products-right-price">${pd.price_out}??</span> <br>
                                <div class="quantity-area clearfix" style="margin-bottom: -25px" >
                                    <input type="button" value="-" id="minus" onclick="minus()" class="qty-btn">
                                    <input type="text" id="quantity"  name="quantity" value="1"  class="quantity-selector">
                                    <input type="button" value="+" id="plus" onclick="plus()" class="qty-btn">
                                </div>
                            </div>

                            <form action="" method="post" name="fo">
                                <div  style="margin-top: 70px">
                                    <button class="info_producst-right-add info_products-right-item" onclick="add('${p.id}', '${param.sid}')" >Th??m v??o gi???</button>
                                </div>
                            </form>






                        </div>
                        <hr class="decoration_top-right-products">
                        <div class="info_products-right-item view_productsdetails">
                            <span class="info_products-right-title">M?? t???</span>
                            <span>${p.description}</span>
                        </div>
                        <hr class="decoration_top-right-products">
                        <div class="info_products-right-item view_policy">
                            <span class="info_products-right-title">Ch??nh s??ch h??? tr???</span>
                            <span>
                                <i class="fa-solid fa-check icon_check-policy"></i>
                                ?????i tr??? mi???n ph?? n???u c?? l???i t??? nh?? s???n xu???t
                            </span>
                            <span>
                                <i class="fa-solid fa-check icon_check-policy"></i>
                                Ki???m tra h??ng tr?????c khi thanh to??n
                            </span>
                            <span>
                                <i class="fa-solid fa-check icon_check-policy"></i>
                                Mi???n ph?? v???n chuy???n
                            </span>
                        </div>
                    </div>
                </div>
                <!--display  comment-->
                <c:if test="${listF.size()>0}">
                    <div class="body_container-item products_cmt-detail">
                        <div class="products_tab">
                            <button class="products-item" id="products-item-cmt" onclick="op_comment()">
                                Nh???n x??t
                            </button>
                        </div>
                        <div class="products_contents">
                            <div class="products_cmt" id="product_contentcomment">
                                <c:forEach items="${listF}" var="f">
                                    <div class="products_cmt-item">
                                        <div class="products_cmt-top">
                                            <img src="./assets/img/frog (5).png" class="img_avatar-user">
                                            <div class="user_rated">
                                                <span class="user_rated-name">${f.user.username}</span>
                                                <div>
                                                    <span>
                                                        <c:forEach  begin="1" end="${f.rating}">
                                                            <i class="fa-solid fa-star icon_star"></i>
                                                        </c:forEach>
                                                    </span>
                                                    <span class="user_rated-cmttime">${f.created_at}</span>
                                                </div>
                                            </div>
                                        </div>    
                                        <div class="products_cmt-bot">
                                            <p>${f.note}
                                            </p>
                                        </div>
                                    </div> 
                                </c:forEach> 
                            </div>
                        </div>
                    </div>
                </c:if>

                <!--end display comment-->
                <div>
                    <div class="body_container-item user_ratingproducts">
                        <div class="user_ratingproducts-title">
                            ????nh gi?? c???a b???n cho s???n ph???m n??y
                        </div>
                        <form action="pdetail" method="post">
                            <c:set value="${product}" var="p"></c:set>
                            <input type="hidden" name="id" value="${p.id}">
                            <input type="hidden" name="sid" value="${sid}">
                            <input type="hidden" name="gid" value="${gid}">
                            <div class="user_ratingproducts-content">
                                <div class="review_box">
                                    <div class="input-rating">
                                        <span>X???p h???ng s???n ph???m: </span>
                                        <div class="stars">
                                            <input id="star5" name="rating" required="" value="5" type="radio"><label
                                                for="star5"></label>
                                            <input id="star4" name="rating" required="" value="4" type="radio"><label
                                                for="star4"></label>
                                            <input id="star3" name="rating" required="" value="3" type="radio"><label
                                                for="star3"></label>
                                            <input id="star2" name="rating" required="" value="2" type="radio"><label
                                                for="star2"></label>
                                            <input id="star1" name="rating" required="" value="1" type="radio"><label
                                                for="star1"></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="user_ratingproducts-cmt">
                                    <span>Nh???n x??t c???a b???n</span> <br>
                                    <textarea name="review" id="editor2" rows="4" cols="50" class="user_ratingproducts-cmt-child input"></textarea>
                                </div>
                                <button class="btn_submit">G???i</button>
                            </div>
                        </form>    
                    </div>
                </div>     
                <div class="body_container-item products_same">
                    <div class="products_same-title">
                        S???n ph???m t????ng t???
                    </div>
                    <div class="products_same-child">

                        <c:forEach items="${requestScope.relativeproducts}" var="rp">
                            <form action="pdetail" method="post">
                                <input type="hidden" value="1" name="sid"/>
                                <input type="hidden" value="${rp.id}" name="id"/>
                                <c:set value="${requestScope.detail}" var="lgd"/>
                            </form>

                            <div class="products">
                                <a href="pdetail?id=${rp.id}&sid=1&gid=${rp.gender_id}">
                                    <img src="${rp.thumbnail}" alt="" class="img_products">
                                </a>
                                <div class="describe_products">
                                    <div class="ratings_products">
                                        <span>${rp.title}</span>
                                        <span>
                                            <i class="fa-solid fa-star icon_star"></i>
                                            <i class="fa-solid fa-star icon_star"></i>
                                            <i class="fa-solid fa-star icon_star"></i>
                                            <i class="fa-solid fa-star icon_star"></i>
                                            <i class="fa-solid fa-star icon_star"></i>
                                        </span>
                                        <div>
                                            <span class="info_price">${lgd.price_out} ??</span>
                                        </div>
                                    </div>
                                    <div class="add_like_products">
                                        <i class="fa-regular fa-heart icon_heart"></i>
                                        <button class="btn_deal-item"><i class="fa-solid fa-plus"></i></button>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
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
                        <img class="footer_logo-resize" src="./assets/img/Logo.png" alt="logo">
                    </a>
                    <p class="footer_contact-logo-text">
                        Mua c??c m?? h??nh, lego, trang tr?? t???i c???a h??ng Bot Store.
                    </p>
                    <div class="footer_contact-logo-onlineshop">
                        <a href="#" id="onlineshop">
                            <div class="online-shop">
                                <!-- logo shopee -->
                                <div class="shopee-tiki">
                                    <img class="online-shop-logo" src="./assets/img/shopee.png" alt="shopee logo">
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
                                    <img class="online-shop-logo" src="./assets/img/tiki.png" alt="tiki logo">
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
                        <a class="about-link" href="">
                            <div class="footer_contact-icon-child">
                                <i class="fa-brands fa-github"></i>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript">

           



            var img_products = [
            <c:forEach items="${requestScope.listgallery}" var="gl">
                "${gl.thumbnail}",
            </c:forEach>
            ];

            var dem = 0;

            function img_product1() {
                dem = 0;
                var img_products_big = document.getElementById("img_products_big");
                img_products_big.src = img_products[dem];
            }

            function img_product2() {
                dem = 1;
                var img_products_big = document.getElementById("img_products_big");
                img_products_big.src = img_products[dem];
            }

            function img_product3() {
                dem = 2;
                var img_products_big = document.getElementById("img_products_big");
                img_products_big.src = img_products[dem];
            }

            function img_product4() {
                dem = 3;
                var img_products_big = document.getElementById("img_products_big");
                img_products_big.src = img_products[dem];
            }

            function img_product5() {
                dem = 4;
                var img_products_big = document.getElementById("img_products_big");
                img_products_big.src = img_products[dem];
            }
            function add(id, size) {
                var q = document.getElementById("quantity").value;
                document.fo.action = "buy?pid=" + id + "&sid=" + size + "&quantity=" + q;
                document.fo.submit();
            }
            var count = 1;
            var countEl = document.getElementById("quantity");
            function plus() {
                count++;
                countEl.value = count;
            }
            function minus() {
                if (count > 1) {
                    count--;
                    countEl.value = count;
                }
            }

            CKEDITOR.replace('editor2');

        </script>
        <!-- end footer -->
    </body>
</html>