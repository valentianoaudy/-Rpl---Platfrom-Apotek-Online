<%-- 
    Document   : hapusbarang
    Created on : Jul 2, 2019, 3:25:02 AM
    Author     : upi mariani
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/menuadmin.css"/>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/apotek","root","");
            Statement st = cn.createStatement();
            st.executeUpdate("delete from obat1 where id ='"+ id +"'");
        %>
        <h2>Berhasil Delete!!!</h2>
        <a href="menuobat.jsp">+ Tampilkan List Obat</a><hr>
        
    </body>
</html>
