<%@ page language="java" contentType="text/html; charset=UTF-8" import="order.OrderController"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		OrderController oc = new OrderController();
		String cusNum = (String) request.getParameter("cusNum");
		
		//System.out.println("testy: " + cusNum);
		
		String pizzaSize = (String) request.getParameter("pizzaSize");
		
		String pizzaType = (String) request.getParameter("pizzaType");
		String drink = (String) request.getParameter("drink");
		String restaurantNum = (String) request.getParameter("restaurantNum");
		String deliveryType = (String) request.getParameter("deliveryType");
		

 		String orderNum = oc.placeOrder(cusNum, pizzaSize, pizzaType, drink, restaurantNum, deliveryType);
		//response.sendRedirect("CustomerHome.jsp");
	%>
	<h1>Your order number is <%=orderNum %>.</h1>
	<a href="CustomerHome.jsp">Customer Menu</a>
</body>
</html>