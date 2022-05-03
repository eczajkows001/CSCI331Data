<%@ page language="java" contentType="text/html; charset=UTF-8" import="Review.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		ReviewController rc = new ReviewController();
		String resNum = request.getParameter("resNum");
		String cusNum = request.getParameter("cusNum");
		String rating = request.getParameter("rating");
		String review = request.getParameter("review");
		System.out.println(resNum);
		System.out.println(cusNum);
		System.out.println(rating);
		System.out.println(review);
		if (resNum != null && cusNum != null && rating != null && review != null){
			rc.addReview(resNum, cusNum, rating, review);
			System.out.println("reached here");
		}
		else{
			System.out.println("did not here");
		}
		response.sendRedirect("CustomerHome.jsp");
	%>
</body>
</html>