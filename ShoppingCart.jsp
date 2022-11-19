<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopping Cart</title>
<link rel="stylesheet" href="invitationStyle.css">
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<jsp:useBean id="cart" scope="session" class="websys.CartBeans" />
	<h1>
		<strong>Shopping Cart </strong>
	</h1>
	<p id="one" style="position: relative; right: -1000px; top: 10px">
		<a href="index.jsp">View Products</a>
	</p>
	<form class = "cart" name="item" method="POST" action="${pageContext.request.contextPath}/ShoppingCartServlet">
	<table class = "cart">
		<tr class = "cart">
			<th><strong>Item</strong></th>
			<th><strong>Product</strong></th>
			<th><strong>Quantity</strong></th>
			<th><strong>Unit Price</strong></th>
			<th><strong>Total</strong></th>
			<th><input type="submit" name = "buy" value="Purchase" formaction = "OrderReceipt.jsp"></th>
		</tr>

			<c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
			<tr class = "cart">
			<td class = "cart">
					<img src="${pageContext.request.contextPath}/images/${cartItem.image}" width="50" height = "50">
				</td>
				<td class = "cart"><b><c:out value="${cartItem.productNumber}" /></b> 
					<br>
					<c:out value="${cartItem.productDescription}" />
				</td>
				<td class = "cart"><input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'>
					<input type='text' name="quantity" value='<c:out value="${cartItem.quantity}"/>' size='2'>
				</td>
				<td class = "cart">
					$<c:out value="${cartItem.unitCost}" />
				</td>
				<td class = "cart">
					$<c:out value="${cartItem.totalCost}" />
				</td>
				<td class = "cart">
					<input type="submit" name="action" value="Update"> 
					<br><br>
					<input type="submit" name="action" value="Delete">
				</td>
			</tr>

			</c:forEach>
			<tr class = "cart">
			<th colspan="6"><strong>Sub total: </strong>$<c:out value="${cart.orderTotal}" />
			</th>
		</tr>
	</table>
	</form>
</body>
</html>