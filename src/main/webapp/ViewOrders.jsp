<%@ page contentType="text/html;charset=UTF-8" language="java"
	import="order.*" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Orders</title>
<style>
div {
	margin-top: 10px;
}

<!--
-->
button {
	display: inline-block;
	background-color: #d3d3d3;
	border-radius: 10px;
	border: 4px double #cccccc;
	color: 'red';
	text-align: center;
	font-size: 16px;
	padding: 20px;
	width: 175px;
	-webkit-transition: all 0.5s;
	-moz-transition: all 0.5s;
	-o-transition: all 0.5s;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
}

button:hover {
	background-color: #f5f5f5;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
	border: 1px solid black;
}

tr:nth-child(even) {
	background-color: #d3d3d3
}

th {
	background-color: darkGrey;
	color: white;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
	border-right: 1px solid #bbb;
}

li:last-child {
	border-right: none;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover:not(.active) {
	background-color: #111;
}

.active {
	background-color: #04AA6D;
}
</style>
</head>
<body>
	<div style='margin-top: 0px'>
		<ul>
			<li><a href='HomePage.jsp'>Home Page</a></li>
			<li><a href='CustomerHome.jsp'>Customer Page</a></li>
			<li><a href='EmployeeHome.jsp'>Employee Page</a></li>
		</ul>
	</div>
	<div align='center'>
		<% OrderController oc = new OrderController();
	String res = request.getParameter("orderNum");
	if(request.getParameter("orderNum") != "" && request.getParameter("orderNum") != null ){ %>
		<div align='center'>
			<h1>Orders in Progress</h1>
			<hr>
			<br>
			<table style="text-align: left; width: 55%;" border="1"
				cellpadding="2" cellspacing="2">
				<tr>
					<th>Order Number</th>
					<th>Customer Number</th>
					<th>Status</th>
					<th>Drink</th>
					<th>Order Total</th>
					<th>Pizza Type</th>
					<th>Pizza Size</th>
				</tr>
				<%List<Order> list = oc.getOrders(request.getParameter("orderNum")); 
		for(Order o: list){%>
				<tr>
					<td>
						<%out.println(o.getOrderNum()); %>
					</td>
					<td>
						<%out.println(o.getCustomerNum()); %>
					</td>
					<td>
						<%out.println(o.getStatus()); %>
					</td>
					<td>
						<%out.println(o.getDrink()); %>
					</td>
					<td>
						<%out.println(o.getOrderTotal()); %>
					</td>
					<td>
						<%out.println(o.getPizzaType()); %>
					</td>
					<td>
						<%out.println(o.getPizzaSize()); %>
					</td>
				</tr>
				<%}%>

				<%} 
	else{%>
				<form method="post" action="ViewOrders.jsp">
					<br>
					<div align='center'>
						<h1>View Order Information</h1>
						<hr>
						Please enter your customer number:
						<p>
							Customer Number: <input type="text" name="orderNum"
								class="form-control">
						</p>

					</div>
				</form>
				<%} %>
				</div>
</body>
</html>