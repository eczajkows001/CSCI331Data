<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Place Order</title>
	<style>	
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
		select {
        width: 140px;
        height: 35px;
        padding: 4px;
        border-radius: 4px;
        box-shadow: 2px 2px 8px #999;
        background: #eee;
        border: none;
        outline: none;
        display: inline-block;
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        cursor: pointer;
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
	<div class="w3-container">
		<form class="w3-container w3-card-4 w3-light-grey">
			<h2>Place Order</h2>
			<div>
				<label>Size:
					<select>
						<option>Small</option>
			  			<option>Medium</option>
			  			<option>Large</option>
					</select>
				</label>
			</div>
			<br>
			<div>
				<label>Type: 
		  			<select>
		  				<option>Cheese</option>
		  				<option>Pepperoni</option>
		  				<option>Sausage</option>
		  				<option>Taco</option>
		  				<option>Buffalo Chicken</option>
		  			</select>
		  		</label>
			</div>
			<br>
			<div style="margin-bottom:10px">
				<label>Drink:
					<select>
						<option>None</option>
		  				<option>Water</option>
		  				<option>Pepsi</option>
		  				<option>Diet Pepsi</option>
		  				<option>Mtn. Dew</option>
					</select>
				</label>
			</div>
		</form>
		<br>
		<button type='button' onclick="location.href='CustomerHome.jsp'">Place Order</button>
	</div>
</body>
</html>