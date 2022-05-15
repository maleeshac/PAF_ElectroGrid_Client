<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="model.MonitorService" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/main.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%
	//Update user data----------------------------------
if (request.getParameter("bill_no") != null)
{
	MonitorService userObj = new MonitorService();
String stsMsg = userObj.EditUserDetails(request.getParameter("bill_no"),

request.getParameter("moniter_no"),
request.getParameter("customer_id"),
request.getParameter("unit_amount"),
request.getParameter("previous_unit"),
request.getParameter("current_unit"),
request.getParameter("monthly_amount"));
session.setAttribute("statusMsg", stsMsg);
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register User</title>
</head>

<body>

<h1> Update Monitor Details</h1>

<form method="post" action="UpdateMonitor.jsp">
Monitor ID:
<input name="moniter_no" type="text"
class="form-control form-control-sm">
Customer ID:
<input name="customer_id" type="text"
class="form-control form-control-sm">
<br> Unit Amount:
<input name="unit_amount" type="text"
class="form-control form-control-sm">
<br> Previous Unit:
<input name="previous_unit" type="text"
class="form-control form-control-sm">
<br> Current Unit:
<input name="current_unit" type="text"
class="form-control form-control-sm">
<br> Monthly Amount:
<input name="monthly_amount" type="text"
class="form-control form-control-sm">

<br>
<input name="btnsubmit" type="submit" value="update"
class="btn btn-primary">
</form>



<%
	out.print(session.getAttribute("statusMsg"));
%>
<br>
<%
	MonitorService userObj = new MonitorService();
out.print(userObj.readUserDetails());
%>



</body>
</html>