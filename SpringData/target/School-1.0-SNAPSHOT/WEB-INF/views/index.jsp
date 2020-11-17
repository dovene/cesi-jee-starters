<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Data</title>
</head>
<body>
	<div class="container">
		<div class="col-md-offset-1 col-md-10">
			<h2>School Manager</h2>
			<hr />

	<input type="button" value="Add Student"
				onclick="window.location.href='create'; return false;"
				class="btn btn-primary" />
				<br/><br/>

			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Students List</div>
				</div>
				<div class="panel-body">
					<table width="80%" border = "1" >
						<tr style="background-color:#EAECEE">
							<th>First Name</th>
							<th>Last Name</th>
							<th>Grade</th>
							<th colspan=2>Action</th>
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="student" items="${students}">

							<!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/student/update">
								<c:param name="studentId" value="${student.id}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/student/delete">
								<c:param name="studentId" value="${student.id}" />
							</c:url>

							<tr style="border: 1px">
								<td>${student.firstName}</td>
								<td>${student.lastName}</td>
								<td>${student.grade}</td>

								<td>
									<!-- display the update link --> <a href="${updateLink}">Update</a>
								</td>
								<td><a href="${deleteLink}"
                        			onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
                               	</td>

							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
		</div>

	</div>
</body>

</html>








