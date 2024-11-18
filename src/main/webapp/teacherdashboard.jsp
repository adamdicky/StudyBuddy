<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <style>
        	body {
        		margin: 0;
        	}

            
	        html {
	            background-color: red;
	        }

            .navbar {
	            display: grid;
	            grid-template-columns: repeat(10, 1fr);
	            grid-template-rows: repeat();
	            background-color: #3079f0;
                margin: 0px 0px 0px 0px;
                padding: 0px;
                
        	}

	        .content1 {
	            background-color: blue;
	            grid-column-start: 1;
	            grid-column-end: 2;
	            
	            grid-row-start: 1;
	            grid-row-end: 2;
	            padding: 20px;
	
	        }
	        
	        .content2 {
	        	
	        }
	        
	        .content3 {
	        	background-color: purple;
	            grid-column-start: 10;
	            grid-column-end: 11;
	            
	            grid-row-start: 1;
	            grid-row-end: 2;
	            padding: 20px;
	        }

            .bodycontent {
                grid-column-start: 2;
                grid-column-end: 10;
                grid-row-start: 2;
                grid-row-end: 10;
                background-color: white;
                padding: 20px;
                margin: 20px;

            }
        </style>
        <title>Teacher Dashboard</title>
    </head>
    <body>
        <div class="navbar">
            <div class="content1">
                <a>StudyBuddy</a>
            </div>
            <div class="content2">

            </div>
            <div class="content3">
                <a>LOGOUT</a>
            </div>
        </div>

        <div class="bodycontent">
            <div class="whitebox">
				<a>test</a>
            </div>
        </div>
    </body>
</html>