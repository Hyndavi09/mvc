<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/style.css">
<script type="text/javascript" src="/resources/js/app.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<form action="/adduser">
  <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an passport Id</p>
    <hr>
    <label for="firstname"><b>FirstName</b></label>
    <input type="text" placeholder="First Name" name="firstName" id="firstName" required>
    <label for="lastname"><b>LastName</b></label>
    <input type="text" placeholder="Last Name" name="lastName" id="lastName" required>
	<label for="Age"><b>Age</b></label>
    <input type="text" placeholder="Age" name="age" id="age" required>
    <label for="Country"><b>Country</b></label>
    <input type="text" placeholder="Country" name="country" id="country" required>
    <hr>
    <button type="submit" class="submitn">Submit</button>
  </div>
</form>

</body>
</html>