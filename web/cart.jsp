<%-- 
    Document   : keranjang
    Created on : May 13, 2019, 12:37:56 AM
    Author     : SEMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


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

    <%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    <header>
        <h1>Keranjang</h1>
    </header>

    <form name="item" method="POST" action="kontrol_barang">
        <table class="tabelkontrolbarang" width="100%" border="1">
            <tr class="tr">
                <th>Kode Produk</th>
                <th>Nama Produk</th>              
                <th>Quantity</th>
                <th>Harga</th>
                <th>Total</th>                
            </tr>
            <jsp:useBean id="cart" scope="session" class="wadah.Keranjang1" />
            <c:if test="${cart.lineItemCount==0}">
                <tr>
                    <td colspan="5"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">- Barang sudah Masuk Keranjang -<br/></td>

                </tr>
            </c:if>
            <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
                <form name="item" method="POST" action="kontrol_barang">
                    <tr>
                        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b><c:out value="${cartItem.kd_produk}"/></b><br/></td>
                        <td>  <c:out value="${cartItem.nm_produk}"/></font></td>
                        <td>
                            <input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'>
                            <input type='text' name="qty" value='<c:out value="${cartItem.qty}"/>' size='2'>

                            <input type="submit" name="action" value="Update" class="tombol">
                            <input type="submit" name="action" value="Delete" class="tombol">
                        </td>
                        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Rp. <c:out value="${cartItem.harga}"/></font></td>
                        <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Rp. <c:out value="${cartItem.totalHarga}"/></font></td>
                    </tr>
                </form>
            </c:forEach>
            <tr>
                <td colspan="2"> </td>
                <td> </td>
                <td></td>
                <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Subtotal: Rp. <c:out value="${cart.orderTotal}"/></font></td>
            </tr>
        </table>
        <p class="link"><a href="halamanutama.jsp" >Continue Belanja...</a> </p>
        <p class="linkcheckout"><a href="checkout.jsp" >Checkout...</a></p>

    </form>
</body>
</html>
