<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>customer</title>
<link rel="stylesheet" href="/resources/css/style.css">
<script type="text/javascript" src="/resources/js/app.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
		<body>
		<h1>User Details</h1>
		<form action="/users" method="get">
		<h4>Please enter the passport Id</h4>
    <hr>
    <label for="passportnumber">PassportNumber<b></b></label>
    <input type="text" placeholder="Passport Number" name="passportNumber" id="passportNumber" required>
    <button type="submit">Submit</button>   
			<table class="table">
				<thead>
					<tr>
						<th>User Id</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Age</th>
						<th>Country</th>
						<th>Passport Number</th>		
					</tr>
				</thead>
					<tbody>
						<tr>
							<td><c:out value="${user.userId}"></c:out></td>
							<td><c:out value="${user.firstName}"></c:out></td>
							<td><c:out value="${user.lastName}"></c:out></td>
							<td><c:out value="${user.age}"></c:out></td>
							<td><c:out value="${user.country}"></c:out></td>
							<td><c:out value="${user.passportNumber}"></c:out></td>
						</tr>
					</tbody>
				
			</table>
			</form>
</body>
</html>