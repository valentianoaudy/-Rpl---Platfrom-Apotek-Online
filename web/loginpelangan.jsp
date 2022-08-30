<%-- 
    Document   : login
    Created on : Dec 3, 2021, 9:21:07 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <script type="text/javascript">
            function login() {
                var ganalar = document.forms["loginForm"]["username"].value;
                var ganala1 = document.forms["loginForm"]["password"].value;
                if ((ganalar && ganala1) === "") {
                    alert("Data belum diisi!");
                    return false;
                }
            }
        </script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta name="author" content="" />
        <link rel="icon" type="image/png" href="images/logo-puskesmas.png"/>
        <title>Login Form</title>
        <link rel="stylesheet" type="text/css" href="css/style1.css">
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/a81368914c.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <img class="wave" src="img/wave.png">
        <div class="container">
            <div class="img">
                <img src="img/logo-puskesmas.png">
            </div>
            <div class="login-content">
                <form action="login1.jsp" method="POST">
                    <h2 class="title">Welcome</h2>
                    <div class="input-div one">
                        <div class="i">
                            <i class="fas fa-user"></i>
                        </div>
                        <div class="div">
                            <h5>Username</h5>
                            <input type="text" id="username" class="input" name="username">
                        </div>
                    </div>
                    <div class="input-div pass">
                        <div class="i"> 
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <h5>Password</h5>
                            <input type="password" id="password" class="input" name="password">
                        </div>
                    </div>
                    <a>Silahkan isi Data</a>
                    <input type="submit" class="btn" value="Login"/>
                    <a href="daftar.jsp">Belum punya akun?Daftar disini</a>
                </form>
            </div>  
        </div>
        <script type="text/javascript" src="js/main.js"></script>
    </body>
</html>
