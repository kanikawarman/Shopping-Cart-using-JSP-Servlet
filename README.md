# Shopping Cart Application

A simple shopping cart application built using JSP and Servlets, designed to demonstrate the functionality of adding items to a cart, viewing the cart, and generating an order receipt. The project is styled with CSS and includes sample product images to enhance the user interface.

---

## Table of Contents
1. [Project Features](#project-features)
2. [Technologies Used](#technologies-used)
3. [Folder Structure](#folder-structure)
4. [How to Run the Project](#how-to-run-the-project)

---

## Project Features
- Users can browse available products.
- Add selected products to a shopping cart.
- View the cart and the total price of selected items.
- Generate an order receipt for the cart items.

---

## Technologies Used
- **Backend:** Java (Servlets, JSP)
- **Frontend:** HTML, CSS
- **Images:** Sample product images are included
- **Build Tool:** Apache Tomcat (Servlet Container)
- **IDE Recommended:** Eclipse or IntelliJ IDEA

---

## Folder Structure

```
ShoppingCart/
├── src/
│   ├── CartBeans.java             # JavaBean for managing the shopping cart
│   ├── CartItemBean.java          # JavaBean for individual cart items
│   ├── ShoppingCartServlet.java   # Servlet to handle shopping cart operations
├── web/
│   ├── index.jsp                  # Homepage
│   ├── ShoppingCart.jsp           # Displays the shopping cart
│   ├── OrderReceipt.jsp           # Generates order receipt
│   ├── invitationStyle.css        # CSS for styling
│   ├── images/                    # Product images folder
│       ├── Wall_hook.jpg
│       ├── Wooden_Candle_Holder.jpg
│       ├── deer_head.jpeg
│       ├── diya_candle.jpg
│       ├── handicraft.jpeg
│       ├── vase.jpg
├── README.md                      # Project documentation
```

---

## How to Run the Project

### Prerequisites
1. Ensure **Java JDK** and **Apache Tomcat Server** are installed.
2. Use a Java-supported IDE like **Eclipse** or **IntelliJ IDEA**.

### Steps
1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/ShoppingCart.git
   ```
   
2. **Import into IDE**
   - Open your IDE and import the project as a Maven/Java project.

3. **Configure Apache Tomcat**
   - Add Apache Tomcat to your IDE's server configurations.
   - Deploy the project on the server.

4. **Run the Application**
   - Start the Apache Tomcat server.
   - Access the application in your browser at `http://localhost:8080/ShoppingCart`.

5. **Usage**
   - Browse products on the homepage (`index.jsp`).
   - Add items to the cart.
   - View the cart and checkout to generate an order receipt.

---

