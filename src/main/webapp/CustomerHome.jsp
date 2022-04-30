<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer Home Page</title>
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
			<li><a href='index.jsp'>Reference Page</a></li>
			<li><a href='CustomerHome.jsp'>Customer Page</a></li>
			<li><a href='EmployeeHome.jsp'>Employee Page</a></li>
			<li style='float:right'><a href='AcceptDelivery.jsp'>Login</a></li>
		</ul>
	</div>
	<div align='center'>
		<h1>Customer Home Page</h1>
	</div>
	<div align='center'>
		<button type='button' onclick="location.href='ViewMenu.jsp'">View Menu</button>
		<button type='button' onclick="location.href='PlaceOrder.jsp'">Place Order</button>
		<button type='button' onclick="location.href='AccountInfo.jsp'">View Account Info</button>
		<button type='button' onclick="location.href='Reviews.jsp'">Reviews</button>
	</div>
</body>
</html>