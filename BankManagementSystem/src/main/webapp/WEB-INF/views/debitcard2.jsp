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
<style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("img_nature.jpg");

  min-height: 380px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
 
  right: 10;
  margin: 20px;
  max-width: 300px;
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: #514caf;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
</style>
</head>
<body>
<div class="bg-img">
  <form action="/adddebitcarddb" class="container" id="form" name="form">
    <h1>Debit Card</h1>

    <label for="customerName"><b>Customer Name:</b></label>
    <select id="customerName" name="customerName">
    <option label=" "></option>
    <c:forEach items="${customers}" var="customer">
    <option value="${customer.customerName} ">
    <c:out value="${customer.customerName}"></c:out>
    </option>
    </c:forEach>
    </select>
    <label for="debitCardNumber"><b>Card Number:</b></label>
    <input type="text" placeholder="Enter Card Number" name="debitCardNumber" id="debitCardNumber" >
    
    <label for="amount"><b>Card Amount:</b></label>
    <input type="text" placeholder="Enter Card Amount" name="amount" id="amount">
    
    <label for="expiryDate"><b>Expiry Date:</b></label>
    <input type="date" placeholder="Enter Expiry Date" name="expiryDate" id="expiryDate">
   
    <br></br>
    
    <button type="submit" class="btn">Submit</button>
    <a href="http://localhost:8080/">Go back</a>
    </br>
  </form>
</div>
</body>
<script>
$.validator.addMethod("debitcard", function(value, element) {
    return this.optional(element) ||/^([0-9]{15})$/.test(value);
}); 
$.validator.addMethod("expiry",function(value,element){
    var currentDate=new Date();
    var expiryDate=new Date(value);
    if(currentDate<expiryDate||currentDate==expiryDate)
        return true;
    return false;
});
$('form').validate({
	rules:{
		amount:{
			required:true,
			min:40000
		},
		debitCardNumber:{
			required:true,
			debitcard:true
		},
		expiryDate:{
			required:true,
			expiry:true
		}
	},
	messages:{
		"debitCardNumber":{
			required:"please enter debitcard name",
				debitcard:"please enter valid debit card number"
		},
		"expiryDate":{
			required:"please enter debitcard date",
			expiry:"please enter valid debit card date"
		}
	
		
	}
});

</script>
</html>