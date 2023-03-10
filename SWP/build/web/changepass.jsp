<%-- 
    Document   : changepass
    Created on : Feb 12, 2023, 11:04:09 PM
    Author     : Phuong-Linh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./assets/css/header_footer.css">
        <!-- <link rel="stylesheet" href="./assets/css/profile_info.css"> -->
        <link rel="stylesheet" href="./assets/css/login.css">
        <script type="text/javascript" language="javascript" src="./main.js"></script>
        <link rel="stylesheet" href="./assets/font/fontawesome-free-6.1.1/css/all.min.css">
        <link rel="icon" href="./assets/img/small_logo1.png">
        <title>PERFUME STORE</title>
        <style>

            #password-error{
                color: red;
                font-family: serif
            }

            #newpassword-error{
                color: red;
                font-family: serif
            }

            #renewpassword-error{
                color: red;
                font-family: serif
            }

            .back{
                width: 90px;
                height: 30px;
                background-color: white;
                text-align: center;
                border-radius: 5px;
                display: flex;
            }

            .back i{
                margin-top: 7px;
                margin-left: 5px
            }
            .back a{
                text-decoration: none;
                margin-left: 5px;
                margin-top: 2px
            }
            .back:hover {
                background: #45a049;
            }

            .body_right-login label{
                color: #04AA6D;
            }
        </style>
    </head>
    <!-- body -->
    <body id="body">
        <div class="body_container">
            <div class="back">
                <i class="fa fa-angle-double-left"></i>
                <a href="changeprofile"><h4>Quay v???</h4></a>
            </div>
            <div class="body_right" style="margin-left: 270px">

                <form action="changepassword" method="post" id="form_register" novalidate="novalidate">

                    <div>
                        <input type="password" placeholder="M???t Kh???u Hi???n T???i" class="body_right-inputlogin" name="password" id="password">
                        <input type="password" placeholder="M???t Kh???u M???i" class="body_right-inputlogin" name="newpassword" id="newpassword">
                        <input type="password" placeholder="X??c Nh???n M???t Kh???u" class="body_right-inputlogin" name="renewpassword" id="renewpassword">
                        <div class="body_right-login" id="login">
                            <button class="body_right-btnlogin" type="submit">L??u thay ?????i</button> <br>
                            <label>${requestScope.updatepass}</label>
                        </div>
                    </div>
                </form>
            </div>

            <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>


            <script>
                $(function () {
                    $("#form_register").validate({
                        rules: {

                            "password": {
                                required: true,
                                minlength: 6,
                                maxlength: 20
                            },
                            "newpassword": {
                                required: true,
                                minlength: 6,
                                maxlength: 20
                            },
                            "renewpassword": {
                                required: true,
                                minlength: 6,
                                maxlength: 20,
                                equalTo: newpassword
                            },
                        },
                        messages: {

                            "password": {
                                required: "Vui l??ng ??i???n m???t kh???u hi???n t???i",
                                minlength: "Vui l??ng nh???p ??t nh???t {0} k?? t???",
                                maxlength: "Vui l??ng nh???p t???i ??a {0} k?? t???"
                            },
                            "newpassword": {
                                required: "Vui l??ng ??i???n m???t kh???u m???i",
                                minlength: "Vui l??ng nh???p ??t nh???t {0} k?? t???",
                                maxlength: "Vui l??ng nh???p t???i ??a {0} k?? t???"
                            },
                            "renewpassword": {
                                required: "Vui l??ng ??i???n x??c nh???n m???t kh???u",
                                minlength: "Vui l??ng nh???p ??t nh???t {0} k?? t???",
                                maxlength: "Vui l??ng nh???p t???i ??a {0} k?? t???",
                                equalTo: "M???t kh???u x??c nh???n ph???i tr??ng kh???p v???i m???t kh???u m???i"
                            }
                        }

                    });
                });

            </script>
        </div>
    </body>   
</html>    