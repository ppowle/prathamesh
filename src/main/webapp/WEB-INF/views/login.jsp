
<!DOCTYPE html>

<html>
    
<head>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
        
<link type="text/css" rel="stylesheet" href="css/style.css"/>
   <style>   
   footer {width:960px; overflow:hidden; margin:0 auto; padding:33px 0px 33px 0; background:#fff; text-align:center; color:#000; text-transform:uppercase; }
      
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
</style> 

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
	width: 	80px;
	
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
        <li><a href="new"><span class="glyphicon glyphicon-user" ></span> Register&nbsp&nbsp&nbsp</a></li>
      </ul>
</div>
   </div>
   </div>
</nav>







        


<div class="container"> 
<br><br>
	<center><font color="red">${message}</font></center>           
		<h1><center>Login</center></h1>
 			           
<br>
 <form:form action="validate" method="post" enctype="multipart/form-data">
	<div class="input-group">
                
			<span class="input-group-addon">
                    
			<i class="glyphicon glyphicon-user"></i>
                
			</span>
                
<input id="input" type="text" name="username" class="form-control" required="required" autofocus="autofocus" placeholder="Username"/>
            
	</div>
 
<br>           
	<div class="input-group" style="margin-top:  10px">
                
		<span class="input-group-addon">
                    
			<i class="glyphicon glyphicon-lock"></i>
                
		</span>
                
<input type="password" name="password" class="form-control login-input" required placeholder="Password"/>
            
	</div>

<br>            
	<center><div class="input-group" style="margin-top: 10px">
               
<input type="submit" value="Login"  class="btn btn-primary btn-lg btn-block" style="width: 318px;"/>
   
      
</div>
             
<div class="register">
                
Not Registered yet? <a href="new">Register</a> here.

    </form:form>         
</div>
 </center>  
     

        
<script  src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
 
<script>
if (!("autofocus" in document.createElement("input"))) {
    document.getElementById("my-input").focus();
  }
</script>       
<script src="js/bootstrap.js"></script>

    </div>
    
</body>

</html>
