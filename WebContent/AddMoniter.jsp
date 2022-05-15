<%@page import="model.MonitorService" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/main.js"></script>
<meta charset="ISO-8859-1">
<title>Add Your Complain</title>
</head>
<body>



<%
	//Insert User Data----------------------------------
if (request.getParameter("moniter_no") != null)
{
	MonitorService userObj = new MonitorService();
String stsMsg = userObj.insertUser(request.getParameter("moniter_no"),



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
<title>User Management</title>
</head>

<body>

<h1>Add Monitoring Details</h1>


<form method="post" action="AddMoniter.jsp">

Monitor ID: <input name="moniter_no" type="text"><br><br>
Customer ID: <input name="customer_id" type="text"><br><br>
Unit Amount: <input name="unit_amount" type="text"><br><br>
Previous Unit: <input name="previous_unit" type="text"><br><br>
Current Unit: <input name="current_unit" type="text"><br><br>
Monthly Amount: <input name="monthly_amount" type="text"><br><br>



<input name="btnSubmit" type="submit" value="Submit"><br><br>
</form>

<%
out.print(session.getAttribute("statusMsg"));
%>

<br>





</body>
</html>