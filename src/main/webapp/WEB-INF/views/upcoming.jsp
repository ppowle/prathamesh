<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>      
    body{
        padding-top:60px;
    }
    /* fix padding under menu after resize */
    @media screen and (max-width: 767px) {
        body { padding-top: 60px; }
    }
    @media screen and (min-width:768px) and (max-width: 991px) {
        body { padding-top: 110px; }
    }
    @media screen and (min-width: 992px) {
        body { padding-top: 40px; }
    }
    footer {width:960px; overflow:hidden; margin:0 auto; padding:33px 0px 33px 0; background:#fff; text-align:center; color:#000; text-transform:uppercase; }
    
</style>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Auto Mall</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      
   
    <link href="css/bootstrap.min.css" rel="stylesheet">

      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   

  

    

<style>
{
	background: #fff;
	color: default;
	font: 90%/180% Arial, Helvetica, sans-serif;
	width: 800px;
	max-width: 96%;
	margin: 0 auto;
}
a {
	color: default;
	text-decoration: none;
}
a:hover {
	color: default;
}
h1 {
	font: 1.7em;
	line-height: 110%;
	color: default;
}
p {
	margin: 0 0 20px;
}


input {
	outline: none;
}
input[type=search] {
	-webkit-appearance: textfield;
	-webkit-box-sizing: content-box;
	font-family: inherit;
	font-size: 100%;
}
input::-webkit-search-decoration,
input::-webkit-search-cancel-button {
	display: none; 
}


input[type=search] {
	background: #ededed url(http://static.tumblr.com/ftv85bp/MIXmud4tx/search-icon.png) no-repeat 9px center;
	border: solid 3px #ccc;
	padding: 15px 10px 9px 32px;
	width: 80px;
	
	-webkit-border-radius: 10em;
	-moz-border-radius: 10em;
	border-radius: 10em;
	
	-webkit-transition: all .5s;
	-moz-transition: all .5s;
	transition: all .5s;
}
input[type=search]:focus {
	width: 200px;
	background-color: default;
	border-color: default;
	
	-webkit-box-shadow: 0 0 5px rgba(109,207,246,.5);
	-moz-box-shadow: 0 0 5px rgba(109,207,246,.5);
	box-shadow: 0 0 5px rgba(109,207,246,.5);
}


input:-moz-placeholder {
	color: default;
}
input::-webkit-input-placeholder {
	color: default;
}
</style>
    
    
<title>Insert title here</title>
</head>
<body>
 <nav class = "navbar navbar-default navbar-fixed-top" role = "navigation">
    <div class="container-fluid">
   <div class = "navbar-header">
   <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
   <span class="icon-bar"></span>
   <span class="icon-bar"></span>
   <span class="icon-bar"></span>
   </button>
      <a class = "navbar-brand" href = "index"><strong><i class="fa fa-car" style="font-size:20px";></i>uto Mall</strong></a>
   </div>
   <div class="collapse navbar-collapse" id="myNavbar">
   <div>
      <ul class = "nav navbar-nav">
   
	<li class = "active"><a href = "index.html">Home</a></li>
         <li class = "dropdown">
            <a href = "#" class = "dropdown-toggle" data-toggle = "dropdown">
               New
               <b class = "caret"></b>
            </a>
            
            <ul class = "dropdown-menu">
               <li><a href = "searchCar">Search Cars</a></li>
               <li><a href = "upcoming">Upcoming Cars</a></li>
               <li><a href = "#">Offers & Discounts</a></li>
               
               <li class = "divider"></li>
               <li><a href = "#">Dealers & Service Centers</a></li>
               <li><a href = "#">Helpline Numbers</a></li>
               <li><a href = "#">Further Research</a></li>
		
<li class = "divider"></li>
               <li><a href = "#">On Road Price</a></li>
            </ul>
            
         </li>

         <li class = "dropdown">
            <a href = "#" class = "dropdown-toggle" data-toggle = "dropdown">
               Used
               <b class = "caret"></b>
            </a>
            
            <ul class = "dropdown-menu">
               <li><a href = "#">Cars In Your City</a></li>
               <li><a href = "#">Search Used Cars</a></li>
               <li><a href = "#">Used Car Valuation</a></li>
               
               <li class = "divider"></li>
               <li><a href = "#">Auto Mall TrustMark</a></li>
               
              
            </ul>
            
         </li>
	<li><a href = "#">Sell</a></li>
	<li><a href = "#">Compare</a></li>
			
         <li class = "dropdown">
            <a href = "#" class = "dropdown-toggle" data-toggle = "dropdown">
               More
               <b class = "caret"></b>
            </a>
            
            <ul class = "dropdown-menu">
               <li><a href = "#">Car Loan</a></li>
		
               <li><a href = "#">Renew Insurance</a></li>
               <li><a href = "#">Road Assistance</a></li>
               
               <li class = "divider"></li>
               <li><a href = "#">Car Accessories</a></li>
               <li><a href = "#">Driving School</a></li>
		<li><a href = "about.html">About Us</a></li>
               <li class = "divider"></li>
               <li><a href = "#">FAQ's</a></li>
            </ul>
	<li><a href = "contact.html">Contact Us</a></li>
            
         </li>
			
      </ul>
      
   </div>
   
<div><ul class="nav navbar-nav navbar-right">
<input type="search" placeholder="Search">
        <li><a href="login.html"><span class="glyphicon glyphicon-log-in" "></span> Login&nbsp&nbsp&nbsp</a></li>
        <li><a href="new"><span class="glyphicon glyphicon-user" ></span> Register&nbsp&nbsp&nbsp</a></li>
      </ul>
</div>
   </div>
   </div>
</nav>
<br><br>

 <c:forEach items="${productList}" var="product" varStatus="status">
			<div class="row">
				<div class="col-md-4">
					<a href="${product.image}" class="thumbnail">
						<center><p><b>${product.p_name}</b></p></center> <br>
						<center><img src="${product.image}" alt="car" width="120px" height="120px"/></center> 
						
						<center><p><b>&#8377; ${product.p_price}</b></p></center>
					</a>
					
					
					<a href="wish/addTo/${product.id}">Add to WishList</a>
				</div>
				
			</div>
</c:forEach>

    
    <footer>
        Copyright &copy2008-2016 Powered By <b>Prathamesh Kishor Powle Software Pvt. Ltd.</b> All
                Rights Reserved.
    </footer>
    
</body>
</html>