<%-- 
    Document   : halamanutama
    Created on : Dec 15, 2021, 5:41:09 PM
    Author     : asus
--%>
<%@page import="koneksi.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.produk"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
                        <%
                            if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
                        %>

                        <%} else {
                        %>
                        <span>Selamat Datang : <%=session.getAttribute("username")%>  |  Waktu dan Tanggal : <%=new java.util.Date()%> </span>
                        <%
                            }
                        %>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="content">
        <img class="shape1" src="assets/shape1.png" alt="" />
        <img class="shape2" src="assets/shape2.png" alt="" />
        <img class="shape3" src="assets/shape1.png" alt="" />
        <img class="shape4" src="assets/shape2.png" alt="" />

        <div class="container">

            <!-- carousel -->
            <div class="row wrap-carousel">
                <div class="col-8 h-100 pr-1">
                    <div
                        id="carouselExampleIndicators"
                        class="carousel slide h-100"
                        data-ride="carousel"
                        >
                        <ol class="carousel-indicators">
                            <li
                                data-target="#carouselExampleIndicators"
                                data-slide-to="0"
                                class="active"
                                ></li>
                            <li
                                data-target="#carouselExampleIndicators"
                                data-slide-to="1"
                                ></li>
                            <li
                                data-target="#carouselExampleIndicators"
                                data-slide-to="2"
                                ></li>

                        </ol>
                        <div class="carousel-inner h-100">
                            <div class="carousel-item active h-100">
                                <img
                                    src="assets/slider/1.jpeg"
                                    class="d-block w-100 h-100"
                                    alt="..."
                                    />
                            </div>
                            <div class="carousel-item h-100">
                                <img
                                    src="assets/slider/2.jpeg"
                                    class="d-block w-100 h-100"
                                    alt="..."
                                    />
                            </div>
                            <div class="carousel-item h-100">
                                <img
                                    src="assets/slider/3.jpeg"
                                    class="d-block w-100 h-100"
                                    alt="..."
                                    />
                            </div>
                        </div>
                        <a
                            class="carousel-control-prev"
                            href="#carouselExampleIndicators"
                            role="button"
                            data-slide="prev"
                            >
                            <span
                                class="carousel-control-prev-icon"
                                aria-hidden="true"
                                ></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a
                            class="carousel-control-next"
                            href="#carouselExampleIndicators"
                            role="button"
                            data-slide="next"
                            >
                            <span
                                class="carousel-control-next-icon"
                                aria-hidden="true"
                                ></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <div class="col-4 h-100 pl-0">
                    <div class="h-50">
                        <img class="w-100 h-100" src="assets/slider/3.jpeg" alt="" />
                    </div>
                    <div class="h-50 pt-1">
                        <img class="w-100 h-100" src="assets/slider/4.jpeg" alt="" />
                    </div>
                </div>
            </div>

            <!-- Awal Kategori -->
            <div class="container mt-5 ">

                <div class="judul-kategori" style="background-color: #fff; padding: 5px 10px;">
                    <h5 class="text-center" style="margin-top: 5px;">KATEGORI</h5>
                </div>

                <div class="row text-center row-container mt-2">


                    <div class="col-lg-2 col-md-3 col-sm-4 col-6">
                        <div class="menu-kategori">
                            <a href="uploadResep.jsp"><img src="assets/kategori/resep.png" class="img-categori mt-3"></a>
                            <p class="mt-2">Obat dengan Resep</p>
                        </div>
                    </div>


                </div>
            </div>
            <!-- Akhir Kategori -->

            <!-- Awal Produk -->
            <div class="container mt-5">
                <div class="judul-produk" style="background-color: #fff; padding: 5px 10px;">
                    <h5 class="text-center" style="margin-top: 5px;">PRODUK</h5>
                </div>

                <%
                    produk pm = new produk();
                    List<produk> data = new ArrayList<produk>();
                    String ket = request.getParameter("ket");
                    if (ket
                            == null) {
                        data = pm.tampil();
                    }
                    for (int x = 0;
                            x < data.size();
                            x++) {
                %>

                <table align="center" class="tabelobat" >


                    <tr>
                        <td>
                            <form name="ModelDetail" method="POST" action="kontrol_barang" align="center">
                                <tr>
                                    <th>Id Obat</th>
                                    <th>Kode Obat</th>
                                    <th> Nama Obat</th>
                                    <th>Keterangan</th>
                                    <th> Harga</th>
                                    <th>Stok</th>
                                    <th > Jumlah Barang</th>
                                    <th>Aksi</th>
                                </tr>

                                <tr>
                                    <td ><%=data.get(x).getId_produk()%> <input type="hidden" name="Id_produk" value="<%=data.get(x).getId_produk()%>"</td>
                                    <td><%=data.get(x).getKd_produk()%> <input type="hidden" name="kd_produk" value="<%=data.get(x).getKd_produk()%>"</td>
                                    <td><%=data.get(x).getNm_produk()%><input type="hidden" name="nm_produk" value="<%=data.get(x).getNm_produk()%>"</td>
                                    <td><%=data.get(x).getket()%><input type="hidden" name="ket" value="<%=data.get(x).getket()%>"</td>
                                    <td> <%=data.get(x).getHarga_produk()%> <input type="hidden" name="harga" value="<%=data.get(x).getHarga_produk()%>"</td>
                                    <td><%=data.get(x).getQty()%> <input type="hidden" name="harga" value="<%=data.get(x).getQty()%>"</td>
                                    <td> <input class="jumlahpesanan" type="number" name="qty" placeholder="Masukan Jumlah"/></td>
                                    <td><input type="hidden" name="action" value="add">
                                        <input class="tomboladd" type="submit" name="addToCart" value="Add To Cart" class="button"></td>
                                </tr>

                            </form>

                        </td>

                </table>

                <%
                    }
                %>
                <!-- Awal Produk -->
            </div>
        </div>
    </div>


    <!-- Akhir Produk -->
    <div class="footer">
        <div class="container pt-5">
            <p class="title font-weight-bold">
                Apotek Online 
            </p>
        </div>

        <hr />

        <div
            class="d-flex justify-content-between mt-5 pb-3"
            style="color: #888"
            >
            <span> &copy; Apotek Online </span>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script
        src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    ></script>
    <script
        src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    ></script>
    <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
    ></script>
</body>
</html>
Yosefino Mario Fernando Witin / 195314125
Audy Valentiano / 195314142
Paguh Esatrio / 195314146
Andreas Sitinjak / 195314147
