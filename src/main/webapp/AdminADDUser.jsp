<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Anek Bangla' rel='stylesheet'>
    <style>
       body {
        		margin: 0;
        		font-family: 'Anek Bangla';
        	}

            
	       html {
	            background-color: #959595;
	        }

            .navbar {
	            display: grid;
	            grid-template-columns: repeat(10, 1fr);
	            grid-template-rows: repeat();
	            background-color: #4e60ff;
                margin: 0px 0px 0px 0px;
                padding: 0px;
                
        	}

	        .content1 {
	            grid-column-start: 1;
	            grid-column-end: 2;
	            
	            grid-row-start: 1;
	            grid-row-end: 2;
	            padding: 20px;
                text-align: center;
	
	        }

            .content1 > a {
                font-family: 'Anek Bangla';
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
    			 color: white; /* Change font color to white */
			}
	        
	        .content3 {
	            grid-column-start: 10;
	            grid-column-end: 11;
	            
	            grid-row-start: 1;
	            grid-row-end: 2;
	            padding: 20px;
                text-align: center;
	        }

            .content3 > a {
                color: white;
            }
            
            .box {
            max-width: 500px;
            margin: 5rem auto;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 2rem;
            position: relative;
        }

        .box h1 {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 1.5rem;
        }    

        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 1rem 2rem;
            margin-bottom: 2rem;
        }

        .form-grid label {
            font-weight: bold;
            margin-bottom: 0.5rem;
            display: block;
            font-family: 'Anek Bangla';
            
        }

        .form-grid input {
            width: 100%;
            padding: 0.5rem 1rem;
            border: 1px solid #ccc;
            border-radius: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .confirm-button {
            background-color: #4e60ff;
            color: white;
            font-weight: bold;
            font-size: 16px;
            border: none;
            border-radius: 20px;
            padding: 0.8rem 1.5rem;
            cursor: pointer;
            display: block;
            margin: 0 auto;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            transition: all 0.2s ease-in-out;
        }

        .confirm-button {
            background-color: #4361ee;
            font-family: 'Anek Bangla';
        }

        .close-button {
            position: absolute;
            top: 1rem;
            right: 1rem;
            background-color: #4e60ff;
            color: white;
            border: none;
            border-radius: 50%;
            width: 30px;
            height: 30px;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            text-decoration: none
        }

        .close-button:hover {
            background-color: #3b4ed7;
        }
    </style>
    <title>Add User</title>
    </head>
    
    <body>
        <header>
            <div class="navbar">
                <div class="content1">
                   <a ><b>STUDYBUDDY</b></a>
                </div>
    
                <div class="content2">
                    <a>Welcome back, Admin<b></b></a>
                </div>
    
                <div class="content3">
                    <a href="Login.jsp"><b>LOGOUT</b></a>
                </div>
            </div>
        </header>
        

    <div class="box">
    <a href="Admin.jsp" class="close-button">&times;</a>
<h1>Add User</h1>
<form method="POST" action="${pageContext.request.contextPath}/saveUser">
    <div class="form-grid">
        <div>
            <label for="name">Name</label>
            <input type="text" id="name" name="name" placeholder="Enter Name">
        </div>
        <div>
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter Password">
        </div>
        <div>
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter Email">
        </div>
        <div>
            <label for="role">Role</label>
            <input type="text" id="role" name="role" placeholder="Enter Role">
        </div>
        <div>
            <label for="className">Class</label>
            <input type="text" id="className" name="className" placeholder="Enter Class">
        </div>
    </div>
    <button class="confirm-button">CONFIRM</button>
</form>
    </div>
</body>
</html>