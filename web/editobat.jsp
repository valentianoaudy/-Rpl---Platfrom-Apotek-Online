<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/png" href="img/admin.png"/>
        <title>Edit Obat</title>
        <link rel="stylesheet" href="css/dashboard_admin.css"/>
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
                        <h3>Data Obat Tanpa Resep</h3>
                        <hr>
                        <h4> Tambah Data Obat</h4>
                    </div>

                    <% String id = request.getParameter("id");%>
                    <form action="queryedit.jsp" method="POST">
                        <div class="formnarkotika">
                            <tbody>
                                <tr>
                                    <td><input type="hidden" name="id" value="<%=id%>" /></td>
                                </tr>
                                <tr>
                                    <td>Kode </td>
                                    <td>:</td>
                                    <td><input type="text" name="kode"/></td><br>
                            </tr>
                            <tr>
                                <td>Nama Obat</td>
                                <td>:</td>
                                <td><input type="text" name="nama"/></td><br>
                            </tr>
                            <tr>
                                <td>Keterangan</td>
                                <td>:</td>
                                <td><input type="text" name="ket"/></td><br>
                            </tr>
                            <tr>
                                <td>Harga</td>
                                <td>:</td>
                                <td><input type="text" name="harga"/></td><br>
                            </tr>
                            <tr>
                                <td>Stok</td>
                                <td>:</td>
                                <td><input type="text" name="stok"/></td><br>
                            </tr>

                            <button type="submit" class="tombol" name="submit" >Tambah Data Obat</button>
                            </tbody>
                        </div>
                    </form>

                </div>
            </div>
        </div>

    </body>
</html>

