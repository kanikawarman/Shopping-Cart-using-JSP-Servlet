package websys;

import jakarta.servlet.ServletException;
import websys.CartBeans;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class ShoppingCartServlet
 */
public class ShoppingCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
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
			  response.sendRedirect("ShoppingCart.jsp");
	}
	
	protected void deleteCart(HttpServletRequest request) {
		  HttpSession session = request.getSession();
		  String item_index = request.getParameter("itemIndex");
		  CartBeans cartBean = null;
		   
		  Object objCartBean = session.getAttribute("cart");
		  if(objCartBean!=null) {
		   cartBean = (CartBeans) objCartBean ;
		  } else {
		   cartBean = new CartBeans();
		  }
		  cartBean.deleteCartItem(item_index);
		 }
		
	

protected void updateCart(HttpServletRequest request) {
	  HttpSession session = request.getSession();
	  String servlet_Quantity = request.getParameter("quantity");
	  String servlet_ItemIndex = request.getParameter("itemIndex");
	  
	  CartBeans cartBean = null;
	   
	  Object objCartBean = session.getAttribute("cart");
	  if(objCartBean!=null) {
	   cartBean = (CartBeans) objCartBean ;
	  } else {
	   cartBean = new CartBeans();
	  }
	  cartBean.updateCartItem(servlet_ItemIndex, servlet_Quantity);
	 }

protected void addToCart(HttpServletRequest request) {
	  HttpSession session = request.getSession();
	  String servlet_productnumber = request.getParameter("modelNo");
	  String servlet_Description = request.getParameter("description");
	  String servlet_Price = request.getParameter("price");
	  String servlet_Quantity = request.getParameter("quantity");
	  String servlet_image = request.getParameter("img");
	   
	  CartBeans cartBean = null;
	   
	  Object objCartBean = session.getAttribute("cart");
	 
	  if(objCartBean!=null) {
	   cartBean = (CartBeans) objCartBean ;
	  } else {
	   cartBean = new CartBeans();
	   session.setAttribute("cart", cartBean);
	  }
	   
	  cartBean.addCartItem(servlet_productnumber, servlet_Description, servlet_Price, servlet_Quantity, servlet_image);
	 }
	 
	}






