<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
    src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script
    src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.min.js"
    integrity="sha256-vb+6VObiUIaoRuSusdLRWtXs/ewuz62LgVXg2f1ZXGo="
    crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
		<form action="#">
		
			<table class="table">
				<thead>
					<tr>
						<th>Customer Name</th>
						<th>Customer Age</th>
						</tr>
				</thead>
				<c:forEach items="${customers}" var="customer">
				
					<tbody>
						<tr>
						
							<td>${customer.customerName}</td>
							<td>${customer.customerAge}</td>
							<thead>
					<tr>
						<th>Debit Card Number</th>
						<th>Debit Card Amount</th>
						<th>Debit Card ExpiryDate</th>
						</tr>
				</thead>
							<c:forEach items="${customer.debitcards}" var="debitcard">
							<td>${debitcard.debitCardNumber}</td>
							<td>${debitcard.amount}</td>
							<td>${debitcard.expiryDate}</td>
							</c:forEach>
						</tr>
					</tbody>
					
				</c:forEach>
				
			</table>
		</form>
	</div>	
	</body>
</html>
