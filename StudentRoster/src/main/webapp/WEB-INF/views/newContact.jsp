<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Assignment</title>
</head>
<body>
	<h1>New Contact</h1>
	<form:form action="/contact/create" method="post" modelAttribute="contact">
		<form:label path="student">Student</form:label>
		<form:select path="student">
			<c:forEach items="${student}" var="student">
				<form:option value="${student.id}">
					<c:out value="${student.firstName}, ${student.lastName}" />
				</form:option>
			</c:forEach>
		</form:select>
		<br>
		<form:label path="address">Address: 
				<form:input type="text" path="address" />
		</form:label>
		<br>
		<form:label path="city">city: 
				<form:errors path="city" />
			<form:input type="text" path="city" />
		</form:label>
		<br>
		<form:label path="state">State: 
				<form:errors path="state" />
			<form:input type="text" path="state" />
		</form:label>
		<br>
		<input type="submit" value="Create">

	</form:form>
</body>
</html>