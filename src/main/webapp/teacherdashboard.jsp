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
                display: grid;
                grid-column-start: 2;
                grid-column-end: 10;
                grid-row-start: 3;
                grid-row-end: 11;
                background-color: white;
                padding: 30px;
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
	            grid-template-columns: repeat(6, 1fr);
	            grid-template-rows: repeat();
	            background-color: #e0e0e0;
                margin: 0px 0px 0px 0px;
                padding: 20px;
                
                border-radius: 10px;
            }

            .homework {
                display: grid;
                grid-column-start: 1;
                grid-column-end: 7;
                padding: 5px;
                background-color: white;

                border-radius: 10px;
            }

            .details {
                display: grid;
                grid-column-start: 1;
                grid-column-end: 2;
                font-family: Arial, Helvetica, sans-serif;
                padding: 0px 0px 0px 3px;
                color: #4e60ff;

                text-align: center;
                align-content: center;
            }

            .subjname {
                display: grid;
                grid-column-start: 2;
                grid-column-end: 3;
                font-family: Arial, Helvetica, sans-serif;

                 
                align-content: center;
            }

            .className {
                grid-column-start: 3;
                grid-column-end: 4;
                font-family: Arial, Helvetica, sans-serif;

                text-align: center;
                align-content: center;
            }

            .remove {
                grid-column-start: 4;
                grid-column-end: 5;
                align-content: center;
                text-align: center;

                background: none;
                color: inherit;
                border: none;
                padding: 0;
                font: inherit;
                cursor: pointer;
                outline: inherit;
            }

            .remove > img {

            }

            .edit {
                grid-column-start: 5;
                grid-column-end: 6;
                text-align: center;
                align-content: center;

                background: none;
                color: inherit;
                border: none;
                padding: 0;
                font: inherit;
                cursor: pointer;
                outline: inherit;
            }

            .edit > img {
             
            }
            
            .viewSub {
                grid-column-start: 6;
                grid-column-end: 7;
                font-family: Arial, Helvetica, sans-serif;
                align-content: center; 

                background: none;
                color: inherit;
                border: none;
                cursor: pointer;
                outline: inherit;
            }

            .viewSub > a {
                color: #4e60ff;
                
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
                <a>Welcome back, <b>Cikgu Afiq</b></a>
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
				
                <div class="homework h1">
                    <a class="details"><b>TEXTBOOK PAGE 94-96</b></a>
                    <a class="subjname"><b>ADDITIONAL MATHEMATICS</b></a>
                    <a class="className"><b>5 AMANAH</b></a>
                    <button  class="remove" type="submit">
                        <img src="./minus-button.png" style="display:inline-block; height:2.5em; vertical-align: middle; ">
                    </button>
                    <button class="edit" type="submit">
                        <img src="./edit-button.png" style="display:inline-block; height:2.5em; vertical-align: middle;">
                    </button>
                    <button class="viewSub" type="submit" style="display:inline-block;">
                        <a><b>VIEW SUBMISSION</b></a>
                    </button>
                </div>

            </div>
        </div>
    </body>
</html>