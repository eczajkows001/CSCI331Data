<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Place Order</title>
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
		<form class="w3-container w3-card-4 w3-light-grey" method="post" action="PlaceOrderAction.jsp">
			<h2>Place Order</h2>

			<div style="margin-top:10px">
	  			<p><label>Customer Number:</label>
	  			<input class="w3-input w3-border" type="text" name='cusNum' id='cusNum'></p>
	  		</div>
	  		<br>
	  		<div>
				<label>Size:
					<select id = "pizzaSize">
						<option value = "small">Small</option>
			  			<option value = "medium">Medium</option>
			  			<option value = "large">Large</option>
					</select>

				</label>
			</div>
			<br>
			<div>

				<label>Type: 
		  			<select id = "pizzaType">
		  				<option value = "Cheese">Cheese</option>
		  				<option value = "Pepperoni">Pepperoni</option>
		  				<option value = "Sausage">Sausage</option>
		  				<option value = "Taco">Taco</option>
		  				<option value = "Buffalo Chicken">Buffalo Chicken</option>
		  			</select>
		  		</label>
			</div>
			<br>
			<div>
				<label>Drink:
					<select id = "drink">
						<option value = "small">None</option>
		  				<option value = "small">Water</option>
		  				<option value = "small">Pepsi</option>
		  				<option value = "small">Diet Pepsi</option>
		  				<option value = "small">Mtn. Dew</option>
					</select>

				</label>
			</div>
			<br>
			<div>
				  <label>How would you like to receive your order?:
					<select id = deliveryType>
						<option value = "p">Pickup</option>
		  				<option value = "d">Delivery</option>
					</select>
				</label>
				</div>
				<br>
				<div>
				  <label>From which restaurant?:
					<select id = restaurantNum>
						<option value = "001">001</option>
		  				<option value = "100">100</option>
		  				<option value = "200">200</option>
		  				<option value = "300">300</option>
					</select>
				</label>
				</div>
				<br>
				<input name="Place Order" value="submit" type="submit">
				<br>
		</form>
		<br>
		

		</div>
</body>
</html>

<%-- <%@page language="java" import="user.*"
    import="course.*"
	import="java.util.*"%>
	<%@ page import="java.sql.ResultSet" %>
	
<!-- commented out -->
<%@include file="VerifyLogin.jsp"%>
<!-- commented out -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Add New Course</title>
<link rel="stylesheet" href="stylesheet.css">
<div class="navbar">
  <a href="AdminHome.jsp">Rate My Professor CSBSJU</a>
  <div class="dropdown">
    <button class="dropbtn">Manage 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      	<a href= "ListOfComment.jsp">View all comments</a>
		<a href= "ListOfStudent.jsp">View all students</a>
		<a href= "ListOfAdmin.jsp">View all admins</a>
		<a href = "ListOfProfessor.jsp">View all professors</a>
		<a href = "ListOfCourses.jsp">View all courses</a>
    </div>
  </div>
  <div class="dropdown">
    <button class="dropbtn">Quick action 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="Add_New_Professor.jsp">Add a new professor</a>
    </div>
  </div>
  <a href="ListOfCourses.jsp">Back to course menu</a>  
</div>

<form method="post" action="Add_Course_Action.jsp" name="Submit_New">
<table style="text-align: left; width: 50%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">
<tr>
<tr>
	<th style="vertical-align: top; text-align: center;">Course ID</th>
	<td style="vertical-align: top;"><input type="text" id="courseid" name="courseid" value=""></td>
</tr>
<tr>
	<th style="vertical-align: top; text-align: center;">Course Name</th>
	<td style="vertical-align: top;"><input type="text" id="cname" name="cname" value=""></td>
</tr>
<tr>
	<th style="vertical-align: top; text-align: center;">Credits </th>
	<td style="vertical-align: top;"><input type="text" id="credits" name="credits" value=""></td>
</tr>
<tr>
	<th style="vertical-align: top; text-align: center;">Department</th>
		<td style="vertical-align: top;"><input type="text" id="department" name="department" value=""></td>
</tr>
</tbody>
</table>
<div class="checkboxes">
  <p>Select your desired curriculum attributes:</p>
  <input type="checkbox" id="ic" name="att" value=0>
  <label for="att">IC</label>

  <input type="checkbox" id="ge" name="att" value=1>
  <label for="att">GE</label>

  <input type="checkbox" id="et" name="att" value=2>
  <label for="att">ET</label>

  <input type="checkbox" id="ex" name="att" value=3>
  <label for="att">EX</label>

  <input type="checkbox" id="ma" name="att" value=4>
  <label for="att">MA</label>

  <input type="checkbox" id="ns" name="att" value=5>
  <label for="att">NS</label>
</div>

<div class="checkboxes">
  <p>Select professors who have taught the course:</p>
  <%ArrayList<ArrayList<String>> professors = ProfessorController.StaticProfessorController.getAllProfessors();
  for (int i = 0; i < professors.size(); i++) {
	  String pid = professors.get(i).get(0);
	  String pname = professors.get(i).get(1);
  	%>
	  
  	<input type="checkbox" id="pid" name="profId" value=<%=pid %>>
  	<label for="profId"><%=pname %></label><br>
<% }%>

</div>

	    <input name="Submit" value="Submit" type="submit">
	</form>
>>>>>>> ff7265447291ce2faa79194c8a2899f5b0fe7109
</body>
</html> --%>
