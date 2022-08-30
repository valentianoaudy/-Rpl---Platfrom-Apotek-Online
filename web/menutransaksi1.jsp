<%-- 
    Document   : menuobat
    Created on : Dec 11, 2021, 2:48:07 AM
    Author     : asus
--%>

<%@page import="koneksi.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/png" href="img/admin.png"/>
        <title>Data Transaksi</title>
        <link rel="stylesheet" href="css/Obat.css"/>
    </head>
    <body>
        <div id="home">
            <div id="top">
                <div class="header">
                    <h1>DASHBOARD Kepala Puskesmas</h1>
                    <h3>Apotek Puskemas</h3>
                </div>
                <div class="kliklogout">
                    <ul>
                        <li><a href="loginadmin&kepala.jsp" class="logout">Kepala Puskesmas</a></li>
                </div>
                <div class="menu">
                    <ul>
                        <li><a href="DashborKepala.html">BERANDA</a></li>
                        <li><a href="menuobat1.jsp">DATA OBAT</a></li>
                        <li><a href="menuresep1.jsp">DATA RESEP</a></li>
                        <li><a href="menutransaksi1.jsp">DATA TRANSAKSI</a></li>
                    </ul>
                </div>
                <div id="content">
                    <div id="container">
                        <h3>Data Obat Dengan Resep</h3>
                        <hr>
                    </div>

                    <center>
                        <%!
                            Connection con = null;
                            PreparedStatement ps = null;
                            ResultSet rs = null;
                        %>
                        <table border="2" class="tabel_admin">
                            <tr>
                                <th>ID</th><th>Nama</th><th>No Hp</th><th>Alamat</th><th>Pembayaran</th><th>Total</th><th>Foto</th>
                            </tr>
                            <%
                                con = DB.getConnection();
                                String sql = "select * from transaksi";
                                ps = con.prepareStatement(sql);
                                rs = ps.executeQuery();
                                while (rs.next()) {
                            %>
                            <tr>
                                <td><%=rs.getInt(1)%></td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(4)%></td>
                                <td><%=rs.getString(5)%></td>
                                <td><%=rs.getString(6)%></td>
                                <td>
                                    <img src="gambar.jsp?id=<%=rs.getInt(1)%>" width="100px"/>
                                </td>                        

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

