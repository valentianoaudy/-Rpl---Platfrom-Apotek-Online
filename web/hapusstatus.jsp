<%-- 
    Document   : hapusstatus
    Created on : Dec 18, 2021, 10:16:16 AM
    Author     : user
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
            st.executeUpdate("delete from user where id ='"+ id +"'");
        %>
        <h2>Berhasil Delete!!!</h2>
        <a href="menustatus.jsp">+ Tampilkan List Status</a><hr>
        
    </body>
</html>
