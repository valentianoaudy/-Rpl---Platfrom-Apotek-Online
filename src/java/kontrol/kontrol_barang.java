/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kontrol;

import wadah.Keranjang1;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SEMAR
 */
public class kontrol_barang extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
 
  String strAction = request.getParameter("action");
   
   
  if(strAction!=null && !strAction.equals("")) {
   if(strAction.equals("add")) {
    addToCart(request);
   } else if (strAction.equals("Update")) {
    updateCart(request);
   } else if (strAction.equals("Delete")) {
    deleteCart(request);
   }
  }
  response.sendRedirect("cart.jsp");
 }
  
 protected void deleteCart(HttpServletRequest request) {
  HttpSession session = request.getSession();
  String strItemIndex = request.getParameter("itemIndex");
  Keranjang1 keranjang1 = null;
   
  Object objKeranjang1 = session.getAttribute("cart");
  if(objKeranjang1!=null) {
   keranjang1 = (Keranjang1) objKeranjang1 ;
  } else {
   keranjang1 = new Keranjang1();
  }
  keranjang1.deleteCartItem(strItemIndex);
 }
  
 protected void updateCart(HttpServletRequest request) {
  HttpSession session = request.getSession();
  String strQty = request.getParameter("qty");
  String strItemIndex = request.getParameter("itemIndex");
  
  Keranjang1 keranjang1 = null;
   
  Object objKeranjang1 = session.getAttribute("cart");
  if(objKeranjang1!=null) {
   keranjang1 = (Keranjang1) objKeranjang1 ;
  } else {
   keranjang1 = new Keranjang1();
  }
  keranjang1.updateCartItem(strItemIndex, strQty);
 }
  
 protected void addToCart(HttpServletRequest request) {
  HttpSession session = request.getSession();
  String strKd_produk = request.getParameter("kd_produk");
  String strNm_produk = request.getParameter("nm_produk");
  String strHarga = request.getParameter("harga");
  String strQty = request.getParameter("qty");
   
  Keranjang1 keranjang1 = null;
   
  Object objKeranjang1 = session.getAttribute("cart");
 
  if(objKeranjang1!=null) {
   keranjang1 = (Keranjang1) objKeranjang1 ;
  } else {
   keranjang1 = new Keranjang1();
   session.setAttribute("cart", keranjang1);
  }
   
  keranjang1.addCartItem(strKd_produk, strNm_produk, strHarga, strQty);
 }
}
