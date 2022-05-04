<%@ page contentType="text/html;charset=UTF-8" language="java"
	import="Review.*" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Orders</title>
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
	<% ReviewController rc = new ReviewController();
	String res = request.getParameter("restaurant");
	String cust = request.getParameter("customer");
	if(request.getParameter("restaurant") != "" && request.getParameter("restaurant") != null && request.getParameter("customer") != "" && request.getParameter("customer") != null ){ %>
	<div align='center'>
		<h1>Reviews For Restaurant: <%out.println(res);%> Customer: <%out.println(cust);%> </h1>
		<hr>
		<table style="text-align: left; width: 55%;" border="1"
			cellpadding="2" cellspacing="2">
			<tr>
				<th>Restaurant Number</th>
				<th>Customer Number</th>
				<th>Rating</th>
				<th>Review</th>
			</tr>
			<%List<Review> list = rc.searchReviewsByBoth(request.getParameter("restaurant"), request.getParameter("customer")); 
		for(Review r: list){%>
			<tr>
				<td>
					<%out.println(r.getRestNum()); %>
				</td>
				<td>
					<%out.println(r.getCustomerNum()); %>
				</td>
				<td>
					<%out.println(r.getRating()); %>
				</td>
				<td>
					<%out.println(r.getReview()); %>
				</td>
			</tr>
		<%}%>
		<a href='SearchReview.jsp'>Search Again</a>

			</div>
	<%}%>
	<%if(request.getParameter("restaurant") != "" && request.getParameter("restaurant") != null && (request.getParameter("customer") == "" || request.getParameter("customer") == null)){ %>
	<div align='center'>
		<h1>Reviews For Restaurant: <%out.println(res);%></h1>
		<hr>
		<table style="text-align: left; width: 55%;" border="1"
			cellpadding="2" cellspacing="2">
			<tr>
				<th>Restaurant Number</th>
				<th>Customer Number</th>
				<th>Rating</th>
				<th>Review</th>
			</tr>
			<%List<Review> list = rc.searchReviewsByRes(request.getParameter("restaurant")); 
		for(Review r: list){%>
			<tr>
				<td>
					<%out.println(r.getRestNum()); %>
				</td>
				<td>
					<%out.println(r.getCustomerNum()); %>
				</td>
				<td>
					<%out.println(r.getRating()); %>
				</td>
				<td>
					<%out.println(r.getReview()); %>
				</td>
			</tr>
		<%}%>
		<a href='SearchReview.jsp'>Search Again</a>

			</div>
	<%}%>
	<%if(request.getParameter("customer") != "" && request.getParameter("customer") != null && (request.getParameter("restaurant") == "" || request.getParameter("restaurant") == null)){ %>
	<div align='center'>
		<h1>Reviews For Customer: <%out.println(cust);%></h1>
		<hr>
		<table style="text-align: left; width: 55%;" border="1"
			cellpadding="2" cellspacing="2">
			<tr>
				<th>Restaurant Number</th>
				<th>Customer Number</th>
				<th>Rating</th>
				<th>Review</th>
			</tr>
			<%List<Review> list = rc.searchReviewsByCust(request.getParameter("customer")); 
		for(Review r: list){%>
			<tr>
				<td>
					<%out.println(r.getRestNum()); %>
				</td>
				<td>
					<%out.println(r.getCustomerNum()); %>
				</td>
				<td>
					<%out.println(r.getRating()); %>
				</td>
				<td>
					<%out.println(r.getReview()); %>
				</td>
			</tr>
		<%}%>

			<a href='SearchReview.jsp'>Search Again</a>
			</div>

	<%}%>
	<%if((request.getParameter("restaurant") == "" || request.getParameter("restaurant") == null) && (request.getParameter("customer") == "" || request.getParameter("customer") == null )){ %>
	<div align='center'>
		<h1>Please Enter Which Customer And/Or Restaurant You Would Like To Search Reviews For: </h1>
		<hr>
		<form method="post" action="SearchReview.jsp">
				<br>
				<div align='center'>
					<p>
						Restaurant Number: <input type="text" name="restaurant"
							class="form-control">
					</p>
					<p>
						Customer Number: <input type="text" name="customer"
							class="form-control">
					</p>
					<input type="submit" value="submit">

				</div>
			</form>

			</div>
	<%}%>

		
</body>
</html>