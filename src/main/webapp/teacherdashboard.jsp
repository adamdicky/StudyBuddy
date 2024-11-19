<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <style>
        	body {
        		margin: 0;
        	}

            
	        html {
	            background-color: white;
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

            .bodycontent {
                grid-column-start: 2;
                grid-column-end: 10;
                grid-row-start: 2;
                grid-row-end: 10;
                background-color: white;
                padding: 20px;
                margin: 20px;

                border-radius: 10px;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }

            .bodycontent > h1 {
                font-family: Arial, Helvetica, sans-serif;

                font-size: 30px;
                padding: 0px 0px 20px 0px;
                margin: auto;
            }

            .bodycontent > h1 > img {
                align-content: center;
            }

            .greybox {
                display: grid;
	            grid-template-columns: repeat(10, 1fr);
	            grid-template-rows: repeat();
	            background-color: #e0e0e0;
                margin: 0px 0px 0px 0px;
                padding: 0px 0px 0px 0px;

                border-radius: 10px;
            }

            .homeworklist {
                width: 100%;
                align-content: center;
            }

            .homeworklist > li {
                list-style-type: none;
                margin-top: 0px;
                background-color: white;
                padding: 5px;

                border-radius: 10px;
            }
        </style>
        <title>Teacher Dashboard</title>
    </head>
    <body>
        <div class="navbar">
            <div class="content1">
                <a><b>STUDYBUDDY</b></a>
            </div>

            <div class="content2">
                <a>Welcome back, Cikgu --name--</a>
            </div>

            <div class="content3">
                <a><b>LOGOUT</b></a>
            </div>
        </div>

        <div class="bodycontent">
            <h1>
                HOMEWORKS <img src="./green-plus-11975.png" style="display:inline-block; height:1em;">
            </h1>

            <div class="greybox">
				
                <ul class="homeworklist">
                    <li>Homework 1</li>
                    <br>
                    <li>Homework 2</li>
                </ul>

            </div>
        </div>
    </body>
</html>