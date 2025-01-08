<!DOCTYPE html>
<html>
<head>
    <title>Submission Successful</title>
    <style>
    
  		.navbar {
            display: grid;
            grid-template-columns: repeat(10, 1fr);
            background-color: #4e60ff;
            padding: 0;
            margin: 0;
        }

        .content1 {
            font-family: 'Anek Bangla';
            grid-column-start: 1;
            grid-column-end: 2;
            padding: 20px;
            text-align: center;
        }

        .content1 > a {
            text-decoration: none;
            color: white;
        }

        .content2 {
            grid-column-start: 2;
            grid-column-end: 10;
            text-align: center;
            align-content: center;
        }

        .content2 > a {
            font-family: 'Anek Bangla';
            color: white;
        }

        .content3 {
            grid-column-start: 10;
            grid-column-end: 11;
            padding: 20px;
            text-align: center;
        }

        .content3 > a {
            font-family: 'Anek Bangla';
            color: white;
        }
    
        body {
            font-family: 'Anek Bangla';
            text-align: center;
            margin-top: 50px;
        }
        .success-message {
            font-size: 20px;
            color: green;
        }
        .submission-details {
            font-size: 18px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

 <div class="navbar">
            <div class="content1">
                <a><b>STUDYBUDDY</b></a>
            </div>

            <div class="content2">
                <a>Welcome back, Student<b></b></a>
            </div>

            <div class="content3">
                <a href="Login.jsp"><b>LOGOUT</b></a>
            </div>
        </div>
        
    <div class="success-message">
        <h2>Homework Submission Successful!</h2>
        <p>Thank you for submitting your homework.</p>
    </div>

    <div class="submission-details">
        
    </div>

    <div>
        <a href="StudentDashboard.jsp" class="btn">Go to Homepage</a>
    </div>
</body>
</html>