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

	<%if(request.getParameter("employeeNumber") != "" && request.getParameter("employeeNumber") != null){ %>
	<div allign='center'>
		<h1>Employee(s) Found:</h1>
	</div>
	<% EmployeeController ec = new EmployeeController(); %>
	<%List<Employee> employeeList = new ArrayList<Employee>();
    employeeList = ec.searchEmployees(request.getParameter("employeeNumber"));%>

	<div align='center'>
		<h2>Results</h2>
	</div>

	<table>
		<tr>
			<th>Last Name</th>
			<th>First Name</th>
			<th>Social Security Number</th>
			<th>Hours</th>
			<th>Employee Number</th>
			<th>Restaurant Number</th>
		</tr>

		<%for(Employee e: employeeList){ %>
		<tr>
			<td>
				<%out.println(e.getLast()); %>
			</td>
			<td>
				<%out.println(e.getFirst()); %>
			</td>
			<td>
				<%out.println(e.getSsn()); %>
			</td>
			<td>
				<%out.println(e.getHours()); %>
			</td>
			<td>
				<%out.println(e.getEmpNum());%>
			</td>
			<td>
				<%out.println(e.getRestaurantNum());%>
			</td>
		</tr>
		<%} %>

		<tr>
			<td>dummy data</td>
			<td>dummy data</td>
			<td>dummy data</td>
			<td>dummy data</td>
			<td>dummy data</td>
			<td>dummy data</td>
		</tr>
	</table>
	<% }
	else{%>
	<form method="post" action="SearchEmployee.jsp">
		<br>
		<div align='center'>
			<h1>Search Employees</h1>
		</div>
		<div>
			<label for="Employee Number"> Please Enter The Employee
				Number:</label><br> <input type="text" name="employeeNumber"
				class="form-control">
		</div>
	</form>
	<%} %>

</body>
</html>