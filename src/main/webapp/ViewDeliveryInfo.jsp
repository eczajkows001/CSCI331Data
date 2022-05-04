<%@ page contentType="text/html;charset=UTF-8" language="java" import="delivery.*" import="java.util.*" %>
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
	<% DeliveryController oc = new DeliveryController();
	String res = request.getParameter("orderNum");
	if(request.getParameter("orderNum") != "" && request.getParameter("orderNum") != null ){ %>
	<div align='center'>
		<h1>Delivery Info</h1>
		<hr>
		<br>
		<table style="text-align: left; width: 55%;" border="1" cellpadding="2" cellspacing="2">
		<tr>

			<th> Order Number </th>
			<th> First Name </th>
			<th> Street </th>
			<th> City </th>
			<th> State </th>
			<th> ZipCode </th>

		</tr>
		<%List<Delivery> list = oc.viewDeliveryInfo(request.getParameter("orderNum")); 
		for(Delivery o: list){%>
		<tr>
			<td><%out.println(o.getCurrentOrder()); %> </td>
			<td><%out.println(o.getFname()); %> </td>
			<td><%out.println(o.getStreet()); %> </td>
			<td><%out.println(o.getCity()); %> </td>
			<td><%out.println(o.getState()); %> </td>
			<td><%out.println(o.getZipcode()); %> </td>
		</tr>
		<%}%>
		
	<%} 
	else{%>
	<form method="post" action="ViewDeliveryInfo.jsp"><br>
	<div align='center'>
		<h1>View Delivery Information</h1>
		<hr>
		Please enter your current order number:
		<p>Order Number: <input type="text" name="orderNum" class="form-control" > </p>
		
	</div>
	</form>
	<%} %>
	</div>
</body>
</html>