<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update the Details</title>
</head>
<body bgcolor="cyan">
    <div align="center">
        <h1>Edit the Details of Product</h1>
        <form:form action="saveContact" method="post" modelAttribute="contact">
        <table>
           <form:hidden path="id"/>
            
            <tr>
                <td>Enter new Product Name:</td>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <td>Enter new Product Category:</td>
                <td><form:input path="category" /></td>
            </tr>
            <tr>
                <td>Enter new Product Price:</td>
                <td><form:input path="price" /></td>
            </tr>
          
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
                <td colspan="2" align="center"><a href="Products" role=button>Cancel</a></td>
            </tr>
        </table>
        </form:form>
    </div>
</body>
</html>