<%@ page contentType="text/html;charset=UTF-8" language="java"
	import="employee.*" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage Employees</title>
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
	<script>
			function submitRemoveEmployee(){
				EmployeeController ec1 = newEmployeeController();

				var employeeNumToRemove = document.getElementById('EmployeeNumber3').value;
				console.log(employeeNumToRemove);
				if (!employeeNumToRemove = ''){
					ec1.removeEmployee();
					alert("Alert submitted");
				}
			}
		</script>

	<div align='center'>
		<h1>Remove Employee</h1>
	</div>

	<label for="Employee Number:"> Employee Number:</label>
	<input type="text" id="employeeNumber3" name="employeeNumber3">
	<br>
	<button type='button' id='submitRemoveEmployeeButton'
		onclick="submitNewEmployee()">Remove Employee</button>

	<div align='center'>
		<h1>Add Employee</h1>
	</div>


	<form>
		<label for="firstName:"> First Name:</label> <input type="text"
			id="fname2" name="fname"> <br> <label for="Last Name">
			Last Name:</label> <input type="text" id="lname2" name="lname"> <br>
		<label for="SSN"> Social Security Number:</label> <input type="text"
			id="SSN2" name="SSN"> <br> <label for="Employee Number">
			Employee Number:</label> <input type="text" id="employeeNumber2"
			name="employeeNumber"> <br> <label for="Hours">
			Hours:</label> <input type="text" id="hours2" name="hours"> <br>
		<label for="restaurantNumber"> Restaurant Number:</label> <input
			type="text" id="restaurantNumber2" name="restaurantNumber"> <br>
	</form>
	<button type='button' id='submitEmployeeButton'
		onClick="submitNewEmployee()">Add Employee</button>


	<script>
			function submitNewEmployee(){
				EmployeeController ec = newEmployeeController();

				var fName = document.getElementById('fname2').value;
				var lName = document.getElementById('lname2').value;
				var SSN = document.getElementById('SSN2').value;
				var empNum = document.getElementById('employeeNumber2').value;
				var hours = document.getElementById('hours2').value;
				var resNum = document.getElementById('restaurantNumber2').value;
				console.log(fName);
				console.log(lName);
				console.log(SSN);
				console.log(empNum);
				console.log(hours);
				console.log(resNum);
				if (!fName == '' && !lName == '' && !SSN == '' && !empNum == ''&& !hours == '' && !resNum == ''){
					ec.addNewEmployee(fname, lname, SSN, empNum, hours, resNum);
					alert("Alert submitted");
				}
			}
		</script>



</body>
</html>