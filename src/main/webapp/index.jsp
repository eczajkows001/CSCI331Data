<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<title>Reference Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--Styles is how we can use styles consistently throughout elements on a page-->

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
	font-size: 28px;
	padding: 20px;
	width: 200px;
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
	<h1 align='center'>List of text options</h1>
	<br>
	<h1 align='center'>H1</h1>
	<h2 align='left'>H2 align=left</h2>
	<h3 align='right'>H3 align=right</h3>
	<h4 align='center' style='color: red'>H4 style='color:red'</h4>
	<h5 align='center' style='background-color: red'>H5
		style='background-color:red'</h5>
	<h6 align='center' style='font-family: courier;'>H6
		style='font-family:courier;'</h6>
	<p align='center' style='font-size: 200%'>paragraph
		style='font-size:200%'</p>
</body>
<body>
	<div align='center'>
		<h1>List of different elements</h1>
		<div>
			<a href='HomePage.jsp'>link to take you to different pages</a>
		</div>
		<div>
			<button type='button' onClick=''>Button</button>
		</div>
		<div>
			<h3>Table</h3>
			<table>
				<tr>
					<th>Column 1</th>
					<th>Column 2</th>
					<th>Column 3</th>
				</tr>
				<tr>
					<td>td1</td>
					<td>td2</td>
					<td>td3</td>
				</tr>
				<tr>
					<td>td1</td>
					<td>td2</td>
					<td>td3</td>
				</tr>
				<tr>
					<td>td1</td>
					<td>td2</td>
					<td>td3</td>
				</tr>
				<tr>
					<td>td1</td>
					<td>td2</td>
					<td>td3</td>
				</tr>
			</table>
		</div>
		<div>
			<h3>Navigation bar</h3>
			<ul>
				<li><a href='AcceptDelivery.jsp'>Item 1</a></li>
				<li><a href='AcceptDelivery.jsp'>Item 2</a></li>
				<li><a href='AcceptDelivery.jsp'>Item 3</a></li>
				<li style='float: right'><a href='AcceptDelivery.jsp'>Item
						4</a></li>
			</ul>
		</div>
		<div></div>
	</div>
</body>
</html>
