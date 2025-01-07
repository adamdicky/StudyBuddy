<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<html>
    <head>
        <link href='https://fonts.googleapis.com/css?family=Anek Bangla' rel='stylesheet'>
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
                font-family: 'Anek Bangla';
                color: white;
            }

            /* navbar styling ends here */
          
            
            .bodycontent {
                max-width: 1200px;
                margin: 2rem auto;
                padding: 2rem;
                background: rgb(255, 255, 255);
                border-radius: 10px;
                box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            }

            
            .bodycontent > h1 {
                font-family: 'Anek Bangla';

                font-size: 30px;
                padding: 0px 0px 20px 0px;
                margin: auto;
                
            }
                
            .activity-title {            
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

            .activity-item {
                background-color: #f8f9fa;
                padding: 10px;
                border-radius: 60px;
                margin-bottom: 1rem;
                display: grid;
                grid-template-columns: 2fr 2fr 1fr 2fr;
                align-items: center;
                gap: 1rem;
            }

            .student-name {
                color: rgb(51, 132, 252);
                font-family: 'Anek Bangla';
            }

            .student-subject, .student-class, .viewgrade-btn {
                font-family: 'Anek Bangla';
            }

            .submission-action {
                background-color: #ffffff;
                text-align: center;
            }


            .submitted-btn {
            	font-family: 'Anek Bangla';
                background-color: #67FF4E;
                color: white;
                border-radius: 15px;
                width: 140px;
                height: 30px;               
                cursor: pointer;
                display: flex;
                justify-content: center;
                align-items: center;
                margin: auto;
                
            }
            
            .notsubmitted-btn {
            	font-family: 'Anek Bangla';
                background-color: #FF4E4E;
                color: white;
                border-radius: 15px;
                width: 140px;
                height: 30px;               
                cursor: pointer;
                display: flex;
                justify-content: center;
                align-items: center;
                margin: auto;
                
            }
            
             .viewgrade-btn {
                background-color: #4B5EE4;
                color: white;
                border: none;
                border-radius: 15px;
                padding: 0.5rem 1rem;
                cursor: pointer;
             }
            
            </style>
            <title>Grade Homework Page</title>
    </head>
    <body>
        <header>
            <div class="navbar">
                <div class="content1">
                    <a href="GradeHomeworkView.jsp"><b>STUDYBUDDY</b></a>
                </div>
    
                <div class="content2">
                    <a>Welcome back, Cikgu Afiq<b></b></a>
                </div>
    
                <div class="content3">
                    <a><b>LOGOUT</b></a>
                </div>
            </div>
        </header>
        
        <!---->
            
 
        <div class="activity-container">
            <div class="bodycontent">
                <h1 class="activity-title">
                    ${homeworkDetails}
                </h1>
                
                <div class="greybox">
                	
                	 <div class="activity-item">
                        <div class="student-name"><a>MUHAMMAD ALI</a></div>
                        <div class="student-class"><a>5 AMANAH</a></div>
                       
                        <div class="submission-action">                                                        
                            <div class="submitted-btn"><a>SUBMITTED</a></div>
                        </div>
                        <button class="viewgrade-btn">60/100</button>
                    </div>
                    
                    <div class="activity-item">
                        <div class="student-name"><a>WAN AKIF</a></div>
                        <div class="student-class"><a>5 AMANAH</a></div>
                       
                        <div class="submission-action">                                                        
                            <div class="notsubmitted-btn"><a>NOT SUBMITTED</a></div>
                        </div>
                        <button class="viewgrade-btn">NOT GRADE</button>
                    </div>
            
                </div>
            </div>
        </div>
    </body>
</html>