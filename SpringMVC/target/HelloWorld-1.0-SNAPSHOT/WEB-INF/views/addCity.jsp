<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Ajouter une ville</title>
        <link type="text/css" rel="stylesheet" href="form.css" />
    </head>
    <body>
      <form:form action="#" modelAttribute="city" method="post">
          Name : <form:input type="text" path="name" />
         <br />
          Country : <form:input type="text" path="country" />
        <br />
            Population : <form:input type="number" path="population" />
        <br />
          <button type="submit">Ajouter</button>
      </form:form>
     </body>
</html>
