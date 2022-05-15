<%@page import="model.MonitorService" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css\footer.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/main.js"></script>
<meta charset="ISO-8859-1">
<title>Add Your Complain</title>

<nav class="navbar navbar-expand-md navbar-dark" style="background-color:#4D4D4D">
<ul class="navbar-nav">
<li><a href="#" class="nav-link">ElecroGrid Online Platform</a></li>
</ul>
</nav>

</head>
<body style="background-color: #E7E8E3;">



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

<br>

<div class="container">
<div class="row">

<div class="container col-md-5">
<div class="card">
<div class="card-body">


<caption><h2>Add Monitoring Details</h2></caption>

<br>

<form method="post" action="AddMoniter.jsp">

Monitor ID: <input name="moniter_no" type="text" class="form-control form-control-sm" required><br><br>
Customer ID: <input name="customer_id" type="text" class="form-control form-control-sm" required><br><br>
Unit Amount: <input name="unit_amount" type="text" class="form-control form-control-sm" required><br><br>
Previous Unit: <input name="previous_unit" type="text" class="form-control form-control-sm" required><br><br>
Current Unit: <input name="current_unit" type="text" class="form-control form-control-sm" required><br><br>
Monthly Amount: <input name="monthly_amount" type="text" class="form-control form-control-sm" required><br><br>



<input name="btnSubmit" type="submit" value="Submit" class="btn btn-info active"><br><br>
</form>

<%
out.print(session.getAttribute("statusMsg"));
%>

<br>




</div>
</div>
</div>
</div>
</div>

</body>

<br>
<!-- Site footer -->
<footer class="site-footer">
<div class="container">
<div class="row">
<div class="col-sm-12 col-md-6">
<h6>About</h6>
<p class="text-justify"> <i> Kurukulasuriya M.C.F IT20082642 </i> This project is based on a company named <b>“ElectroGrid (EG)"</b> who maintains the power grid of the country. They have a system to monitor the power consumption of the users, generate the monthly bills and automatically send to the users, and accept the online payments from the users..</p>
</div>



<div class="col-xs-6 col-md-3">
<h6>Categories</h6>
<ul class="footer-links">
<li><a href="#">Payment Management</a></li>
<li><a href="AddMoniter.jsp">Monitor Management</a></li>
<li><a href="#">Customer Management</a></li>
<li><a href="#">Complain Management</a></li>

</ul>
</div>



<div class="col-xs-6 col-md-3">
<h6>Quick Links</h6>
<ul class="footer-links">
<li><a href="#">HomePage</a></li>
<li><a href="">Contact Us</a></li>
<li><a href="">Contribute</a></li>
<li><a href="">Privacy Policy</a></li>

</ul>
</div>
</div>
<hr>
</div>
<div class="container">
<div class="row">
<div class="col-md-8 col-sm-6 col-xs-12">
<p class="copyright-text">Copyright &copy; 2022 All Rights Reserved by
<a href="#">Kurukulasuriya M.C.F IT20082642</a>.
</p>
</div>



<div class="col-md-4 col-sm-6 col-xs-12">
<ul class="social-icons">
<li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
<li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
<li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
</ul>
</div>
</div>
</div>
</footer>

</html>