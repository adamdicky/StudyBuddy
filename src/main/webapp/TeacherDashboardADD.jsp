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
                margin: 0px 0px 0px 0px;
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
                width: 40vh;
                height: 6rem;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-sizing: border-box;

                box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            }

            .homeworkadd {
                background-color: #ffffff;
                
                margin: auto;
                padding: 10px;
                text-align: center;
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                grid-template-rows: repeat(auto);
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
        <title>Teacher Dashboard</title>
    </head>
    <body>
        <header>
            <div class="navbar">
                <div class="content1">
                    <a><b>STUDYBUDDY</b></a>
                </div>
    
                <div class="content2">
                    <a>Welcome back, Cikgu<b></b></a>
                </div>
    
                <div class="content3">
                    <a href="Login.jsp"><b>LOGOUT</b></a>
                </div>
            </div>
        </header>
        
        <div class="addhomework-container">
            <div class="bodycontent">
                <h1 class="homework-title">
                    ADD HOMEWORK 
                </h1>
                
                <form action="${homework == null ? 'addhomework' : 'updatehomework'}" method="POST">
				<!-- <input type="hidden" name="index" value="${index}"/> -->

	               	<c:if test="${homework != null}">
	                	<input type="hidden" name="index" value="${index}"/>
	                </c:if>
	               <!-- index is not detected in controller.. idky -->
	               	
               
                	<div class="greybox">
	                    <div class="homeworkadd">
	                        <div class="hw">
	                            <label for="hw">Homework Subject:</label><br>
	                            <input class="textbox" type="text" id="hw" name="hw" value="${homework != null ? homework.homework : ''}" required />
	                        </div>
	                        <div class="dl">   
	                            <label for="dl">Deadline:</label><br>
	                            <input class="textbox" type="text" id="dl" name="dl" value="${homework != null ? homework.deadline : ''}" required>
	                        </div>
	
	                        <div class="dt">
	                            <label for="dt">Details:</label><br>
	                            <input class="textbox" type="text" id="dt" name="dt" value="${homework != null ? homework.details : ''}" required>
	                        </div>
	
	                        <div class="cl">
	                            <label for="cl">Class:</label><br>
	                            <input class="textbox" type="text" id="cl" name="cl" value="${homework != null ? homework.classname : ''}" required />
	                        </div>
	                    </div>
	                    <!-- <form class="addhomework-form">
	                        <label for="hw">Homework Name:</label><br>
	                        <input class="textbox" type="text" id="hw" name="hw">
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
	                      
	                      <div class="confirmbutton">
		                  <center>
		                  	<!-- <INPUT class="confirm-btn "NAME="submit" TYPE="submit" VALUE="Submit"> -->
		                  	<button class="confirm-btn" type="submit">
								${homework == null? 'Submit' : 'Update Homework'}
							</button>
		                  </center>
               		</div>
               		</div>
               		</form>
               		
               		
            </div>
        </div>
    </body>
</html>