<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>StudyBuddy Dashboard</title>
    <link href="https://fonts.googleapis.com/css?family=Anek+Bangla" rel="stylesheet">
   
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

        .greybox {
            background-color: #e0e0e0;
            padding: 20px;
            border-radius: 10px;
        }

        .homework-item {
            background-color: #f8f9fa;
            padding: 10px;
            border-radius: 60px;
            margin-bottom: 0.5rem;
            display: grid;
            grid-template-columns: auto 1fr 1fr auto;
            align-items: center;
            gap: 1rem;
        }

        .homework-detail {
            color: rgb(51, 132, 252);
            font-family: 'Anek Bangla';
            
            font-weight: bold;
            font-size:15px;
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

        .delete-btn {
            background-color: #ff4757;
            color: white;
            border: none;
            border-radius: 50%;
            width: 24px;
            height: 24px;
            cursor: pointer;
            text-align: center;
        }

        .edit-btn {
            background-color: #4B5EE4;
            color: white;
            border: none;
            border-radius: 50%;
            width: 24px;
            height: 24px;
            cursor: pointer;
            text-align: center;
        }

        .view-btn {
            background-color: #4B5EE4;
            color: white;
            border: none;
            border-radius: 15px;
            padding: 0.5rem 1rem;
            cursor: pointer;
        }
		
				/* Adjust grid to 2x2 layout with smaller row gap */
		.subjects-grid {
		    display: grid;
		    grid-template-columns:  0.5fr 0.5fr ; /* Two columns */
		    grid-template-rows:  0.5fr 0.5fr ;  /* Two rows */
		    gap: 30px; 
		    padding: 50px;
		    justify-content: center;
		    align-items: center;
		    
		}
		
		.subject-card {
		    padding: 20px;
		    border-radius: 10px;
		    color: white;
		    text-align: center;
		    transition: transform 0.3s;
		    
		    
		}
		
		.subject-card:hover {
		    transform: translateY(-5px);
		}
				

        .view-homework-btn {
            background: white;
            color: var(--text-primary);
            border: none;
            padding: 0.75rem 1.5rem;
            border-radius: 25px;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s;
        }

        .view-homework-btn:hover {
            background: var(--text-primary);
            color: white;
        }

        /* Subject card colors */
        .Additional-Mathematics { background: #ff7043; }
        .Chemistry { background: #29b6f6; }
        .English { background: #66bb6a; }
        .Physics { background: #ab47bc; }

        /* Responsive design */
        @media (max-width: 768px) {
            .wrapper {
                padding: 1rem;
            }

            header {
                flex-direction: column;
                gap: 1rem;
                text-align: center;
            }

            .subjects-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="navbar">
            <div class="content1">
                <a href="${pageContext.request.contextPath}/homepage"><b>STUDYBUDDY</b></a>
            </div>

            <div class="content2">
                <a>Welcome back, ${name}<b></b></a>
            </div>

            <div class="content3">
              <a href="Login.jsp"><b>LOGOUT</b></a>
            </div>
        </div>
    </header>
  
      
            
                
       
                
                    
     <div class="homework-container">
        <div class="bodycontent">
            <div class="greybox">
              
                 <!-- Loop through homeworks passed from controller --> 
             
                	<c:forEach var="homework" items="${homeworks}" >
	                	<div class="homework-item">
	                        <div class="homework-detail"><a>${homework.details}</a></div>
	                        <div> </div>
	                        <div></div>
	                       	
	                        <div class="homework-subject"><a>${homework.homework}</a></div>
	                      	
                        
	                           
	                    </div> 
	                 </c:forEach>
	                
           
            </div>
        </div>
        
         <!-- Subjects Section (Dynamic List of Subjects)--> 
<section class="subjects-grid">

    <c:set var="subjects" value="${subjects}" />
    <c:forEach items="${subjects}" var="subject">
        <div class="subject-container">
        
            <div class="subject-card ${subject.replace(' ', '-')}">
                <h3>${subject}</h3>
                <!-- Update the href to point to the filterBySubject controller with the subject as a parameter -->
                <a href="${pageContext.request.contextPath}/filterBySubject?subject=${subject}">
                
                    <button class="view-homework-btn">View All Homework</button>
                </a>
            </div>
        </div>
    </c:forEach>
</section>
        
    </div>     
   

</body>
</html>
