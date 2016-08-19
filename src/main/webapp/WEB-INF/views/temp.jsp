<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.1/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link href="http://v4.pingendo.com/assets/bootstrap/themes/default.css" rel="stylesheet" type="text/css">
</head>

<body>
 <c:forEach items="${productList}" var="product" varStatus="status">
  <div class="p-y-3 section" draggable="true">
    <div class="container">
      <div class="row">
        <div class="col-md-6">

       
          <img src="${product.image}" alt="car" width="500px" height="300px"/>
         
        </div>
        <div class="col-md-6">
          <h1 class="text-primary">${product.p_name}</h1>
          <h3>&#8377; ${product.p_price}</h3>
          <p class="lead">Description</p>
            <a href="wish/addTo/${product.id}">Add to WishList</a>
            <br><br>
             
        </div>
      </div>
    </div>
  </div>
  </c:forEach>
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/js/bootstrap.js"></script>


</body>

</html>