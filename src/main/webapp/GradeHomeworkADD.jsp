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

            .grade-title {
                display: flex;
                align-items: center;
                margin-bottom: 1.5rem;
                font-weight: bold;
            }
            
            .greybox {
	            background-color: #ffffff;
                margin: 0px 0px 0px 0px;
                padding: 10px;
                border-radius: 10px;
            }

            .addgrade-form {
                display: grid;
                padding: 5px;
            }

            .textbox {
                color: rgb(0, 0, 0);
                padding: 10px 10px;
                width: 40vh;
                height: 6rem;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-sizing: border-box;

                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            }

            .gradehomeworkadd {
                background-color: #ffffff;
                
                margin: auto;
                padding: 10px;
                text-align: center;
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                grid-template-rows: repeat(auto);
                row-gap: 20px;
            }

            .gs, .dl, .dt, .cl {
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

            .addgrade-container {
                display: flex;
                justify-content: center;
                align-items: center;
                height: calc(100vh - 80px); 
            }

            .bodycontent {
                text-align: center;
                max-width: 600px;
                width: 100%;
            }

            .gradehomeworkadd {
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 1rem; 
            }

          

        </style>
        <title>Grade Homework</title>
    </head>
    <body>
        <header>
            <div class="navbar">
                <div class="content1">
                    <a href="GradeHomeworkADDGRADE.jsp"><b>STUDYBUDDY</b></a>
                </div>
    
                <div class="content2">
                    <a>Welcome back, Cikgu Afiq<b></b></a>
                </div>
    
                <div class="content3">
                    <a><b>LOGOUT</b></a>
                </div>
            </div>
        </header>
        
        <div class="addgrade-container">
            <div class="bodycontent">
                <h1 class="grade-title">
                    ADD GRADE 
                </h1>
                
                <div class="greybox">
                    <div class="gradehomeworkadd">
                        <div class="gs">
                            <label for="gs">Grade Subject:</label><br>
                            <input class="textbox" type="text" id="gs" name="gs">
                        </div>
                    
                    </div>
                    <!-- <form class="addgrade-form">
                        <label for="gs">Grade Subject:</label><br>
                        <input class="textbox" type="text" id="gs" name="gs">
                        <br>
                        <br>

                        <label for="dl">Deadline:</label><br>
                        <input class="textbox" type="text" id="dl" name="dl">
                        <br>
                        <br>

                        <label for="dt">Details:</label><br>
                        <input class="textbox" type="text" id="dt" name="dt">
                        <br>
                        <br>
                        <label for="cl">Class:</label><br>
                        <input class="textbox" type="text" id="cl" name="cl">
                        <br>
                      </form> -->
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