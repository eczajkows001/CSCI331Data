<%@ page contentType="text/html;charset=UTF-8" language="java"
	import="restaurant.*" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Menu</title>
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
	<% restaurantController rc = new restaurantController();%>
	<div align='center'>
		<h1> Information For All Restaurants</h1>
		
		<hr>
		<table style="text-align: left; width: 55%;" border="1"
			cellpadding="2" cellspacing="2">
			<tr>
				<th>Restaurant Number</th>
				<th>Hours</th>
				<th>Manager Name</th>
				<th>Current Deals</th>
				<th>Phone Number</th>
				
			</tr>
			
			<%List<restaurant> list = rc.getResInfo();
		for(restaurant r: list){%>
			<tr>
				<td>
					<%out.println(r.getResNum()); %>
				</td>
				<td>
					<%out.println(r.getHours()); %>
				</td>
				<td>
					<%out.println(r.getManagerName()); %>
				</td><td>
					<%out.println(r.getCurrentDeals()); %>
				</td>
				<td>
					<%out.println(r.getPhoneNumber()); %>
				</td>
				
			</tr>
			<%}%>

			</div>
	
</body>
</html>