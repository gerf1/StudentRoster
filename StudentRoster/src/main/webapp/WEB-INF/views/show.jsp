<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Students</title>
</head>
<body>
	<h1>All Students</h1>
	<table>
		<thead>
			<tr>
				<td><strong>Name:</strong></td>
				<td><strong>Age:</strong></td>
				<td><strong>Address:</strong></td>
				<td><strong>City:</strong></td>
			</tr>
		</thead>
		<tbody>
				<td><c:out value="${student.firstName} ${student.lastName}"/></td>
				<td><c:out value="${student.age}"/></td>
				<td><c:out value="${contact.address}"/></td>
				<td><c:out value="${contact.city}"/></td>
				<td><c:out value="${contact.state}"/></td>
		</tbody>
	</table>
</body>
</html>