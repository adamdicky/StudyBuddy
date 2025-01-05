<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <link href='https://fonts.googleapis.com/css?family=Anek Bangla' rel='stylesheet'>
        <style>
        	body {
        		margin: 0;
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
                font-family: 'Anek Bangla';
	            grid-column-start: 1;
	            grid-column-end: 2;
	            
	            grid-row-start: 1;
	            grid-row-end: 2;
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
	            
	            grid-row-start: 1;
	            grid-row-end: 2;
	            padding: 20px;
                text-align: center;
	        }

            .content3 > a {
                color: white;
                font-family: 'Anek Bangla';

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
                font-family: 'Anek Bangla';
                font-size: 30px;
                padding: 0px 0px 0px 0px;
                margin: auto;
            }

            .homework-title {
                display: flex;
                align-items: center;
                margin-bottom: 1.5rem;
                font-weight: bold;
            }
            
            .greybox {
	            background-color: #ffffff;
                margin: 0px auto 0px auto;
                padding: 10px;
                border-radius: 10px;
            }

            .addhomework-form {
                display: grid;
                padding: 5px;
            }

            .textbox {
                color: rgb(0, 0, 0);
                padding: 10px 10px;
                width: 100vh;
                height: 40vh;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-sizing: border-box;
                align-content: center;

                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            }

            .submissionadd {
                background-color: #ffffff;
                
                margin: auto;
                padding: 10px;
                text-align: center;
                display: grid;
                
                row-gap: 20px;
            }

            .hw, .dl, .dt, .cl {
                font-family: 'Anek Bangla';
            }

            .confirm-btn {
                background-color: #4361ee;  /* Bright blue color */
                color: white;
                padding: 10px 24px;
                border: none;
                border-radius: 8px;
                font-size: 16px;
                font-weight: 500;
                text-transform: uppercase;
                cursor: pointer;

                font-family: 'Anek Bangla';
            }

        </style>
        <title>Submission</title>
    </head>
    <body>
        <header>
            <div class="navbar">
                <div class="content1">
                    <a href="teacherdashboardnew.html"><b>STUDYBUDDY</b></a>
                </div>
    
                <div class="content2">
                    <a><b></b></a>
                </div>
    
                <div class="content3">
                    <a><b>LOGOUT</b></a>
                </div>
            </div>
        </header>
        
        <div class="addhomework-container">
            <div class="bodycontent">
                <h1 class="homework-title">
                    ADD SUBMISSION 
                </h1>
                
                <div class="greybox">
                    <div class="submissionadd">
                        <div class="hw">
                           
                            <input class="textbox" type="text" id="hw" name="hw">
                        </div>                 
                        
                    </div>
                    
                </div>

                <div class="confirmbutton">
                    <center>
                        <button class="confirm-btn">CONFIRM</button>
                    </center>
                </div>
            </div>
        </div>
    </body>
</html>