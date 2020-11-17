<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Cities:</h2>
	 <h3><a href="cities/create">Add a city</a></h3>
		<table border="2" width="70%" cellpadding="2">
        <tr><th>Name</th><th>Country</th><th>Population</th><th>Edit</th><th>Delete</th></tr>
           <c:forEach var="city" items="${cities}">
           <tr>
           <td>${city.name}</td>
           <td>${city.country}</td>
           <td>${city.population}</td>
           <td><a href="cities/edit/${city.name}">Edit</a></td>
           <td><a href="cities/delete/${city.name}">Delete</a></td>
           </tr>
           </c:forEach>
           </table>
</body>
</html>