/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package wadah;

import java.util.ArrayList;

public class keranjang {
    private ArrayList alCartItems = new ArrayList();
 private int dblOrderTotal ;
  
 public int getLineItemCount() {
  return alCartItems.size();
 }
  
 public void deleteCartItem(String strItemIndex) {
  int iItemIndex = 0;
  try {
   iItemIndex = Integer.parseInt(strItemIndex);
   alCartItems.remove(iItemIndex - 1);
   calculateOrderTotal();
  } catch(NumberFormatException nfe) {
   System.out.println("Error while deleting cart item: "+nfe.getMessage());
   nfe.printStackTrace();
  }
 }
  
 public void updateCartItem(String strItemIndex, String strQty) {
  int dblTotalHarga = 0;
  int dblHarga = 0;
  int iQty = 0;
  int iItemIndex = 0;
  keranjangproduk cartItem = null;
  try {
   iItemIndex = Integer.parseInt(strItemIndex);
   iQty = Integer.parseInt(strQty);
   if(iQty>0) {
    cartItem = (keranjangproduk)alCartItems.get(iItemIndex-1);
    dblHarga = (int) cartItem.getHarga();
    dblTotalHarga= dblHarga*iQty;
    cartItem.setQuantity(iQty);
    cartItem.setTotalHarga(dblTotalHarga);
    calculateOrderTotal();
   }
  } catch (NumberFormatException nfe) {
   System.out.println("Error while updating cart: "+nfe.getMessage());
   nfe.printStackTrace();
  }
   
 }
  
 public void addCartItem(String strKd_produk, String strNm_produk,
String strHarga, String strQty) {
  int dblTotalHarga = 0;
  int dblHarga = 0;
  int iQty = 0;
  keranjangproduk cartItem = new keranjangproduk();
  try {
   dblHarga = Integer.parseInt(strHarga);
   iQty = Integer.parseInt(strQty);
   if(iQty>0) {
    dblTotalHarga = dblHarga*iQty;
    cartItem.setKd_produk(strKd_produk);
    cartItem.setNm_produk(strNm_produk);
    cartItem.setHarga(dblHarga);
    cartItem.setQuantity(iQty);
    cartItem.setTotalHarga(dblTotalHarga);
    alCartItems.add(cartItem);
    calculateOrderTotal();
   }
    
  } catch (NumberFormatException nfe) {
   System.out.println("Error while parsing from String to primitive types: "+nfe.getMessage());
   nfe.printStackTrace();
  }
 }
  
 public void addCartItem(keranjangproduk cartItem) {
  alCartItems.add(cartItem);
 }
  
 public keranjangproduk getCartItem(int iItemIndex) {
  keranjangproduk cartItem = null;
  if(alCartItems.size()>iItemIndex) {
   cartItem = (keranjangproduk) alCartItems.get(iItemIndex);
  }
  return cartItem;
 }
  
 public ArrayList getCartItems() {
  return alCartItems;
 }
 public void setCartItems(ArrayList alCartItems) {
  this.alCartItems = alCartItems;
 }
 public double getOrderTotal() {
  return dblOrderTotal;
 }
 public void setOrderTotal(int dblOrderTotal) {
  this.dblOrderTotal = dblOrderTotal;
 }
  
 protected void calculateOrderTotal() {
  int dblTotal = 0;
  for(int counter=0;counter<alCartItems.size();counter++) {
   keranjangproduk cartItem = (keranjangproduk) alCartItems.get(counter);
   dblTotal+=cartItem.getTotalHarga();
    
  }
  setOrderTotal(dblTotal);
 }
}
