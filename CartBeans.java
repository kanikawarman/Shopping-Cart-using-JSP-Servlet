package websys;

import java.util.ArrayList;
/**
 * Session Bean implementation class CartBeans
 */
public class CartBeans implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public CartBeans() {
        // TODO Auto-generated constructor stub
    }
    private ArrayList CartItems = new ArrayList();
    private double OrderTotal ;
    private double ItemCount = 0 ;
     
    public int getItemCount() {
     return CartItems.size();
    }
     
    public void deleteCartItem(String itemIndex) {
     int itemindex = 0;
     try {
      itemindex = Integer.parseInt(itemIndex);
      CartItems.remove(itemindex - 1);
      calculateOrderTotal();
     } catch(NumberFormatException nfe) {
      System.out.println("Error while deleting cart item: "+nfe.getMessage());
      nfe.printStackTrace();
     }
    }
     
    public void updateCartItem(String itemIndex, String quantity) {
     double TotalCost = 0.0;
     double UnitCost = 0.0;
     int Quantity = 0;
     int itemindex = 0;
     CartItemBean cartItem = null;
     try {
      itemindex = Integer.parseInt(itemIndex);
      Quantity = Integer.parseInt(quantity);
      if(Quantity>0) {
       cartItem = (CartItemBean)CartItems.get(itemindex-1);
       UnitCost = cartItem.getUnitCost();
       TotalCost = UnitCost*Quantity;
       cartItem.setQuantity(Quantity);
       cartItem.setTotalCost(TotalCost);
       calculateOrderTotal();
      }
     } catch (NumberFormatException nfe) {
      System.out.println("Error while updating cart: "+nfe.getMessage());
      nfe.printStackTrace();
     }
      
    }
     
    public void addCartItem(String productNumber, String Description,
   String UnitCost, String quantity, String image) {
     double TotalCost = 0.0;
     double unit_cost = 0.0;
     int Quantity = 0;
     CartItemBean cartItem = new CartItemBean();
     try {
      unit_cost = Double.parseDouble(UnitCost);
      Quantity = Integer.parseInt(quantity);
      if(Quantity>0) {
       TotalCost = unit_cost*Quantity;
       cartItem.setProductNumber(productNumber);
       cartItem.setProductDescription(Description);
       cartItem.setImage(image);
       cartItem.setUnitCost(unit_cost);
       cartItem.setQuantity(Quantity);
       cartItem.setTotalCost(TotalCost);
       CartItems.add(cartItem);
       calculateOrderTotal();
      }
       
     } catch (NumberFormatException nfe) {
      System.out.println("Error while parsing from String to primitive types: "+nfe.getMessage());
      nfe.printStackTrace();
     }
    }
     
    public void addCartItem(CartItemBean cartItem) {
     CartItems.add(cartItem);
    }
     
    public CartItemBean getCartItem(int itemindex) {
     CartItemBean cartItem = null;
     if(CartItems.size()>itemindex) {
      cartItem = (CartItemBean) CartItems.get(itemindex);
     }
     return cartItem;
    }
     
    public ArrayList getCartItems() {
     return CartItems;
    }
    public void setCartItems(ArrayList CartItems) {
     this.CartItems = CartItems;
    }
    public double getOrderTotal() {
     return OrderTotal;
    }
    public void setOrderTotal(double OrderTotal) {
     this.OrderTotal = OrderTotal;
    }
     
    protected void calculateOrderTotal() {
     double Total = 0;
     for(int counter=0;counter<CartItems.size();counter++) {
      CartItemBean cartItem = (CartItemBean) CartItems.get(counter);
      Total+=cartItem.getTotalCost();
       
     }
     setOrderTotal(Total);
    }
    
   }
