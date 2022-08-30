<%-- 
    Document   : transaksi
    Created on : Jun 14, 2019, 11:32:18 AM
    Author     : upi mariani
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/trans.css">
    </head>

    <body>

        <%
            // Create cookies for first and last names.      
            Cookie nm = new Cookie("nm",
                    request.getParameter("nm"));
            Cookie hp = new Cookie("hp",
                    request.getParameter("hp"));
            Cookie almt = new Cookie("almt",
                    request.getParameter("almt"));
          

            // Set expiry date after 24 Hrs for both the cookies.
            nm.setMaxAge(60 * 60 * 24);
            hp.setMaxAge(60 * 60 * 24);
            almt.setMaxAge(60 * 60 * 24);


            // Add both the cookies in the response header.
            response.addCookie(nm);
            response.addCookie(hp);
            response.addCookie(almt);

        %>


        <%
            String nama = request.getParameter("nm");
            String nohp = request.getParameter("hp");
            String alamat = request.getParameter("almt");
            String pilihpembayaran = request.getParameter("pilih_pembayaran");
            String total = request.getParameter("total");
            String foto = request.getParameter("foto");

            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/apotek", "root", "");
            Statement st = cn.createStatement();
            st.executeUpdate("insert into transaksi (nama, no, alamat, pilihan, total, foto) values ('" + nama + "','" + nohp + "','" + alamat + "','" + pilihpembayaran + "','" + total + "','" + foto + "')");
        %>  
        <h1>Bukti Pembayaran</h1>
        <table>
            <tr>
                <td>Transaksi Atas Nama </td>
                <td>:</td>
                <td> <%= request.getParameter("nm")%></td>
            </tr>
            <tr>
                <td>No Hp</td>
                <td>:</td>
                <td> <%= request.getParameter("hp")%></td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td>:</td>
                <td> <%= request.getParameter("almt")%></td>
            </tr>
            <tr>
                <td>Pilih Pembayaran</td>
                <td>:</td>
                <td><%out.print(pilihpembayaran);%></td>
            </tr>
            <tr>
                <td>Total Pembelian</td>
                <td>:</td>
                <td><%out.print(total);%></td>
            </tr>
            <tr>
                <td class="keluar"><a href="halamanutama.jsp">Log Out?..</a></td>
            </tr>
        </table>

        <h1> Admin Akan Segera Mengkofirmasi </h1>
    </body>
</html>
