<%-- 
    Document   : status
    Created on : Dec 18, 2021, 3:15:38 AM
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
                        <span>   <%=new java.util.Date()%> </span>
                    </div>
                </div>
            </div>
        </div>
    </div>

<center>
    <%!
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
    %>
    <table border="2" class="tabelkontrolbarang">
        <tr>
            <th>Status</th>
        </tr>
        <%
            con = DB.getConnection();
            String sql = "select * from user";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
        %>
        <tr>
            <td><%=rs.getString(5)%></td>                    
        </tr>
        <%
            }
        %>
    </table><br>
</center>
</div> 
</div>
</div>
</body>
</html>
