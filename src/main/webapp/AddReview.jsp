
<%@ page contentType="text/html;charset=UTF-8" language="java" import="Review.*" import="order.*" import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Add Review</title>
<style>
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
	<div class="w3-container">

		<form class="w3-container w3-card-4 w3-light-grey" method="post" action="AddReviewAction.jsp">
  			<h2>Add Review</h2>
  			<div style="margin-top:10px">
	  			<p><label>Customer Number:</label>
	  			<input class="w3-input w3-border" type="text" name='cusNum' id='cusNum'></p>
	  		</div>
  			<div>
  				<label>Restaurant: 
	  				<select id='resNum' name='resNum'>
	  					<option value='001'>Location 001</option>
	  					<option value='100'>Location 100</option>
	  					<option value='200'>Location 200</option>
	  				</select>
	  			</label>
  			</div>
  			<br>
  			<div>
		  		<label>Rating: 
		  			<select id='rating' name='rating'>
		  				<option value="1">1</option>
		  				<option value="2">2</option>
		  				<option value="3">3</option>
		  				<option value="4">4</option>
		  				<option value="5">5</option>
		  			</select>
		  		</label>
  			</div>
  			<br>
	  		<div style="margin-top:10px">
	  			<p><label>Review</label>
	  			<input class="form-control" type="text" name='review' id='review'></p>
	  		</div>
	  		<input name="submit" value="submit" type="submit">
		</form>
		<br>
	</div>
</body>
</html>