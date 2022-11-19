<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Receipt</title>
<script>
function confirm() {
alert("Order Confirmed, Congratulations!");
window.location.href="index.jsp";
}
</script>
<link rel="stylesheet" href="invitationStyle.css">
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<jsp:useBean id="cart" scope="session" class="websys.CartBeans" />
	<h1>
		<strong>Order Receipt </strong>
	</h1>
	<p id="one" style="position: relative; right: -800px; top: 10px">
		<a href="ShoppingCart.jsp">View Cart</a>
	</p>
	<form class = "order" name="order" method="POST">
	<label>Total Amount: </label> $<c:out value="${cart.orderTotal}" />
	<br><br>
	<label>Delivery Charges (5%): </label> $<c:out value="${cart.orderTotal * 0.05}" />
	<br><br>
	<label>Taxes (15%): </label> $<c:out value="${cart.orderTotal * 0.15}" />
	<br><br>
	<label>Grand Total: </label> $<c:out value="${cart.orderTotal + (cart.orderTotal * 0.15) + (cart.orderTotal * 0.15)}" />
	<br><br>
	<input type="button" name="buy" value="Buy" onClick = "confirm();">

			
	
	</form>
</body>
</html>