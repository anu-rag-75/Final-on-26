<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View the Details</title>
</head>
<body bgcolor="burly wood">
    <div align="center">
        <h1>Details of Product</h1>
        <form:form action="dispContact" method="post" modelAttribute="contact1">
        <table>
                     
            <tr>
            	<td>Product Name:</td>
            	<td>${contact1.name}</td>
            </tr>
            <tr>
                <td>Category:</td>
               <td>${contact1.category}</td>
            </tr>
            <tr>
                <td>Product Price:</td>
                <td>${contact1.price}</td>
            </tr>
           <tr>
                <td>Product Stock in Hand:</td>
                <td>${contact1.stock}</td>
            </tr>
                <td colspan="2" align="center"><a href="productTableUsers" role=button>Cancel</a></td>
            </tr>
        </table>
        </form:form>
    </div>
</body>
</html>