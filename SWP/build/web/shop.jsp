<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./assets/css/header_footer.css">
        <link rel="stylesheet" href="./assets/css/main.css">
        <link rel="stylesheet" href="./assets/css/products.css">
        <link rel="stylesheet" href="./assets/css/allproducts.css">
        <script type="text/javascript" language="javascript" src="./main.js"></script>
        <link rel="stylesheet" href="./assets/font/fontawesome-free-6.1.1/css/all.min.css">
        <link rel="icon" href="./assets/img/small_logo1.png">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
        <link rel="stylesheet" href="./assets/boostrap4/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="./assets/boostrap4/js/bootstrap.min.js"/>
        <title>BOT STORE</title>
        <style>
            .mg-16{
                margin: 16px !important;

            }
            .form-control-1{
                width: 40%;
            }
            .btn-1{
                width: 100%;
            }
            .category_block li:hover {
                background-color: #696969;
            }
            .category_block li:hover a {
                color: #ffffff;
            }
            .category_block li a {
                color: #343a40;
            }
            .products{
                width: 20%;
                height: 355px;
                background-color: white;
                padding: 15px;
                box-shadow: 0px 0px 15px -8px black;
                position: relative;
                margin-left:  20px;
                margin-bottom: 20px;
            }
            .img_products{
                width: 100%;
                height: 220px;
                cursor: pointer;
                object-fit: cover;
            }
            .describe_products{
                margin-top: 5px;
                width: 100%;
                height: 100px;
                display: flex;
            }
            .ratings_products{
                width: 88%;
                height: auto;
                font-size: 14px;
                font-weight: 500;
                display: grid;
                align-content: space-around;
            }
            .add_like_products{
                width: 12%;
                height: auto;
                padding: 5px 0px;
                text-align: right;
                font-size: 25px;
                display: grid;
                align-content: space-between;
            }
            /* ================= */
            .icon_star{
                color: #ffcd4e;
            }
            .info_price{
                color: #72af5c;
            }
            .oldprice{
                margin: 0 10px;
                color: #787878;
                text-decoration: line-through;
            }
            .icon_heart{
                color: #FF3366;
                cursor: pointer;
            }
            .btn_deal-item{
                border: solid 1px #72af5c;
                width: 100%;
                height: 24px;
                color: #72af5c;
            }
            .btn_deal-item:hover{
                cursor: pointer;
                background-color: #72af5c;
                color: rgb(255, 255, 255);
            }
            .fa-plus {
                position: absolute;
                bottom: 20px;
                right: 17px;
            }

            @media (min-width: 768px){
                .decor {
                    -webkit-box-flex: 0;
                    -ms-flex: 0 0 50%;
                    flex: 0 0 50%;
                    max-width: 255px;
                }
            }
        </style>
    </head>
    <body>
        <!--        Su dung usebean de goi truc tiep tu DAO  ma ko phai thong qua Servlet de set Attribute len-->
        <jsp:useBean id="categoryDAO" class="dal.CategoryDAO"></jsp:useBean>
        <jsp:useBean id="genderDAO" class="dal.GenderDAO"></jsp:useBean>
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
                            <a href="./index.html">
                                <img src="./assets/img/Logo.png" alt="Logo" id="img_logo">
                            </a>
                        </div>


                        <form action="search" method="get">
                            <div class="search">
                                <input name="txtSearch" type="text" value="${txtSearch}" placeholder="T??m Ki???m..." class="input_search">
                            <div class="search-item">
                                <button type="submit">
                                    <i class="fa-solid fa-magnifying-glass icon-search"></i>
                                </button>
                            </div>
                        </div>
                    </form>



                    <div class="login-cart">
                        <a href="login" class="login_cart-item-link">
                            <div class="login-cart_item">
                                <i class="fa-solid fa-user"></i>
                            </div>
                        </a>
                        <a href="cart" class="login_cart-item-link">
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
                            <a class="link_decor_remover hover-link" href="home">Trang ch???</a>
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
        <div id="body">
            <div class="container">
                <div class="row justify-content-end">
                    <div class=" row col-sm-9 justify-content-end">
                        <c:if test="${listP.size()>0}"><button type="button" class="btn btn-secondary mg-16">Hi???n th??? ${listP.size()}/${total} s???n ph???m</button></c:if>
                        &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;    &nbsp;  &nbsp;  &nbsp;  &nbsp;     
                        <button type="button" class="btn btn-secondary mg-16">B??n ch???y</button>
                        <button type="button" class="btn btn-secondary mg-16">M???i nh???t</button>
                    </div>
                    
                    <div class="input-group col-sm-3">
                        <form id="selectSort" action="sort" method="get">

                            <select  name="typeSort"  onchange="document.getElementById('selectSort').submit()"  class="custom-select mg-16" id="inputGroupSelect01">
                                <option selected>S???p x???p theo</option>
                                <option value="By price asc" ${typeSort.equals('By price asc')?'selected':''}   >Gi?? t??ng d???n</option>
                                <option value="By price desc" ${typeSort.equals('By price desc')?'selected':''} >Gi?? gi???m d???n</option>
                                <option value="AZ" ${typeSort.equals('AZ')?'selected':''}                       >T??n t??? A-Z</option>
                                <option value="ZA" ${typeSort.equals('ZA')?'selected':''}                       >T??n t??? Z-A</option>
                            </select>

                        </form>
                    </div>
                </div>
                <hr/>
                <div class="row">
                    <div class="col-sm-3">


                        <div class="card bg-light mb-3">
                            <div class="card-header bg-secondary text-white text-uppercase"><i class="fa fa-list"></i> Danh m???c </div>
                            <ul class="list-group category_block">
                                <c:forEach items="${categoryDAO.allCategory}" var="c">
                                    <li class="list-group-item text-white ${cateId==c.id?"active":""}"><a style="text-decoration: none" href="filter-product?cateId=${c.id}">${c.name}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                        <hr/>
                        <div class="card bg-light mb-3">
                            <div class="card-header bg-secondary text-white text-uppercase"><i class="fa fa-list"></i> Gi???i t??nh</div>
                            <ul class="list-group category_block">
                                <c:forEach items="${genderDAO.allGender}" var="g">
                                    <li class="list-group-item text-white  ${genderId==g.id?"active":""} "><a style="text-decoration: none" href="filter-product?genderId=${g.id}">${g.name}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                        <hr/>
                        <form action="searchByPrice" method="get">
                            <ul class="list-group">
                                <li class="list-group-item active text-center text-uppercase">L???c theo gi??</li>
                                <li class="list-group-item">
                                    <div class="input-group">
                                        <input type="number" name="from" maxlength="13" class="form-control form-control-1" placeholder="??? T???" value="${from}">
                                        <input type="number" name="to"   maxlength="13" class="form-control form-control-1" placeholder="??? ?????N" value="${to}">
                                    </div>
                                    <h6 style="text-align: center; color: red">${msg}</h6>
                                </li>
                                <li class="list-group-item"><button type="submit" class="btn btn-outline-success btn-1">OK</button></li>
                            </ul>  
                        </form>   
                        <hr/>        
                    </div>
                    <div class="col-sm-9 row align-content-start">
                        <h3>${message}</h3>
                        <c:if test="${listP.size() != 0}">
                            <c:forEach items="${listP}" var="o">
                                <div class=" col-12  decor products ">
                                    <a href="pdetail?id=${o.id}&sid=${o.sizeproduct.sid}&gid=${o.gender.id}">
                                        <img src="${o.thumbnail}" alt="" class="img_products">
                                    </a>
                                    <div class="describe_products">
                                        <div class="ratings_products">
                                            <span>${o.title}</span>
                                            <span>
                                                <i class="fa-solid fa-star icon_star"></i>
                                                <i class="fa-solid fa-star icon_star"></i>
                                                <i class="fa-solid fa-star icon_star"></i>
                                                <i class="fa-solid fa-star icon_star"></i>
                                            </span>
                                            <div>
                                             <c:if test="${o.discount.value!=0}">
                                                    <span class="info_price">${o.sizeproduct.price_out- o.sizeproduct.price_out*o.discount.value/100}???</span>
                                                    <span class="oldprice">${o.sizeproduct.price_out}???
					</span>
                                                </c:if>
                                                <c:if test="${o.discount.value==0}">
                                                    <span class="info_price">${o.sizeproduct.price_out}???</span>
                                                </c:if>
                                            </div>
                                        </div>
                                        <div class="add_like_products">
                                            <i class="fa-regular fa-heart icon_heart"></i>
                                            <button class="btn_deal-item"><i class="fa-solid fa-plus"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:if>
                    </div>
                </div>
                <!--paging-->
                <div class="row justify-content-center">
                    <c:if test="${maxPage>1}">
                        <div class="paging mt-5">
                            <nav aria-label="Page navigation example">
                                <c:if test="${cateId == null && genderId==null && txtSearch==null && fromValue==null && toValue==null && typeSort==null}">
                                    <ul class="pagination ">
                                        <c:if test="${backPage>0}">
                                            <li class="page-item">
                                                <a class="page-link" href="shop?pageIndex=${backPage}" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <c:forEach begin="1" end="${maxPage}" step="1" var="i">
                                            <li class="page-item ${i==pageIndex?"active":""}"><a class="page-link" href="shop?pageIndex=${i}">${i}</a></li>
                                            </c:forEach>        
                                            <c:if test="${nextPage<maxPage+1}">
                                            <li class="page-item">
                                                <a class="page-link" href="shop?pageIndex=${nextPage}" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                    <span class="sr-only">Next</span>
                                                </a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </c:if>

                                <c:if test="${txtSearch!=null}">
                                    <ul class="pagination ">
                                        <c:if test="${backPage>0}">
                                            <li class="page-item">
                                                <a class="page-link" href="search?pageIndex=${backPage}&txtSearch=${txtSearch}" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <c:forEach begin="1" end="${maxPage}" step="1" var="i">
                                            <li class="page-item ${i==pageIndex?"active":""}"><a class="page-link" href="search?pageIndex=${i}&txtSearch=${txtSearch}">${i}</a></li>
                                            </c:forEach>        
                                            <c:if test="${nextPage<maxPage+1}">
                                            <li class="page-item">
                                                <a class="page-link" href="search?pageIndex=${nextPage}&txtSearch=${txtSearch}" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                    <span class="sr-only">Next</span>
                                                </a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </c:if>

                                <c:if test="${typeSort !=null}">
                                    <ul class="pagination ">
                                        <c:if test="${backPage>0}">
                                            <li class="page-item">
                                                <a class="page-link" href="sort?pageIndex=${backPage}&typeSort=${typeSort}"aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <c:forEach begin="1" end="${maxPage}" step="1" var="i">
                                            <li class="page-item ${i==pageIndex?"active":""}"><a class="page-link" href="sort?pageIndex=${i}&typeSort=${typeSort}">${i}</a></li>
                                            </c:forEach>        
                                            <c:if test="${nextPage<maxPage+1}">
                                            <li class="page-item">
                                                <a class="page-link" href="sort?pageIndex=${nextPage}&typeSort=${typeSort}" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                    <span class="sr-only">Next</span>
                                                </a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </c:if>

                                <c:if test="${toValue !=null}">
                                    <ul class="pagination ">
                                        <c:if test="${backPage>0}">
                                            <li class="page-item">
                                                <a class="page-link" href="searchByPrice?pageIndex=${backPage}&from=${fromValue}&to=${toValue}" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <c:forEach begin="1" end="${maxPage}" step="1" var="i">
                                            <li class="page-item ${i==pageIndex?"active":""}"><a class="page-link" href="searchByPrice?pageIndex=${i}&from=${fromValue}&to=${toValue}">${i}</a></li>
                                            </c:forEach>        
                                            <c:if test="${nextPage<maxPage+1}">
                                            <li class="page-item">
                                                <a class="page-link" href="searchByPrice?pageIndex=${nextPage}&from=${fromValue}&to=${toValue}" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                    <span class="sr-only">Next</span>
                                                </a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </c:if>

                                <c:if test="${cateId != null}">
                                    <ul class="pagination ">
                                        <c:if test="${backPage>0}">
                                            <li class="page-item">
                                                <a class="page-link" href="filter-product?pageIndex=${backPage}&cateId=${cateId}"  aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <c:forEach begin="1" end="${maxPage}" step="1" var="i">
                                            <li class="page-item ${i==pageIndex?"active":""}"><a class="page-link" href="filter-product?pageIndex=${i}&cateId=${cateId}">${i}</a></li>
                                            </c:forEach>        
                                            <c:if test="${nextPage<maxPage+1}">
                                            <li class="page-item">
                                                <a class="page-link" href="filter-product?pageIndex=${nextPage}&cateId=${cateId}" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                    <span class="sr-only">Next</span>
                                                </a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </c:if>

                                <c:if test="${genderId != null}">
                                    <ul class="pagination ">
                                        <c:if test="${backPage>0}">
                                            <li class="page-item">
                                                <a class="page-link" href="filter-product?pageIndex=${backPage}&genderId=${genderId}"  aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <c:forEach begin="1" end="${maxPage}" step="1" var="i">
                                            <li class="page-item ${i==pageIndex?"active":""}"><a class="page-link" href="filter-product?pageIndex=${i}&genderId=${genderId}">${i}</a></li>
                                            </c:forEach>        
                                            <c:if test="${nextPage<maxPage+1}">
                                            <li class="page-item">
                                                <a class="page-link" href="filter-product?pageIndex=${nextPage}&genderId=${genderId}" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                    <span class="sr-only">Next</span>
                                                </a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </c:if>


                            </nav>
                        </div>
                    </c:if>
                </div>
                <!--end paging-->
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