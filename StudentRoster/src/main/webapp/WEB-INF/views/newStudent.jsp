
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>License assignment</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.1/css/bulma.min.css">
</head>
<body>
	<section>
		<div class="container">
			<div class="notification">
				JAVA Spring Data II - <strong>Student Roster</strong> assignment.
			</div>
			
			<h1><strong>New Student</strong></h1>

			<form:form action="/create/student" method="post"
				modelAttribute="student">
				<p>
					<form:label path="firstName">First Name: </form:label>
					<form:errors path="firstName" />
					<form:input path="firstName" type="text" />
				</p>
				<p>
					<form:label path="lastName">Last Name</form:label>
					<form:errors path="lastName" />
					<form:input path="lastName" type="text" />
				</p>
				<p>
					<form:label path="age">Age:</form:label>
					<form:errors path="age" />
					<form:input path="age" type="text" />
				</p>
				<input type="submit" value="Create" />
			</form:form>
		</div>
	</section>
</body>
</html>