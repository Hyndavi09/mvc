<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<form>
   
<h1>Bank Details</h1>
<table border="1" align="center" width="400" bgcolor="#E6E6FA">
<tr>
<th>Customer Name:</th>
<td><input type="text"   placeholder="enter name" name="customerName" id="customerName" required/></td>
</tr>
<tr>
<th>Card Number:</th>
<td><input type="number"   placeholder="enter card number" name="debitCardNumber" id="debitCardNumber" required/></td>
</tr>
<tr>
<th>Card Amount:</th>
<td><input type="number"   placeholder="enter amount" name="amount" id="amount" required/></td>
</tr>
<tr>
<th>Expiry Date:</th>
<td><input type="date"   placeholder="expiry date" name="expiryDate" id="expiryDate" required/></td>
</tr>
<tr>

<td colspan="2" align="center"><input type="submit" value="Submit"/>
<button onclick="goBack()">Go Back</button>
</td>

</tr>

    </table>
</form>
</body>
<script>
$.validator.addMethod("alphabetsnspace", function(value, element) {
    return this.optional(element) || /^[a-zA-Z ]*$/.test(value);
});
$('form').validate({
	rules:{
		customerName:{
			required:true,
			alphabetsnspace:true,
		},
		age:{
			required:true,
			range:[21,100]
		}
		
	},
	messages:{
		"customerName":{
			required:"please enter name",
			alphabetsnspace:"please enter alphabets"
		},
		"age":{
			required:"please enter age"
		}
	}
});
function goBack() {
	  window.history.back();
	}
</script>
</html>