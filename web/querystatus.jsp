<%-- 
    Document   : querystatus
    Created on : Dec 18, 2021, 3:00:54 AM
    Author     : asus
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            String status = request.getParameter("status");
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/apotek", "root", "");
            Statement st = cn.createStatement();
            st.executeUpdate("update user set status='" + status + "' where id ='" + id + "'");
        %>
        <h2>Berhasil Edit!!!</h2>
        <a href="menustatus.jsp">+ Tampilkan List Status</a><hr>
    </body>
</html>
