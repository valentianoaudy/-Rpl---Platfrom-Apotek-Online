<%-- 
    Document   : status
    Created on : Dec 18, 2021, 2:09:20 AM
    Author     : asus
--%>
<%@page import="java.sql.*"%>
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
        <title>Data Obat</title>
        <link rel="stylesheet" href="css/Obat.css"/>
    </head>
    <body>
        <div id="home">
            <div id="top">
                <div class="header">
                    <h1>DASHBOARD ADMIN</h1>
                    <h3>Apotek Puskemas</h3>
                </div>
                <div class="kliklogout">
                    <ul>
                        <li><a href="loginadmin&kepala.jsp" class="logout">Admin</a></li>
                    </ul>   
                </div>
                <div class="menu">
                    <ul>
                        <li><a href="DashborAdmin.html">BERANDA</a></li>
                        <li><a href="menuobat.jsp">DATA OBAT</a></li>
                        <li><a href="menuresep.jsp">DATA RESEP</a></li>
                        <li><a href="menutransaksi.jsp">DATA TRANSAKSI</a></li>
                        <li><a href="menustatus.jsp">DATA STATUS</a></li>
                    </ul>
                </div>
                <div id="content">
                    <div id="container">
                        <h3>Data user</h3>
                        <hr>
                    </div>
                    <div class=""></div>

                    <center>
                        <%!
                            Connection con = null;
                            PreparedStatement ps = null;
                            ResultSet rs = null;
                        %>
                        <table border="2" class="tabel_admin">
                            <tr>
                                <th>ID</th><th>Nama</th><th>Username</th><th>Password</th><th>Status</th><th>Aksi</th>
                            </tr>
                            <%
                                con = DB.getConnection();
                                String sql = "select * from user";
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
                                <td>
                                    <div class="aksi">
                                        <a href="tambahstatus.jsp?id=<% out.print(rs.getString(1));%>"
                                           onclick="return confirm('Apakah anda yakin akan mengedit data ini?')">
                                            Edit Status</a>
                                        <a href="hapusstatus.jsp?id=<% out.print(rs.getString(1)); %>" 
                                           onclick="return confirm('Apakah anda yakin akan menghapus data ini?')">
                                            Hapus Status</a>
                                    </div>
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
