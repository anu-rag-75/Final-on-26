<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,.carousel-inner > .item > a > img 
  {
      width: 75%;
      margin: auto;
  }
  </style>

</head>
<body>
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
						<li><a href="productTableUsers">Disp Products</a></li>
					</ul>
				</div>
				<div class="btn-group">
					<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Registration <span class="caret"></span></button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="customer" role=button>Register</a></li>
					</ul>
				</div>
				<div class="btn-group">
				<a href="recommend">Recommend Friend</a>
				</div>
			</div>
		</div>
		<H4> <Marquee bgcolor="red" behavior="alternate" scrollamount=15>Welcome to V@nu Leathers Products</Marquee></H4>
    </div>
    </nav>
</div>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="${pageContext.servletContext.contextPath}/resources/images/Items1.jpg" alt="Not Available">
    </div>
    <div class="item">
      <img src="${pageContext.servletContext.contextPath}/resources/images/Items2.jpg" alt="Not Available">
    </div>

    <div class="item">
      <img src="${pageContext.servletContext.contextPath}/resources/images/Items4.jpg" alt="Not Available">
    </div>

    <div class="item">
      <img src="${pageContext.servletContext.contextPath}/resources/images/Items5.jpg" alt="Not Available">
    </div>
  </div>

<!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>
<div>
<Marquee behavior="alternate">
<img src="${pageContext.servletContext.contextPath}/resources/images/Img1.jpg">
<img src="${pageContext.servletContext.contextPath}/resources/images/Img2.jpg">
<img src="${pageContext.servletContext.contextPath}/resources/images/Img3.jpg">
<img src="${pageContext.servletContext.contextPath}/resources/images/Img4.jpg">
<img src="${pageContext.servletContext.contextPath}/resources/images/Img5.jpg">
<img src="${pageContext.servletContext.contextPath}/resources/images/Img6.jpg">
</Marquee>
</div>
<nav class="navbar navbar-inverse navbar-fixed-bottom">
  <div class="container-fluid">
    <div class="navbar-header">
      
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Abt">About US</a></li>
        <li class="active"><a href="#">CONTACT:+918100179513</a></li>
        </ul>
            <ul class="nav navbar-nav navbar-right">
       
      <li><a href="#"><i class="fa fa-facebook-official" style="font-size:48px;color:#3B5998"><img src="${pageContext.servletContext.contextPath}/resources/images/fb.png" width="20" height="20"></i></a></li>
     <li><a href="#"><i class="fa fa-google-plus" style="font-size: 48px;color:#dd4b39"><img src="${pageContext.servletContext.contextPath}/resources/images/g.jpg" width="20" height="20"></i></a></li>
     <li><a href="#"><i class="fa fa-flickr" style="font-size:48px;color:#55acee"><img src="${pageContext.servletContext.contextPath}/resources/images/twitter.png" width="20" height="20"></i></a></li>
    </ul>
  </div>
</nav>
</body>
</html>