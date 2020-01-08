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
  <form action="/customer" class="container">
    <h3>Customer Details</h3>

    <label for="customerName"><b>Customer Name</b></label>
    <input type="text" placeholder="Enter Customer Name" name="customerName" id="customerName" required>
<br></br>
    <label for="age"><b>Age</b></label>
    <input type="text" placeholder="Enter Customer Age" name="customerAge" id="customerAge" required>
    

<button type="submit" class="btn">Login</button>
 <a href="http://localhost:8080/">Go back</a>
  </form>
</div>
    
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