
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Auto Mall</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Cars</title>
<script type="text/javascript">
$(document).ready(function () {
	  $('input[type=submit]').click(function () {
	    $('input[type=submit]').toggleClass('red');
	  });
	});
</script>
<style>
footer {width:960px; overflow:hidden; margin:0 auto; padding:33px 0px 33px 0; background:#fff; text-align:center; color:#000; text-transform:uppercase; }
.group:after {
  content: "";
  display: block;
  clear: both;
}

.landing-page {
  width: 882px;
  margin: 100px auto 0;  
}

.landing-page *,
.landing-page *:before,
.landing-page *:after {
	-webkit-box-sizing: border-box;
       -moz-box-sizing: border-box;
            box-sizing: border-box; 
}

.landing-page .module {
	border: 1px solid rgb(219, 219, 219);
	border-radius: 4px;
	float: left;
	padding: 2em;
	width: 48%;
}

.landing-page .module > *:last-child,
.landing-page .module > *:last-child > *:last-child,
.landing-page .module > *:last-child > *:last-child > *:last-child {
	margin: 0;
	padding: 0;
}

.landing-page .note {	
	background-color: rgb(236, 248, 236);
	border: 1px dashed;	
	border-radius: 4px;	
	color: rgb(115, 136, 96);
	font-family: georgia;	
	font-size: .9em;
	font-style: italic;
	margin: 20px auto;
	padding: 2em;
}

.form-appointment {
	padding: 2em;
	background-color: rgb(239, 252, 239);
	border-radius: 4px;
	border: 1px solid rgb(130, 228, 130);
	box-shadow: 2px 2px 4px 0px rgba(0, 0, 0, 0.1);
	font-family: 'PT Sans', Arial, sans-serif;
	margin: 20px auto;
}

.form-appointment input[type=text],
.form-appointment input[type=email],
.form-appointment input[type=tel],
.form-appointment textarea {	
	border: 1px solid rgb(153, 202, 129);
	border-radius: .2em;	
	font-family: 'PT Sans', Arial, sans-serif;
	font-size: 1.1em;
	padding: .4em 1em;
	margin: 0 0 .8em;
	width: 100%;
  box-shadow: 0 0 8px rgba(0,0,0,.08) inset;
}

.form-appointment input[type=text],
.form-appointment input[type=email],
.form-appointment input[type=tel],
.form-appointment input[type=submit],
.form-appointment textarea {	
	-webkit-transition: all .2s ease-in-out;
	   -moz-transition: all .2s ease-in-out;
	        transition: all .2s ease-in-out;
}

.form-appointment input[type=text]:active,
.form-appointment input[type=text]:focus,
.form-appointment input[type=email]:active,
.form-appointment input[type=email]:focus,
.form-appointment input[type=tel]:active,
.form-appointment input[type=tel]:focus,
.form-appointment textarea:active,
.form-appointment textarea:focus {	
  outline: 0;
  box-shadow: 0 0 6px rgb(176, 226, 188);
}

.form-appointment textarea {
	height: 160px;
}

.form-appointment input[type=submit] {
	background-color: rgb(118, 207, 118);
	border: 1px solid rgb(134, 189, 134);
	border-radius: 4px;
	color: rgb(255, 255, 255);
	cursor: pointer;
	font-family: inherit;
	font-size: 1.4em;
	padding: 10px 18px;
}

.form-appointment input[type=submit]:hover {
	background-color: white;
	color: rgb(118, 207, 118);
}

.form-appointment .wpcf7-list-item-label {
	color: rgb(130, 178, 136);
}

span.wpcf7-list-item {
	display: block;
	margin-left: -.02em;
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
        <li><a href="login.html"><span class="glyphicon glyphicon-log-in" onclick="openNav()"></span> Login&nbsp&nbsp&nbsp</a></li>
        <li><a href="new"><span class="glyphicon glyphicon-user" ></span> Register&nbsp&nbsp&nbsp</a></li>
      </ul>
</div>
   </div>
   </div>
</nav>
<center>
<h1>
Help us!!!To Search you a better Car</h1></center>
<div class="landing-page"><div class="form-appointment"><form action="search1" name="search1" method="post" >

<div class="group">
<div style="width: 48%; float: left;">

<div class="form-group">
  
  <select class="form-control"  placeholder="car" name="name">
  <option selected="" value="Default" required>Car Brand</option>
  
    <option value="Toyota">Toyota</option>
    <option value="Mercedes">Mercedes</option>
    <option value="Porsche">Porsche</option>
    <option value="Bentley">Bentley</option>
  </select>
</div>
<div class="form-group">
  
  <select class="form-control" id="sel1" placeholder="car" name="type">
  <option selected="" value="Default" required>Car Type</option>
    <option value="New">New</option>
    <option value="Old">Old</option>
   
  </select>
</div>
<div class="form-group">
  
  <select class="form-control" id="sel1" placeholder="car" name="owner">
  <option selected="" value="Default" required>Car Owner</option>
    <option value="New">First Owner</option>
    <option value="Old">Second Owner</option>
    <option value="Very Old">Third Owner</option>
   
  </select>
</div>
<div class="form-group">
  
  <select class="form-control" id="sel1" placeholder="car" name="price">
  <option selected="" value="Default" required>Budget</option>
    <option value="50000 and 100000"><1,00,000</option>
    <option value="100000 and 200000">1,00,000<2,00,000</option>
    <option value="200000 and 300000">2,00,000<3,00,000</option>
   
  </select>
</div>


<span class="wpcf7-form-control-wrap textarea-398"><textarea name="textarea-398" cols="40" rows="10" placeholder="Any Special Requirements"></textarea></span></div>
<div style="width: 48%; float: right;">
<h4>Engine Variant?</h4>
<p><span class="wpcf7-form-control-wrap radio-98"><span class="wpcf7-form-control wpcf7-radio"><span class="wpcf7-list-item"><label><input type="radio" name="petrol" value="petrol">&nbsp;<span class="wpcf7-list-item-label">Petrol</span></label></span><span class="wpcf7-list-item"><label><input type="radio" name="diesel" value="diesel">&nbsp;<span class="wpcf7-list-item-label">Diesel</span></label></span><span class="wpcf7-list-item"><label><input type="radio" name="hybrid" value="hybrid">&nbsp;<span class="wpcf7-list-item-label">Hybrid</span></label></span></span></span></p>
<h4>Class?</h4>
<p><span class="wpcf7-form-control-wrap checkbox-465"><span class="wpcf7-form-control wpcf7-checkbox"><span class="wpcf7-list-item"><label><input type="checkbox" name="suv" value="suv">&nbsp;<span class="wpcf7-list-item-label">SUV</span></label></span><span class="wpcf7-list-item"><label><input type="checkbox" name="sedan" value="sedan">&nbsp;<span class="wpcf7-list-item-label">Sedan</span></label></span><span class="wpcf7-list-item"><label><input type="checkbox" name="coupe" value="coupe">&nbsp;<span class="wpcf7-list-item-label">Coupe</span></label></span><span class="wpcf7-list-item"><label><input type="checkbox" name="convertible" value="convertible">&nbsp;<span class="wpcf7-list-item-label">Convertible</span></label></span><span class="wpcf7-list-item"><label><input type="checkbox" name="luxury" value="luxury">&nbsp;<span class="wpcf7-list-item-label">Luxury</span></label></span></span></span></p>
<h4>Transmission Type?</h4>
<p><span class="wpcf7-form-control-wrap checkbox-246"><span class="wpcf7-form-control wpcf7-checkbox"><span class="wpcf7-list-item"><label><input type="checkbox" name="automatic" value="automatic">&nbsp;<span class="wpcf7-list-item-label">Automatic</span></label></span><span class="wpcf7-list-item"><label><input type="checkbox" name="manual" value="manual">&nbsp;<span class="wpcf7-list-item-label">Manual</span></label></span></span></span></p></div>
</div>
<div style="text-align: center; padding-top: 2em; border-top: 1px solid rgb(153, 202, 129); margin-top: 1em;"><input type="submit" value="Search My Car" class="wpcf7-form-control wpcf7-submit"><img class="ajax-loader" src="http://www.professionalaudiologicalservices.com/wp-content/plugins/contact-form-7/images/ajax-loader.gif" alt="Sending ..." style="visibility: hidden;"></div>
  <div class="wpcf7-response-output wpcf7-display-none"></div></form></div></div></div>
<footer>
        Copyright &copy2008-2016 Powered By <b>Prathamesh Kishor Powle Software Pvt. Ltd.</b> All
                Rights Reserved.
    </footer>
</body>
</html>