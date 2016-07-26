<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Add To Cart</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
	</head>
 
	<body bgcolor="pink">
		<div class="content">
			<fieldset>
				<legend>Here is Your Cart</legend>
				<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				<a href="${flowExecutionUrl}">Home</a>
				<div class="item">

     <Marquee behavior="alternate" width="20%" direction="down" > <img src="D:\anuproj\project\src\main\resources\Images\BELT.jpg" alt="Belt" class="img-responsive" height = "100" width="150"></Marquee>
    </div>
       
     <sf:form modelAttribute="userBean"><br />
					<sf:label path="qty">Enter the Quantity:</sf:label>
					<sf:input path="qty" size="5" /><br />
					<!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('qty')}" var="err"/>
					  <div><span>${err.text}</span></div>
					  <br>
					  <input name="_eventId_submit" type="submit" value="Submit" /><br />
   <br>    </sf:form><br>
			
			</fieldset>
		</div>
	</body>
</html>