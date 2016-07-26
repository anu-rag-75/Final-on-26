<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring Mvc WebFlow Demo</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
	</head>
 
	<body bgcolor="pink">
		<div class="content">
			<fieldset>
				<legend>Confirm Details</legend>
				<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				<a href="${flowExecutionUrl}">Home</a><br /><br />
				<p><h3>You have entered following Details:</h3></p>
				<sf:form modelAttribute="userBean">
					<sf:label path="qty">Qty:</sf:label>${userBean.getQty()}
					<br><br><input name="_eventId_submit" type="submit" value="Confirm your Details" />
				</sf:form>	
				</fieldset>
		</div>
	</body>
</html>