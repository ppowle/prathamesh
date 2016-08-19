<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Mvc WebFlow Demo</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /> <br />
			<form:form modelAttribute="Login" >
				<form:label path="username" >User ID :</form:label>${Login.username}
					<br />
				
				<a href="${flowExecutionUrl}&_eventId_edit">Edit</a>
				
				<input type="submit" class="btn btn-primary active" name="_eventId_submit"
							value="confirmmmmm" />
				<br />
			</form:form>
		</fieldset>
	</div>
</body>
</html>