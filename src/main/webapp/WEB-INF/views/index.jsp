<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Auto Mall</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen" href="resources/css/reset.css">
    <link rel="stylesheet" type="text/css" media="screen" href="resources/css/style.css">
    <link rel="stylesheet" type="text/css" media="screen" href="resources/css/slider.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700,300' rel='stylesheet' type='text/css'>
    <script src="js/jquery-1.7.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/tms-0.4.1.js"></script>
    
    
	<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
    	<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
    	<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700' rel='stylesheet' type='text/css'>
   		<script type="text/javascript" src="js/html5.js"></script>
    	<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
	<![endif]-->
	
	
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
     



    
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
        padding-top:40px;
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
    .carousel-control.left, .carousel-control.right {
   background-image:none !important;
   filter:none !important;
}
</style>





  </head>
  <body>
  
  
  
  
   
  <header>  
       

</header>





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
               <li><a href = "uc">Upcoming Cars</a></li>
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
        <li><a href="login"><span class="glyphicon glyphicon-log-in" ></span> Login&nbsp&nbsp&nbsp</a></li>
        <li><a href="new"><span class="glyphicon glyphicon-user" ></span> Register&nbsp&nbsp&nbsp</a></li>
      </ul>
</div>
   </div>
   </div>
</nav>
<div>
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
      <img src="resources/images/2015_rolls_royce_wraith-1920x1080.jpg" alt="Rolls Royce">
      <div class="carousel-caption">
      <h3>Rolls Royce Wraith</h3>
      
      </div>
    </div>

    <div class="item">
      <img src="resources/images/2013_bentley_continental_gt3-1920x1080.jpg" alt="Bentley">
      <div class="carousel-caption">
      <h3>Bentley Continental</h3></div>
    </div>

    <div class="item">
      <img src="resources/images/2014_range_rover_long_wheelbase-1920x1080.jpg" alt="Range Rover">
      <div class="carousel-caption">
      <h3>Range Rover</h3></div>
    </div>

    <div class="item">
      <img src="resources/images/mercedes_benz_gle_coupe_4k-1920x1080.jpg" alt="Mercedes">
      <div class="carousel-caption">
      <h3>Mercedes Benz Coupe</h3></div>
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
 <div class="ic">More Website Templates @ TemplateMonster.com. November12, 2012!</div>
      <div class="block-1 box-1">
      
        <div>
            <img src="resources/images/page1-img1.jpg" alt="">
            <p class="text-1">Schedule <strong>Free Service</strong></p>
            <p class="upper"><a href="http://blog.templatemonster.com/free-website-templates/" class="link" rel="nofollow" target="_blank">Click here</a> to schedule a free first service for your car with added benefits.</p>
            <a href="#" class="button">Schedule a Service</a>
        </div>
        <div>
            <img src="resources/images/page1-img2.jpg" alt="">
            <p class="text-1">Preventive <strong>Maintenance</strong></p>
            <p class="upper">We keep your car well maintained by providing you with an attractive maintenance package.</p>
            <a href="#" class="button">Review more Info</a>
        </div>
        <div>
            <img src="resources/images/page1-img3.jpg" alt="">
            <p class="text-1">Repair <strong>Services</strong></p>
            <p class="upper">Car breakdown? Not to worry get a road side repair services by our expert Auto Engineers.</p>
            <a href="#" class="button">Road Side Assistn</a>
        </div>
        <div class="last">
            <img src="resources/images/page1-img4.jpg" alt="">
            <p class="text-1">Tire & Wheel <strong>Alignment</strong></p>
            <p class="upper">Get a computerized wheel alignment of your car at just one click on our Website .</p>
            <a href="#" class="button">Get Wheel Align</a>
        </div>
       <div class="last">
            <img src="resources/images/a-New-Car-190x120.jpg" alt="">
            <p class="text-1">Paint Job <strong>Designing</strong></p>
            <p class="upper">Get a custom paint job done by our graphic designers team and modify your ride.  </p>
            <a href="#" class="button">Get a Paint Job</a>
        </div>
      </div>
      
      <div class="block-2 wrap pad-2">
      	<div class="box-2">
        	<h2 class="clr-1">Write your Reviews</h2>
            <div class="comments">
            	<div>
                	Post your Review here
                	<div class="comments-corner"></div>
                </div>
                <a href="contact">Contact us</a>
            </div>
            <div class="comments">
            	<div>
                	post your comments here
                	<div class="comments-corner"></div>
                </div>
                <a href="about">about us</a>
            </div>
        </div>
        <div class="box-3">
        	<h2 class="clr-1">Extra Services Provided</h2>
            <div class="wrap">
            	<ul class="list-1">
                	<li><a href="#">Engine Works Service</a></li>
                    <li><a href="#">Fuel Works Service</a></li>
                    <li><a href="#">Drive System Service</a></li>
                    <li><a href="#">Electrical Service</a></li>
                    <li><a href="#">Steering & Suspension</a></li>
                    <li><a href="#">Exhaust Services</a></li>
                </ul>
                <ul class="list-1 last">
                	<li><a href="#">Brakes Services</a></li>
                    <li><a href="#">Tyres & Wheels Services</a></li>
                    <li><a href="#">Vision Services</a></li>
                    <li><a href="#">Fabrication Services</a></li>
                    <li><a href="#">Interior Services</a></li>
                    <li><a href="#">General Services</a></li>
                </ul>
                
            </div>
            <a href="#" class="button-2">Read More</a>
        </div>    
      </div>  
   	
</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
     
    <script>
function openNav() {
    document.getElementById("myNav").style.height = "100%";
}

function closeNav() {
    document.getElementById("myNav").style.height = "0%";
}
</script>
<footer>
        Copyright &copy2008-2016 Powered By <b>Prathamesh Kishor Powle Software Pvt. Ltd.</b> All
                Rights Reserved.
    </footer>
  </body>
</html>