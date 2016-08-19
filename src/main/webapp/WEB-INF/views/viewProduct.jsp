<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      
</head>
<body>
  <nav class = "navbar navbar-default" role = "navigation">
  
   <div class = "navbar-header">
   <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
   <span class="icon-bar"></span>
   <span class="icon-bar"></span>
   <span class="icon-bar"></span>
   
   </button>
   
      <a class = "navbar-brand" href = "index"><strong><i class="fa fa-car" style="font-size:20px";></i>uto Mall</strong></a>
   </div>
  
   <div class="collapse navbar-collapse" id="myNavbar">
      <ul class = "nav navbar-nav">
	<li class = "active"><a href = "index">Home</a></li>
         <li class = "dropdown">
            <a href = "#" class = "dropdown-toggle" data-toggle = "dropdown">
               New
               <b class = "caret"></b>
            </a>
            
            <ul class = "dropdown-menu">
               <li><a href = "#">Search Cars</a></li>
               <li><a href = "uc">Upcoming Cars</a></li>
               <li><a href = "newList">New Cars</a></li>
               
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
               <li><a href = "oldList">Old Cars</a></li>
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
		<li><a href = "about">About Us</a></li>
               <li class = "divider"></li>
               <li><a href = "#">FAQ's</a></li>
            </ul>
	<li><a href = "contact">Contact Us</a></li>
            
         </li>
			
      </ul>

   
<ul class="nav navbar-nav navbar-right">
        <li><a href="new"><span class="glyphicon glyphicon-user" ></span> Register&nbsp&nbsp&nbsp</a></li>
      </ul>
</div>

</nav>
<body>
<center><h4>List of available Products</font></h4>
<form:form  >


<div class="container">
  
  <table class="table table-hover">
    <thead>
      <tr>
        <th align="left">S.No</th>
		<th align="left">Product Id</th>
		<th align="left">Name</th>
		<th align="left">Class</th>
		<th align="left">Engine</th>
		<th align="left">Price</th>
		<th align="left">Type</th>
		<th align="left">Owner</th>
		<th align="left">Image</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${productList}" var="product" varStatus="status">
		<tr>
			<td align="left">${status.count}</td>
			<td align="left">${product.p_id}</td>
			<td align="left">${product.p_name}</td>
			<td align="left">${product.p_class}</td>
			<td align="left">${product.p_engine}</td>
			<td align="left">${product.p_price}</td>
			<td align="left">${product.p_type}</td>
			<td align="left">${product.p_owner}</td>
			<td> <img src= " ${product.image} " height="100" width="100"></td>
			<td>
           <!--   <c:out value="${prod.fpath}"/>-->
    
          
          </td> 
          	<td width="50"><a href="<c:url value=""/>"><button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-pencil"></span> Edit</button></a>
			 <td width="50"><a href="<c:url value="/project/delete/${product.id}"/>"><button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-trash"></span> Trash</button></a>
			         
		</tr>
	</c:forEach>
     </tbody>
  </table>
</div>
</form:form>
</center>
</body>
</html>