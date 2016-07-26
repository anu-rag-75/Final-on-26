<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Table</title>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>
 <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }

  </style>
</head>
<body bgcolor="silver">
<div class="header">
  <nav class="navbar navbar-default">
  <div class="container-fluid">
        <div align="right" class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="color:#FFFFFF;background:#AAABBB;display:block">
        <img src="${pageContext.servletContext.contextPath}/resources/images/Logo.jpg"  width=100 height=100 align=left> 
		<div class="container">
			<div class="btn-group">
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
						<li><a href="Products">Disp Products</a></li>
					</ul>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Home <span class="caret"></span></button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="index" role=button>Home</a></li>
					</ul>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Registration <span class="caret"></span></button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="customer" role=button>Register</a></li>
					</ul>
				</div>
								<div class="btn-group">
					<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Send Mail <span class="caret"></span></button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="recommend"><img src="D:\anuproj\project\src\main\resources\Images\email.jpg" width=50 height=20></a></li>
					</ul>
				</div>
				</div>
			</div>
		</div>
		<H4> <Marquee bgcolor="red" behavior="alternate" scrollamount=15>V@nu Leathers Products</Marquee></H4>
    </div>
    </nav>
</div>
<div class="container">

	<br />
<form method="post" action="./FileUploadSuccess?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data">
		<label><spring:message text="Please select a file to upload :"></spring:message></label>
		 <input type="file" name="file" />
		<input type="submit" value="upload" />
		 	
</form>
<spring:url value="/AddProduct" var="userActionUrl" />

	<form:form class="form-horizontal" method="get" modelAttribute="product" action="${userActionUrl}">
<c:if test="${!empty product.name}">
     <form:label path="id"><spring:message text="ID"/></form:label>
     
            <!-- <form:hidden path="id" /> -->
    </c:if>
	<!-- 	<form:hidden path="id" />  -->

		<spring:bind path="name">
		<label class="col-sm-2 control-label">Product Name:</label>
		<form:input path="name" type="text" class="form-control" id="name" placeholder="Product Name" />
		</spring:bind>
<br/>
		<spring:bind path="category">
	    <label class="col-sm-2 control-label">Category</label>
		<form:input path="category" class="form-control" id="category" placeholder="Category" />
		</spring:bind>
<br/>
		<spring:bind path="price">
	    <label class="col-sm-2 control-label">Price</label>
		<form:input path="price" class="form-control" id="price" placeholder="price" />
		</spring:bind>
		</br>
		
		<br/>
		<spring:bind path="stock">
	    <label class="col-sm-2 control-label">Stock</label>
		<form:input path="stock" class="form-control" id="price" placeholder="stock" />
		</spring:bind>
		</br>
		
		<td colspan="2">
            <c:if test="${!empty product.name}">
                <input type="submit" value="<spring:message text="Edit Product"/>" />
            </c:if>
            <c:if test="${empty product.name}">
                <input type="submit" value="<spring:message text="Add Product"/>" />
            </c:if>
        </td>
         	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
      </form:form>
<div align="left" style="color:#0000FF;background:pink;">
<font size=3><a href="">About Us</a> &nbsp &nbsp &nbsp  <a href="">Contact</a></font>
   <img src="E:\eclipse workspace\VinayNiitVja\src\main\webapp\Images\fb.png" width=25 height=25 align=right>
  <img src="E:\eclipse workspace\VinayNiitVja\src\main\webapp\Images\twitter.png" width=25 height=25 align=right>
  <img src="E:\eclipse workspace\VinayNiitVja\src\main\webapp\Images\g+.png" width=25 height=25 align=right>

  </div>
</body>
</html>