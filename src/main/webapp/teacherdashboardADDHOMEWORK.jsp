<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <style>
        	body {
        		margin: 0;
        	}

            
	        html {
	            background-color: rgb(232, 232, 232);
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
                font-family: Arial, Helvetica, sans-serif;
                color: white;
            }
	        
	        .content2 {
                grid-column-start: 2;
                grid-column-end: 10;

                text-align: center;
                align-content: center;
	        }

            .content2 > a {
                font-family: Arial, Helvetica, sans-serif;
                color: white;
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

            /* navbar styling ends here */
          
            
            .bodycontent {
                max-width: 1200px;
                margin: 2rem auto;
                padding: 2rem;
                background: rgb(255, 255, 255);
                border-radius: 10px;
                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            }

            
            .bodycontent > h1 {
                font-family: Arial, Helvetica, sans-serif;

                font-size: 30px;
                padding: 0px 0px 20px 0px;
                margin: auto;
            }

            .homework-title {
                display: flex;
                align-items: center;
                margin-bottom: 1.5rem;
                font-weight: bold;
            }
            
            .greybox {
	            background-color: #e0e0e0;
                margin: 0px 0px 0px 0px;
                padding: 20px;
                
                border-radius: 10px;
            }

        </style>
        <title>Teacher Dashboard</title>
    </head>
    <body>
        <header>
            <div class="navbar">
                <div class="content1">
                    <a href="teacherdashboardnew.html"><b>STUDYBUDDY</b></a>
                </div>
    
                <div class="content2">
                    <a>Welcome back, Cikgu Afiq<b></b></a>
                </div>
    
                <div class="content3">
                    <a><b>LOGOUT</b></a>
                </div>
            </div>
        </header>
        
        <div class="addhomework-container">
            <div class="bodycontent">
                <h1 class="homework-title">
                    ADD HOMEWORK 
                </h1>
                
                <div class="greybox">
                    <form>
                        <label for="fname">Homework Name:</label>
                        <input type="text" id="fname" name="fname">
                        <br>
                        <label for="lname">Deadline:</label>
                        <input type="text" id="lname" name="lname">
                        <br>
                        <label for="lname">Details:</label>
                        <input type="text" id="lname" name="lname">
                        <br>
                        <label for="lname">Class:</label>
                        <input type="text" id="lname" name="lname">
                        <br>
                        <label for="lname">Class:</label>
                        <input type="text" id="lname" name="lname">
                      </form>
                </div>
            </div>
        </div>
    </body>
</html>