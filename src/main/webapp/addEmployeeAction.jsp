

<%@ page contentType="text/html;charset=UTF-8" language="java" import="employee.*" import="order.*" import="java.util.*" %>

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
	
	<% 
	EmployeeController ec = new EmployeeController();
	
	String fName = request.getParameter("fname2").toString();
	String lName = request.getParameter("lname2").toString();
	String SSN = request.getParameter("SSN2").toString();
	String empNum = request.getParameter("employeeNumber2").toString();
	String hourString = request.getParameter("hours2").toString();
	Integer hours = Integer.parseInt(hourString);
	String resNum = request.getParameter("restaurantNumber2").toString();
	if(fName != null && lName != null && SSN != null && empNum != null && hourString != null && hours != null && resNum != null){
	ec.addNewEmployee(fName, lName, SSN, empNum, hourString, resNum);
	response.sendRedirect("EmployeeHome.jsp");
	}
	
	%>
</body>
</html>