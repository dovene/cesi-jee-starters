<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Hello padawan</h2>
	<p>Welcome to the wonderful world of Java EE<p>
    <c:out value="Your name is : ${fullName}" />
    <c:out value="Your will serve in : ${city}" />

    <h2>-----Historique des connexions:</h2>
    	<ul>
    		<c:forEach items="${students}" var="student">
    			<li>
    				<c:out value="${student.fullName}" />
    				<c:out value="${student.city}" />
    			</li>
    		</c:forEach>
    	</ul>
</body>
</html>