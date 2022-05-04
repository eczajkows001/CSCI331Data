<%@ page contentType="text/html;charset=UTF-8" language="java" import="employee.*" import="order.*" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delivery Orders</title>
	<style>	
		div {
			margin-top: 10px;
		}
		<!---->
		
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
		table{
			border-collapse: collapse;
			width: 100%;
		}
		th, td {
			text-align: left;
			padding: 8px;
			border: 1px solid black;
		}
		tr:nth-child(even){
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
		  border-right:1px solid #bbb;
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
	<% DeliveryEmployeeController oc = new DeliveryEmployeeController();
	String res = request.getParameter("ssn");
	if(request.getParameter("ssn") != "" && request.getParameter("ssn") != null ){ %>
	<div align='center'>
		<h1>Available orders to complete</h1>
		<hr>
		<br>
		<table style="text-align: left; width: 55%;" border="1" cellpadding="2" cellspacing="2">
		<tr>

			<th> Order Number </th>
			<th> Customer Number </th>
			<th> Status </th>
			<th> Pizza Type </th>
			<th> Pizza Size </th>
			<th> Drink </th>
			<th> Restaurant Num </th>
			<th> Order Total </th>
			<th> Delivery Type </th>
			<th> </th>

		</tr>
		<%List<Order> list = oc.viewMyDeliveries(request.getParameter("ssn")); 
		for(Order o: list){%>
		<tr>
			<td><%out.println(o.getOrderNum()); %> </td>
			<td><%out.println(o.getCustomerNum()); %> </td>
			<td><%out.println(o.getStatus()); %> </td>
			<td><%out.println(o.getPizzaType()); %> </td>
			<td><%out.println(o.getPizzaSize()); %> </td>
			<td><%out.println(o.getDrink()); %> </td>
			<td><%out.println(o.getRestaurantNum()); %> </td>
			<td><%out.println(o.getOrderTotal()); %> </td>
			<td><%out.println(o.getDeliveryType()); %> </td>
			<td> <form method="post" action="CompleteDeliveryAction.jsp" name="complete">
	    <input name="Complete" value="Complete" type="submit">
	    <input name="orderNum" value= "<%=o.getOrderNum() %>" type="hidden">
	    <input name="ssn" value= "<%=request.getParameter("ssn") %>" type="hidden">

	</form></td>
		</tr>
		<%}%>
		
	<%} 
	else{%>
	<form method="post" action="CompleteDelivery.jsp"><br>
	<div align='center'>
		<h1>View Completable Deliveries</h1>
		<hr>
		Please enter your ssn:
		<p>Employee SSN: <input type="text" name="ssn" class="form-control" > </p>
		
	</div>
	</form>
	<%} %>
	</div>
</body>
</html>