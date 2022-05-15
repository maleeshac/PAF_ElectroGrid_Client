

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="model.MonitorService" %>
//view and delete
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
<h1>Monitoring Details</h1>
<%
	//Delete user----------------------------------
if (request.getParameter("bill_no") != null)
{
	MonitorService userObj = new MonitorService();
String stsMsg = userObj.deleteUser(request.getParameter("bill_no"));
session.setAttribute("statusMsg", stsMsg);
}



MonitorService userObj = new MonitorService();
out.print(userObj.readUserDetails());
%>
</body>
</html>