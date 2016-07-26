<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recommend to your Friend</title>
</head>
<body bgcolor="burly wood">
<table align=center>
<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      
            <h4 class="modal-title">Send a Email</h4>
      
         <form class="form-horizontal" name="commentform" method="post" action="sendEmail">
         <tr>
    	
        	<td><label class="control-label col-md-4" for="first_name">First Name</label></td>
        	<td>
            <input size="25" type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name"/><td>
         </tr>
        <tr>
         <td><label class="control-label col-md-4" for="last_name">Last Name</label></td>
        <td>
            <input size="25" type="text" class="form-control" id="last_name" name="last_name" placeholder="Last Name"/></td></tr>
       <tr>
        <td><label class="control-label col-md-4" for="email">Email Address</label></td>
        <td><input size="25" type="email" class="form-control" id="email" name="email" placeholder="Email Address"/></td></tr>
    <tr>
         <td> <label class="control-label col-md-4" for="comment">Question or Comment</label></td>
        <td>
            <textarea rows="6" class="form-control" id="comments" name="comments" placeholder="Your suggestion or comment here">Hello, ${param.name} is available at ${param.email}</textarea></td></tr>
        <tr>
           <td ><div class="col-md-6">
            <button type="submit" value="Submit" class="btn btn-custom pull-right">Send Mail</button></td>
            <td><div class="col-md-6">
            <button type="reset" value="Reset" class="btn btn-custom pull-right">Reset</button></td>
        </div></tr>
    </div>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
</table>
       </body>
</html>
</body>
</html>