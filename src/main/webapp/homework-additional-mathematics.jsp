<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Additional Mathematics Homework</title>
    <link href="https://fonts.googleapis.com/css?family=Anek+Bangla" rel="stylesheet">
    <style>
   <style>
        body {
            margin: 0;
            font-family: 'Inter', sans-serif;
            background-color: white;
            color: #333;
        }

        .navbar {
            display: grid;
            grid-template-columns: repeat(10, 1fr);
            background-color: #4e60ff;
            padding: 0;
            margin: 0;
        }

        .content1 {
            font-family: 'Anek Bangla';
            grid-column-start: 1;
            grid-column-end: 2;
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
            padding: 20px;
            text-align: center;
        }

        .content3 > a {
            font-family: 'Anek Bangla';
            color: white;
        }

        .bodycontent {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 2rem;
            background: rgb(255, 255, 255);
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .bodycontent > h1 {
            font-family: 'Anek Bangla';
            font-size: 30px;
            padding: 0 0 20px;
            margin: auto;
        }
        .subjectname {
        	font-family: 'Anek Bangla';
	        text-align: center;
	        font-size: 30px;
	        margin: 20px 0;
	        font-weight: bold;
	        font-weight: 900;
	        color: black;
    }

        .greybox {
            background-color: #e0e0e0;
            padding: 20px;
            border-radius: 10px;
        }

        .homework-item {
        	display: flex;
        	flex-direction: column;
        	align-items: flex-start;
            background-color: #f8f9fa;
            padding: 10px;
            border-radius: 60px;
            margin-bottom: 0.5rem;
            display: grid;
            grid-template-columns: auto 1fr auto auto;
            align-items: center;
            gap: 1rem;
        }
        

        .homework-detail {
            color: rgb(51, 132, 252);
            font-family: 'Anek Bangla';
            margin: 5px 5px 5px;
            font-weight: bold;
            font-size:20px;
        }
        
        .homework-info{
        	font-family: 'Anek Bangla';
	         color: rgb(51, 132, 252);
	        font-size: 18px;
	        margin: 10px 30px;
	        color: black;
        }

        .homework-subject, .homework-class, .view-btn {
            font-family: 'Anek Bangla';
        }

        .homework-action {
            display: flex;
            gap: 0.5rem;
            justify-content: flex-end;
            align-items: center;
          }
        .submit-btn {
                background-color: #4B5EE4;
                color: white;
                border: none;
                border-radius: 15px;
                padding: 0.7rem 1rem;
                cursor: pointer;
            }
        
           
        
    </style>
</head>
<body>
<header>
        <div class="navbar">
            <div class="content1">
                 <a ><b>STUDYBUDDY</b></a>
            </div>

            <div class="content2">
                 <a>Welcome back, Student<b></b></a>
            </div>

            <div class="content3">
                <a href="Login.jsp"><b>LOGOUT</b></a>
            </div>
        </div>
    </header>
	<h1 class="subjectname">
                    ADDITIONAL MATHEMATICS
                </h1>
    <div class="homework-container">
            <div class="bodycontent">
            <div class="greybox">
              
                  
             
                	<c:forEach var="homework" items="${homeworks}" >
	                	
	                	
	                	<div class="homework-item">
	                	
	                        <div class="homework-detail"><a>${homework.details}</a></div>
	                        <div> </div>
	                      
	                       	
	                        <div class="homework-subject">
	                        <a class="homework-detail">Due</a>
	                        <a>:${homework.deadline}</a>
	                        </div>
	                        
	                        <div>
	                        <a href="HomeworkSubmission.jsp">
	                        <button class="submit-btn" type="submit">submit</button>
	                        </a>
	                        </div>
	                       
	                      	
                        
	                           
	                    </div> 
	                 </c:forEach>
	                
           
            </div>
        </div>
        
   </div>
</body>
</html>
