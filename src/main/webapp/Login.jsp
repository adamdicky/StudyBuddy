<!DOCTYPE html>
<html>
<head>
    <title>Login - StudyBuddy</title>
    <style>
        /* General styling */
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Styling for the container */
        .container {
            text-align: center;
            width: 100%;
            max-width: 450px;
            background: #ffffff;
            padding: 50px 30px;
            border-radius: 15px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
        }

        /* Header styles */
        .container h1 {
            font-size: 36px; /* Larger font size */
            font-weight: 900; /* Extra bold font weight */
            color: #4a60ff; /* Blue color */
            margin: 0;
        }

        .container p {
            margin-top: 10px;
            color: #777777;
            font-size: 18px; /* Larger font size */
        }

        /* Form styles */
        label {
            display: block;
            font-size: 14px;
            text-align: left;
            margin-bottom: 8px;
            color: #555555;
            font-weight: bold;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 15px;
            margin-bottom: 25px;
            border: 1px solid #dcdcdc;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 18px;
        }

        /* Button styles */
        input[type="submit"] {
            width: 100%;
            padding: 15px;
            font-size: 18px;
            font-weight: bold;
            background: #4a60ff;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background: #3749d6;
        }

        /* Forgot Password link */
        .forgot-password {
            margin-top: 15px;
            font-size: 16px;
            color: #777777;
            text-decoration: none;
        }

        .forgot-password:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>STUDYBUDDY</h1>
        <p>Your buddy to excel in studies</p>

        <!-- Display error or success message -->
        <c:if test="${not empty error}">
            <div class="message error">${error}</div>
        </c:if>
        <c:if test="${not empty message}">
            <div class="message success">${message}</div>
        </c:if>

        <!-- Login Form -->
        <form action="${pageContext.request.contextPath}/login" method="post">
            <label for="name">USERNAME</label>
            <input type="text" id="name" name="name" required>

            <label for="password">PASSWORD</label>
            <input type="password" id="password" name="password" required>
			
            <input type="submit" value="SIGN IN">
        </form>
		
        <!-- Forgot Password link -->
        <a href="${pageContext.request.contextPath}/forgot-password" class="forgot-password">Forgot password?</a>
    </div>
</body>
</html>


