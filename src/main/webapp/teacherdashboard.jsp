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

            /* navbar styling ends here */
          
            
            .bodycontent {
                max-width: 1200px;
                margin: 2rem auto;
                padding: 2rem;
                background: red;
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

            .plus-icon {
                background-color: #4cd137;
                color: white;
                width: 24px;
                height: 24px;
                border-radius: 50%;
                display: inline-flex;
                align-items: center;
                justify-content: center;
                margin-left: 0.5rem;
                font-size: 1.2rem;
                cursor: pointer;
            }
            
            .greybox {
	            background-color: #e0e0e0;
                margin: 0px 0px 0px 0px;
                padding: 20px;
                
                border-radius: 10px;
            }

            .homework-item {
                background-color: #f8f9fa;
                padding: 1rem;
                border-radius: 5px;
                margin-bottom: 1rem;
                display: grid;
                grid-template-columns: 2fr 1fr 1fr 3fr;
                align-items: center;
                gap: 1rem;
            }

            .homework-action {
                display: flex;
                gap: 0.5rem;
                justify-content: flex-end;
            }

            .delete-btn {
                background-color: #ff4757;
                color: white;
                border: none;
                border-radius: 50%;
                width: 24px;
                height: 24px;
                cursor: pointer;
            }

            .edit-btn {
                background-color: #4B5EE4;
                color: white;
                border: none;
                border-radius: 5px;
                padding: 0.5rem 1rem;
                cursor: pointer;
            }

            .view-btn {
                background-color: #4B5EE4;
                color: white;
                border: none;
                border-radius: 5px;
                padding: 0.5rem 1rem;
                cursor: pointer;
            }


        </style>
        <title>Teacher Dashboard</title>
    </head>
    <body>
        <header>
            <div class="navbar">
                <div class="content1">
                    <a><b>STUDYBUDDY</b></a>
                </div>
    
                <div class="content2">
                    <a>Welcome back, Cikgu Afiq<b></b></a>
                </div>
    
                <div class="content3">
                    <a><b>LOGOUT</b></a>
                </div>
            </div>
        </header>
        
        <div class="homework-container">
            <div class="bodycontent">
                <h1 class="homework-title">
                    HOMEWORKS 
                    <span class="plus-icon">+</span>
                </h1>
                
                <div class="greybox">
                    <div class="homework-item">
                        <div class="homework-detail"><a>ACTIVITY BOOK PAGE 12 - 14</a></div>
                        <div class="homework-subject"><a>ADDITIONAL MATHETMATICS</a></div>
                        <div class="homework-class"><a>5 SKIBIDI</a></div>
                        <div class="homework-action">
                            <button class="delete-btn"><b>-</b></button>
                            <button class="edit-btn">/</button>
                            <button class="view-btn">VIEW SUBMISSION</button>
                        </div>
                    </div>

                    <div class="homework-item">
                        <div class="homework-detail"><a>ACTIVITY BOOK PAGE 12 - 14</a></div>
                        <div class="homework-subject"><a>ADDITIONAL MATHETMATICS</a></div>
                        <div class="homework-class"><a>5 SKIBIDI</a></div>
                        <div class="homework-action">
                            <button class="delete-btn"><b>-</b></button>
                            <button class="edit-btn">/</button>
                            <button class="view-btn">VIEW SUBMISSION</button>
                        </div>
                    </div>
                
                </div>
            </div>
        </div>
    </body>
</html>