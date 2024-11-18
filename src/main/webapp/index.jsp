<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Index Page</title>
</head>
<body>
<h2>Customer Information</h2>
<form action="profile" method="get">
<label for="name">Name:</label>
<input type="text" id="name" name="name" required>
<br><br>
<label for="customerId">Customer ID:</label>
<input type="text" id="customerId" name="customerId" required>
<br><br>
<input type="submit" value="Submit">
</form>
</body>
</html>