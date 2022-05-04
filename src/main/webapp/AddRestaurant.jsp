<%@ page contentType="text/html;charset=UTF-8" language="java"
	import="menu.*" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Menu Item</title>
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
	font-family: arial, sans-serif;
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
	


	<form class="w3-container w3-card-4 w3-light-grey" method="post" action="AddRestaurantAction.jsp">
		
		<label for="restaurantNumber"> Restaurant Number:</label> <input
			type="text" id="restaurantNumber2" name="restaurantNumber2"> <br>
		
		<label for="hours"> Hours:</label> <input type="text"
			id="hours2" name="hours2"> <br>
			
		<label for="managerName"> Manager Name:</label> <input
			type="text" id="managerName2" name="managerName2"> <br>
		
		<label for="currentDeals"> Current Deals:</label> <input type="text"
			id="currentDeals2" name="currentDeals2"> <br>
			
		<label for="phoneNumbers"> Phone Number:</label> <input type="text"
			id="phoneNumbers2" name="phoneNumbers2"> <br>
	
		
	<input name="submit" value="submit" type="submit">
	</form>
	


	<script>
			function submitNewResItem(){
				restaurantController rc= newRestaurantController();
				var resNum = document.getElementById('restaurantNumber2').value;
				var hours= document.getElementById('hours2').value;
				var managerName = document.getElementById('managername2').value;
				var currentDeals = document.getElementById('currentDeals2').value;
				var phoneNumber = document.getElementById('phoneNumber2').value;
				
				console.log(mItem);
				
				console.log(resNum);
				if (!resNum == '' && !hours == '' && !managerName == '' && !currentDeals == '' && !phoneNumber == ''){
					rc.addRestaurant(resNum, hours, managerName, currentDeals, phoneNumber );
					alert("Alert submitted");
				}
			}
			
	</script>



</body>
</html>