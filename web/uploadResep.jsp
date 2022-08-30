<%-- 
    Document   : index
    Created on : 18 Oct, 2018, 8:09:16 PM
    Author     : Dharmesh Mourya
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
        name="viewport"
        content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>

    <link rel="stylesheet" href="css/style.css" />
    <title>Apotek Puskemas </title>
</head>

<body>
    <div class="header">
        <div class="container">
            <!-- navbar  -->
            <div class="navbar d-flex justify-content-between align-items-center">
                <div class="d-flex align-items-center">
                    <span>Selamat Datang </span>
                    <div class="hr1 mx-2"></div>
                    <span> Di Apotek Puskemas</span>
                </div>

                <div class="d-flex align-items-center">
                    <span class="font-weight-bold"> 
                        <a href="awal.html" onclick="return confirm('Apakah anda yakin akan Logout?')" > 
                            Logout</a></span>
                </div>
            </div>

            <!-- input search brand --> 
            <div class="d-flex align-items-center mt-4">
                <div class="d-flex align-items-center">
                    <img class="brand-img mr-2" src="img/logo.png" alt="" />
                    <span class="text-brand">Apotek Puskemas</span>
                </div>

                <div class="wrap-navbar-input">
                    <form class="">
                        <input class="search" type="text" placeholder="Cari Obat" required>	
                        <input class="button" type="button" value="Cari">	
                        <a href="halamanutama.jsp">Beranda</a>
                        <a href="status.jsp">Status</a>
                        <a href="cart.jsp">Keranjang</a>
                    </form>
                    <div class="under-input">
                        <span>   <%=new java.util.Date()%> </span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <form action="./UploadServlet" method="post" enctype="multipart/form-data">
        <table width="400px" align="center" border=2 class="tabelkontrolbarang" >
            <tr>
                <td align="center" colspan="2">Form Details</td>
            </tr>
            <tr>
                <td>Nama</td>
                <td>
                    <input type="text" required="" name="nama">
                </td>
            </tr>
            <tr>
                <td>No BPJS</td>
                <td>
                    <input type="number" required="" name="no">
                </td>
            </tr>
            <tr>
                <td>alamat </td>
                <td>
                    <input type="text" required="" name="alamat">
                </td>
            </tr>
            <tr>
                <td>hp </td>
                <td>
                    <input type="number" required="" name="hp">
                </td>
            </tr>
            <tr>
                <td>Select File </td>
                <td>
                    <input type="file" required="" name="file">
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Submit"></td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>

