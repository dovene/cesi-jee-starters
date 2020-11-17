<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a new student</title>
</head>
<body>
<div class="container">
		<div class="col-md-offset-1 col-md-10">
			<h2>School Manager</h2>
			<hr />

	 <h2>Add a new student</h2>
         <form:form action="#" modelAttribute="student" method="post">
            Id : <form:input type="number" path="id" />
            <br />
            <br />
             First Name : <form:input type="text" path="firstName" />
            <br />
            <br />
             Last Name : <form:input type="text" path="lastName" />
             <br />
             <br />
              Grade : <form:input type="number" path="grade" />
             <br />
             <br />
             <button type="submit">Login</button>
        </form:form>
        </div>
        </div>
</body>
</html>