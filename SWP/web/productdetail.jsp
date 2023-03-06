
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
        <title>Boon Bo</title>
    </head>
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
                            <span>boonbo@gmail.com</span>
                        </div>
                        <div class="sp-child question">
                            <i class="fa-solid fa-headset icon-sup"></i>
                            <span>Hỗ trợ trực tuyến 24/7</span>
                        </div>
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
                        <input type="text" placeholder="Tìm Kiếm..." class="input_search">
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
                    
                    <!-- end menu left -->
                    <!-- menu right -->
                    <ul class="menu_right">
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="#">Trang chủ</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="#">Hàng mới</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="#">Thương hiệu</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="./src/oder.html">Đơn hàng</a>
                        </li>
                        <li class="menu_right-item">
                            <a class="link_decor_remover hover-link" href="./src/profile_info.html">Trang cá nhân</a>
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
                                <span>Dung tích : </span>
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
                                <span>Giới tính phù hợp:</span>
                                <span class="info_products-right-brand"> 
                                    <a href="listproduct?gid=${g.id}" style="text-decoration: none; color: black">${g.name}</a>
                                </span>

                            </div>

                            <div class="info_products-right-item">
                                <span class="info_products-right-price">${pd.price_out}đ</span> <br>
                                <div class="quantity-area clearfix" style="margin-bottom: -25px" >
                                    <input type="button" value="-" id="minus" onclick="minus()" class="qty-btn">
                                    <input type="text" id="quantity"  name="quantity" value="1"  class="quantity-selector">
                                    <input type="button" value="+" id="plus" onclick="plus()" class="qty-btn">
                                </div>
                            </div>

                            <form action="" method="post" name="fo">
                                <div  style="margin-top: 70px">
                                    <button class="info_producst-right-add info_products-right-item" onclick="add('${p.id}', '${param.sid}')" >Thêm vào giỏ</button>
                                </div>
                            </form>






                        </div>
                        <hr class="decoration_top-right-products">
                        <div class="info_products-right-item view_productsdetails">
                            <span class="info_products-right-title">Mô tả</span>
                            <span>${p.description}</span>
                        </div>
                        <hr class="decoration_top-right-products">
                        <div class="info_products-right-item view_policy">
                            <span class="info_products-right-title">Chính sách hỗ trợ</span>
                            <span>
                                <i class="fa-solid fa-check icon_check-policy"></i>
                                Đổi trả miễn phí nếu có lỗi từ nhà sản xuất
                            </span>
                            <span>
                                <i class="fa-solid fa-check icon_check-policy"></i>
                                Kiểm tra hàng trước khi thanh toán
                            </span>
                            <span>
                                <i class="fa-solid fa-check icon_check-policy"></i>
                                Miễn phí vận chuyển
                            </span>
                        </div>
                    </div>
                </div>
                <div class="body_container-item products_cmt-detail">
                    <div class="products_tab">
                        <button class="products-item" id="products-item-cmt" onclick="op_comment()">
                            Nhận xét
                        </button>

                    </div>
                    <div class="products_contents">
                        <div class="products_cmt" id="product_contentcomment">
                            <div class="products_cmt-item">
                                <div class="products_cmt-top">
                                    <img src="./assets/img/frog (5).png" class="img_avatar-user">
                                    <div class="user_rated">
                                        <span class="user_rated-name">Bùi Hạ Long</span>
                                        <div>
                                            <span>
                                                <i class="fa-solid fa-star icon_star"></i>
                                                <i class="fa-solid fa-star icon_star"></i>
                                                <i class="fa-solid fa-star icon_star"></i>
                                                <i class="fa-solid fa-star icon_star"></i>
                                                <i class="fa-solid fa-star icon_star"></i>
                                            </span>
                                            <span class="user_rated-cmttime">1 tuần trước</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="products_cmt-bot">
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Commodi enim, voluptatum magni rem reprehenderit natus sit repellat amet aspernatur omnis culpa voluptate tempora. 
                                        Consequuntur distinctio, labore reprehenderit inventore assumenda aliquam?
                                    </p>
                                </div>
                            </div>
                            <div class="products_cmt-item">
                                <div class="products_cmt-top">
                                    <img src="./assets/img/frog (2).png" class="img_avatar-user">
                                    <div class="user_rated">
                                        <span class="user_rated-name">Đỗ Tú Linh</span>
                                        <div>
                                            <span>
                                                <i class="fa-solid fa-star icon_star"></i>
                                                <i class="fa-regular fa-star icon_star"></i>
                                                <i class="fa-regular fa-star icon_star"></i>
                                                <i class="fa-regular fa-star icon_star"></i>
                                                <i class="fa-regular fa-star icon_star"></i>
                                            </span>
                                            <span class="user_rated-cmttime">2 ngày trước</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="products_cmt-bot">
                                    <p>
                                        Mô hình chất lượng kém quá rate 1 sao.
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="body_container-item user_ratingproducts">
                    <div class="user_ratingproducts-title">
                        Đánh giá của bạn cho sản phẩm này
                    </div>
                    <div class="user_ratingproducts-content">
                        <div class="user_ratingproducts-star">
                            <span class="user_ratingproducts-star-title">Xếp hạng sản phẩm</span>
                            <span>
                                <i class="fa-regular fa-star icon_star"></i>
                                <i class="fa-regular fa-star icon_star"></i>
                                <i class="fa-regular fa-star icon_star"></i>
                                <i class="fa-regular fa-star icon_star"></i>
                                <i class="fa-regular fa-star icon_star"></i>
                            </span>
                        </div>
                        <div class="user_ratingproducts-cmt">
                            <span>Nhận xét của bạn</span> <br>
                            <textarea rows="4" cols="50" class="user_ratingproducts-cmt-child">
                            </textarea>
                        </div>
                        <button class="btn_submit">Gửi</button>
                    </div>
                </div>
                <div class="body_container-item products_same">
                    <div class="products_same-title">
                        Sản phẩm tương tự
                    </div>
                    <div class="products_same-child">
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
                                            <span class="info_price">${rp.sizeproduct.price_out} đ</span>
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
                        Mua các mô hình, lego, trang trí tại của hàng Bot Store.
                    </p>
                    <div class="footer_contact-logo-onlineshop">
                        <a href="#" id="onlineshop">
                            <div class="online-shop">
                                <!-- logo shopee -->
                                <div class="shopee-tiki">
                                    <img class="online-shop-logo" src="./assets/img/shopee.png" alt="shopee logo">
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
                                    <img class="online-shop-logo" src="./assets/img/tiki.png" alt="tiki logo">
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

        <script type="text/javascript">

            function add(id, size) {
                var quantity = document.fo.quantity.value;
                document.fo.action = "buy?pid=" + id + "&sid=" + size + "&quantity=" + quantity;
                document.fo.submit();
            }




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



        </script>
        <!-- end footer -->
    </body>

    <!--     <script type="text/javascript">
                importScripts('https://www.gstatic.com/recaptcha/releases/gEr-ODersURoIfof1hiDm7R5/recaptcha__en.js');
            </script>-->
</html>