<%-- 
    Document   : checkout
    Created on : Jun 17, 2019, 5:53:38 AM
    Author     : upi mariani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transaksi</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
  
    </head>
    <script>
        function rekening() {
            var seleksi = document.data.pilihan.value;
            if (seleksi == "BRI") {
                document.data.pilih_pembayaran.value = "BRI";
                document.data.rek.value = "09873291738";
            }
            if (seleksi == "BNI") {
                document.data.pilih_pembayaran.value = "BNI";
                document.data.rek.value = "0563322211";
            }
            if (seleksi == "COD") {
                document.data.pilih_pembayaran.value = "COD";
                document.data.rek.value = "-";
            }
        }
        function hitung() {
            var tempat = document.data.kawasan.value;
            if (tempat == "Kota") {
                document.data.tempat.value = "Yogyakarta";
                document.data.ongkir.value = "5000";
                var a = parseInt(document.data.harga.value);
                document.data.total.value = 5000 + a;
            }
            if (tempat == "Gunung Kidul") {
                document.data.tempat.value = "Gunung Kidul";
                document.data.ongkir.value = "3500";
                var b = parseInt(document.data.harga.value);
                document.data.total.value = 3500 + b;
            }
            if (tempat == "Kulon Progo") {
                document.data.tempat.value = "Kulon Progo";
                document.data.ongkir.value = "4000";
                var c = parseInt(document.data.harga.value);
                document.data.total.value = 4000 + c;
            }
            if (tempat == "Sleman") {
                document.data.tempat.value = "Sleman";
                document.data.ongkir.value = "4500";
                var d = parseInt(document.data.harga.value);
                document.data.total.value = 4500 + d;
            }

        }
    </script>

</body>
<div class="gambar">
    <img class="gambarcheckout" width="300px" src="img/logo-puskesmas.png">

</div>
<div class="datacheckout">
<h1>Transaksi Atas Nama</h1>

<form name="data" method="POST" action="transaksi.jsp">
   
    <table align="center">
        <tr>
            <td class="label">Nama</td>
            <td>:</td>
            <td><input type="text" name="nm" </td>
        </tr>

        <tr>
            <td class="label">No.Hp</td>
            <td>:</td>
            <td><input type="text" name="hp" </td>
        </tr>
        <tr>
            <td class="label">Alamat</td>
            <td>:</td>
            <td><input type="text" name="almt"  align="center"></td>
        </tr>
        <tr>
            <td class="label"><label>Pembayaran</label></td>
            <td>:</td>
            <td>
                <select name="pilihan">
                    <option>Pilih Pembayaran Via</option>
                    <option>BRI</option>
                    <option>BNI</option>
                    <option>COD</option>
                </select>
            
            <td>
                <input type="button" value="Via" onclick="rekening()" class="klik">
            </td>
            </td>
        </tr>
        <tr>
            <td class="label">Via Pembayaran</td>
            <td>:</td>
            <td><input type="text" name="pilih_pembayaran"></td>
        </tr>
        <tr>
            <td class="label">No Rekening</td>
            <td>:</td>
            <td><input type="text" name="rek"</td>
        </tr>
        <tr>
            <td class="label">Tempat Pengiriman</td>
            <td>:</td>
            <td><select  name="kawasan">
                    <option>Pilih tempat</option>
                    <option>Kota</option>
                    <option>Gunung Kidul</option>
                    <option>Kulon Progo</option>
                    <option>Sleman</option>
                </select>
            <td>
                <input type="button" name="proses" value="Proses" onclick="hitung()" class="klik">
            </td>
            </td>
        </tr>
        <tr>
            <td class="label">Kawasan Pengiriman</td>
            <td>:</td>
            <td><input type="text" name="tempat"</td>
        </tr>
        <tr>
            <td class="label">Harga Beli</td>
            <td>:Rp.</td>
            <td><input type="text" name="harga" value="${cart.orderTotal}"></td>
        </tr>
        <tr>
            <td class="label">Biaya Pengiriman</td>
            <td>:Rp.</td>
            <td><input type="text" name="ongkir"></td>
        </tr>
        <tr>
            <td class="label">Total Harga</td>
            <td>:Rp.</td>
            <td><input type="text" name="total"></td>
        </tr>

        <br>
        <tr>
            <td class="label">Upload Bukti </td>
            <td></td>
            <td><input class="form" required type="file" name="foto"></td><br>
        </tr>
        <tr>
            <td><input type="submit" value="Buat Pesanan" class="buat"></td>
        </tr>
    </table>


</form>
</div>

</body>
</html>
