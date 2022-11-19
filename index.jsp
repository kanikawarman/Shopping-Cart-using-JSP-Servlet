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
	<h1>
		<strong>Gift Items</strong>
	</h1>
	<p id="one" style="position: relative; right: -1100px; top: 30px">
		<a href="ShoppingCart.jsp">View Cart</a>
	</p>
	<table>
		<tr>
			<td><form name="index" method="POST" action="${pageContext.request.contextPath}/ShoppingCartServlet">
			<div style = "position: relative; left: 100px;">
			<img src="images/Wooden_Candle_Holder.jpg" width="300" height="300">
			<input type="hidden" name="img" value="Wooden_Candle_Holder.jpg"> 
			</div>
			
					<label>Product:</label>CASADECOR Artiste Wooden Candle Holder 
					<input type="hidden" name="modelNo" value="Wooden Candle Holder"> 
					<br> <br> 
					<label>Description:</label>The design features a hand-crafted wooden candle stand/holder that is accented with carefully handmade stand. The bases are all weighted and come with non-slip felted bottoms to ensure sturdiness. 
					<input type="hidden" name="description" value="handmade stand wooden candle stand">
					<br> <br> 
					<label>Quantity:</label> 
					<input type="text" size="2" value="1" name="quantity"> 
					<br><br> 
					<label>Price:</label><strong>$100.00</strong> 
					<input type="hidden" name="price" value="100"> 
					<br> <br> 
					<input type="hidden" name="action" value="add"> 
					<input type="submit" name="addToCart" value="Add To Cart">
		
			</form></td>

			<td><form name="index2" method="POST" action="${pageContext.request.contextPath}/ShoppingCartServlet">
			<div style = "position: relative; left: 100px;">
			<img src="images/diya_candle.jpg" width="300" height="300">
			<input type="hidden" name="img" value="diya_candle.jpg"> 
			</div>
					<label>Product:</label>KREATIVE ART'S Lotus Candle Holder 
					<input type="hidden" name="modelNo" value="Lotus Candle Holder"> 
					<br> <br> 
					<label>Description:</label>Beautiful Design Of Diya Cover To Help Lighting The Candles For Longer Time And In Attractive Way. 
					<input type="hidden" name="description" value="Design Of Diya Cover To Help Lighting The Candles">
					<br> <br> 
					<label>Quantity:</label> 
					<input type="text" size="2" value="1" name="quantity"> 
					<br> <br> 
					<label>Price:</label><strong>$200.00</strong> 
					<input type="hidden" name="price" value="200"> 
					<br> <br> 
					<input type="hidden" name="action" value="add"> 
					<input type="submit" name="addToCart" value="Add To Cart">
			</form></td>
		</tr>
		<tr>
			<td><form name="index3" method="POST" action="${pageContext.request.contextPath}/ShoppingCartServlet">
			<div style = "position: relative; left: 100px;">
			<img src="images/handicraft.jpeg" width="300" height="300">
			<input type="hidden" name="img" value="handicraft.jpeg"> 
			</div>
					<label>Product:</label>DECENT GLASS Elegant Golden Glass Lantern with Jute Handle 
					<input type="hidden" name="modelNo" value="Golden Glass Lantern"> 
					<br> <br> 
					<label>Description:</label>This piece features a ridged glass construction with a top, rope rimmed neck and handle
					<input type="hidden" name="description" value="TElegant Golden Glass Lantern with Jute Handle"> 
					<br> <br>
					<label>Quantity:</label> 
					<input type="text" size="2" value="1" name="quantity"> 
					<br> <br> 
					<label>Price:</label><strong>$350.00</strong>
					<input type="hidden" name="price" value="350"> 
					<br> <br>
					<input type="hidden" name="action" value="add"> 
					<input type="submit" name="addToCart" value="Add To Cart">

				</form></td>

			<td><form name="index4" method="POST" action="${pageContext.request.contextPath}/ShoppingCartServlet">
			<div style = "position: relative; left: 100px;">
			<img src="images/vase.jpg" width="300" height="300">
			<input type="hidden" name="img" value="vase.jpg"> 
			</div>
					<label>Product:</label>SUBHAN handicrafts Flower Vase
					<input type="hidden" name="modelNo" value="Flower Vase"> 
					<br> <br> 
					<label>Description:</label>Great for gifting during weddings, anniversaries, house warming ceremonies, new venture, award ceremonies etc.
					<input type="hidden" name="description" value="handicrafted Flower Vase">
					<br> <br>
					<label>Quantity:</label>
					<input type="text" size="2" value="1" name="quantity"> 
					<br> <br> 
					<label>Price:</label><strong>$140.00</strong>
					<input type="hidden" name="price" value="140"> 
					<br> <br>
					<input type="hidden" name="action" value="add"> 
					<input type="submit" name="addToCart" value="Add To Cart">

				</form></td>
		</tr>
		<tr>
			<td><form name="index5" method="POST" action="${pageContext.request.contextPath}/ShoppingCartServlet">
			<div style = "position: relative; left: 100px;">
			<img src="images/Wall_hook.jpg" width="300" height="300">
			<input type="hidden" name="img" value="Wall_hook.jpg"> 
			</div>
					<label>Product:</label>Ceramic Filigree Wall Hook Cabinet 
					<input type="hidden" name="modelNo" value="CASADECOR Ceramic Filigree Wall Hook Cabinet with Bronze Accent"> 
					<br> <br> 
					<label>Description:</label>Measures 6" length and 3.5" wide . Perfect for hanging home accessories.
					<input type="hidden" name="description" value="Measures 6 length and 3.5 wide. Perfect for hanging home accessories."> 
					<br> <br>
					<label>Quantity:</label> 
					<input type="text" size="2" value="1" name="quantity"> 
					<br> <br> 
					<label>Price:</label><strong>$250.00</strong>
					<input type="hidden" name="price" value="350"> 
					<br> <br>
					<input type="hidden" name="action" value="add"> 
					<input type="submit" name="addToCart" value="Add To Cart">

				</form></td>

			<td><form name="index6" method="POST" action="${pageContext.request.contextPath}/ShoppingCartServlet">
			<div style = "position: relative; left: 100px;">
			<img src="images/deer_head.jpeg" width="300" height="300">
			<input type="hidden" name="img" value="deer_head.jpeg"> 
			</div>
					<label>Product:</label>Wall Door Deer Head
					<input type="hidden" name="modelNo" value="Wall Door Deer Head"> 
					<br> <br> 
					<label>Description:</label>DEER HEAD COAT HOOKS: This impressive, wall mounted cast ABS Plastic coat hook is designed in the shape of deer head and feature two robust hooks. An essential item for home storage and makes a fantastic wall sculpture
					<input type="hidden" name="description" value="wall mounted cast ABS Plastic coat hook is designed in the shape of deer head and feature two robust hooks.">
					<br> <br>
					<label>Quantity:</label>
					<input type="text" size="2" value="1" name="quantity"> 
					<br> <br> 
					<label>Price:</label><strong>$290.00</strong>
					<input type="hidden" name="price" value="140"> 
					<br> <br>
					<input type="hidden" name="action" value="add"> 
					<input type="submit" name="addToCart" value="Add To Cart">

				</form></td>
		</tr>
	</table>
</body>
</html>