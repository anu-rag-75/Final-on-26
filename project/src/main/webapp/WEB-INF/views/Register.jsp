<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
  <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>

<body bgcolor="burly wood">
<div class="header">
  <nav class="navbar navbar-default">
  <div class="container-fluid">
        <div align="right" class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="color:#FFFFFF;background:#AAABBB;display:block">
         <img src="${pageContext.servletContext.contextPath}/resources/images/Logo.jpg"  width=100 height=100 align=left> 
		<div class="container">
			<div class="btn-group">
					<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Home <span class="caret"></span></button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="index" role=button>Home</a></li>
					</ul>
				</div>
					<div class="btn-group">
					<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Login <span class="caret"></span></button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="login">Admin</a></li>
						<li><a href="login">Customer</a></li>
					</ul>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Products <span class="caret"></span></button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="AddProduct">Add Product</a></li>
						<li><a href="Products">Disp Products</a></li>
					</ul>
				</div>
					<div class="btn-group">
				<a href="recommend">Recommend Friend</a>
				</div>
				</div>
			</div>
		</div>
		<H4> <Marquee bgcolor="red" behavior="alternate" scrollamount=15>V@nu Leathers Products</Marquee></H4>
    </div>
    </nav>
</div>

	<h2 align=center>Customer SignUp Form</h2>

	<form:form method="POST" modelAttribute="customer" action="customer/signup">
		<form:errors path="*" cssClass="errorblock" element="div" />
		<h3>
		<table align=center bgcolor=cyan>
			<tr>
				<td>Name :</td>
				<td><form:input path="name" /></td>
				<td><form:errors path="name" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Contact No. :</td>
				<td><form:input path="phone" /></td>
				<td><form:errors path="phone" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><form:input path="email" /></td>
				<td><form:errors path="email" cssClass="error" /></td>
			</tr>
			
			<tr>
				<td>Password :</td>
				<td><form:input type="password" path="password" /></td>
				<td><form:errors path="password" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Confirm Password :</td>
				<td><form:input type="password" path="confirmpassword" /></td>
				<td><form:errors path="confirmpassword" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="1"><input type="submit" value="SUBMIT"/></td>
			</tr>
		</table>
		</h3>
	</form:form>

</body>
</html>