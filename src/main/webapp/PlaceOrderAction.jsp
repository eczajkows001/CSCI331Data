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
		String cusNum = request.getParameter("cusNum").toString();
		String pizzaSize = request.getParameter("pizzaSize").toString();
		String pizzaType = request.getParameter("pizzaType").toString();
		String drink = request.getParameter("drink").toString();
		String restaurantNum = request.getParameter("restaurantNum").toString();
		String deliveryType = request.getParameter("deliveryType").toString();
		if (cusNum != null && pizzaType != null && pizzaSize != null && drink != null && restaurantNum != null && deliveryType != null){
			String orderNum = oc.placeOrder(cusNum, pizzaSize, pizzaType, drink, restaurantNum, deliveryType);
			System.out.println("Your order has been placed! Your order number is " + orderNum);
		}
		response.sendRedirect("CustomerHome.jsp");
	%>
</body>
</html>