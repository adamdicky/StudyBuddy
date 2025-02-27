<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<html>
    <head>
        <link href='https://fonts.googleapis.com/css?family=Anek+Bangla' rel='stylesheet'>
    <style>
        body {
                margin: 0;
                font-family: 'Anek Bangla'; /* Apply Anek Bangla globally */
            }
            
      .message-box {
    position: fixed;
    left: 50%;
    top: 78%;
    transform: translate(-50%, -50%);
    padding: 20px;
    border-radius: 8px;
    text-align: center;
    min-width: 300px;
    z-index: 1000;
}
        .success {
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
        }
        .failure {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
        }
        a {
            text-decoration: none;
            color: #007bff;
        }
        a:hover {
            text-decoration: underline;
        }
        .button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 20px;
        }
        .button:hover {
            background-color: #0056b3;
        }
        
         html {
                background-color: white;
            }

            .navbar {
                display: grid;
                grid-template-columns: repeat(10, 1fr);
                background-color: #4e60ff;
                margin: 0;
                padding: 0;
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
                color: white;
            }

            .content2 {
                grid-column-start: 2;
                grid-column-end: 10;
                text-align: center;
                align-content: center;
            }

            .content2 > a {
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
                background: rgb(255, 255, 255);
                border-radius: 10px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);         
            }

            .bodycontent > h1 {
                font-size: 30px;
                padding: 0 0 20px 0;
                margin: auto;
            }

            .admin-title {
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
                text-decoration: none;
            }

            .greybox {
                background-color: #e0e0e0;
                margin: 0;
                padding: 20px;
                border-radius: 10px;
            }

            .admin-item {
                background-color: #f8f9fa;
                padding: 1rem;
                border-radius: 60px;
                margin-bottom: 1rem;
                display: grid;
                grid-template-columns: 230px 140px 240px 150px 140px 80px;
                align-items: center;
                gap: 1rem;
            }
            
            .label-item {            	
            	color: #000000;
            	text-align: center;
            	font-weight: bold;
            	font-size: 17px; 
            	
            }
            
            .label1-item {
            	background-color: #f8f9fa;
                padding: 1rem;
                border-radius: 60px;
                margin-bottom: 1rem;
                display: grid;
                grid-template-columns: 150px 210px 190px 170px 118px 220px;
                align-items: center;
                gap: 1rem;
            
            }

            .username-detail {
                color: #0000FF;
            }

			.form-btn  {
               margin:auto;
            }
            
            .admin-action {
                display: flex;
                gap: 0.5rem;
                justify-content: flex-end;
            }
            
            .admin-action form {
   				 margin: 0;
			}

           .delete-btn, .edit-btn {
    			border: none;
    			border-radius: 50%;
    			width: 30px;
    			height: 30px;
    			cursor: pointer;
    			text-align: center;
    			color: white;
    			font-weight: bold;
    			text-decoration: none;
			}

			.delete-btn {
    			background-color: #ff4757;
			}

			.edit-btn {
   				background-color: #4B5EE4;
			}
        
    </style>
    <title>Admin Dashboard</title>
    </head>
    <body>
        <header>
            <div class="navbar">
                <div class="content1">
                  <a ><b>STUDYBUDDY</b></a>
                </div>

                <div class="content2">
                    <a>Welcome back, Admin<b></b></a>
                </div>

                <div class="content3">
                    <a href="Login.jsp"><b>LOGOUT</b></a>
                </div>
            </div>
        </header>

        <div class="admin-container">
            <div class="bodycontent">
                <h1 class="admin-title">
                    USER MANAGEMENT 
                    <a href="AdminADDUser.jsp" class="plus-icon">+</a>
                </h1>

                <div class="greybox">
                	<div class="label-item">
                	 <div class="label1-item">
            			<div>NAME</div>
            			<div>PASSWORD</div>
            			<div>EMAIL</div>
            			<div>ROLE</div>
            			<div>CLASS</div>
            			<div>DELETE/EDIT</div>
        			</div>
        			</div> 
                    <c:if test="${not empty users}">
                	<c:forEach var="user" items="${users}" >
	                	<div class="admin-item">
	                        <div class="username-detail"><a><b>${user.name}</b></a></div>
	                        <div class="username-detail"><a>******</a></div>
	                        <div class="username-detail"><a>${user.email}</a></div>
	                        <div class="username-detail"><a>${user.role}</a></div>
	                        <div class="username-detail"><a>${user.classname}</a></div>
	                        
	                        <div class="admin-action">
	                           <a href="AdminDELETEUser.jsp?name=${user.name}&password=${user.password}&email=${user.email}&role=${user.role}&className=${user.classname}" 
   									class="delete-btn"><b>-</b></a>	                        	                                         
	                           <a href="AdminEDITUser.jsp?name=${user.name}&password=${user.password}&email=${user.email}&role=${user.role}&className=${user.classname}" 
	                           		class="edit-btn">/</a>                      
	                        </div> 
	                              
	                    </div> 
	                 </c:forEach>
	                </c:if>          	             
	             <c:if test="${empty users}">
	             	<p>There is no user.</p>
	             </c:if> 
	                                   
                        </div>
                    </div>
                 </div>
</body>
</html>