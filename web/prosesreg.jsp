<%-- 
    Document   : progresreg
    Created on : Dec 18, 2021, 9:17:10 AM
    Author     : asus
--%>

<%@page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nama = request.getParameter("nama");
            String user = request.getParameter("username");
            String pass = request.getParameter("password");
            String status = request.getParameter("status");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/apotek",
                    "root", "");
            Statement st = con.createStatement();
            ResultSet rs;
            int i = st.executeUpdate("insert into user (username, nama, password, status) values ('" + user + "','" + nama + "','" + pass + "','" + status + "')");
            if (i > 0) {
                //session.setAttribute("userid", user);
                response.sendRedirect("welcome1.jsp");
                // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
            } else {
                response.sendRedirect("login1.jsp");
            }
        %>
    </body>
</html>
