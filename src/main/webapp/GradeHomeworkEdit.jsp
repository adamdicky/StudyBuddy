<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                padding: 10px;
                border-radius: 60px;
                margin-bottom: 1rem;
                display: grid;
                grid-template-columns: 2fr 2fr 1fr 2fr;
                align-items: center;
                gap: 1rem;
            }

            .homework-detail {
                color: rgb(51, 132, 252);
                font-family: 'Anek Bangla';
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
            
            
            <div class="header">
    <h1>STUDYBUDDY</h1>
    <a href="#" class="logout">LOGOUT</a>
</div>

<div class="container">
    <div class="title">Activity Book Page 10 - 15 &middot; Additional Mathematics</div>

    <table class="table">
        <thead>
            <tr>
                <th>Student Name</th>
                <th>Class</th>
                <th>Status</th>
                <th>Grade</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Muhammad Ahmad</td>
                <td>5 Amanah</td>
                <td><span class="status-submitted">SUBMITTED</span></td>
                <td>GRADED</td>
            </tr>
            <tr>
                <td>Wan Arif</td>
                <td>5 Amanah</td>
                <td><span class="status-submitted">SUBMITTED</span></td>
                <td>GRADED</td>
            </tr>
            <tr>
                <td>Adam Safwan</td>
                <td>5 Amanah</td>
                <td><span class="status-submitted">SUBMITTED</span></td>
                <td>GRADED</td>
            </tr>
            <tr>
                <td>Muhammad Ali</td>
                <td>5 Amanah</td>
                <td><span class="status-not-submitted">NOT SUBMITTED</span></td>
                <td>NOT GRADED</td>
            </tr>
            <tr>
                <td>Wan Akif</td>
                <td>5 Amanah</td>
                <td><span class="status-not-submitted">NOT SUBMITTED</span></td>
                <td>NOT GRADED</td>
            </tr>
            <tr>
                <td>Wan Zafirzan</td>
                <td>5 Amanah</td>
                <td><span class="status-not-submitted">NOT SUBMITTED</span></td>
                <td>NOT GRADED</td>
            </tr>
        </tbody>
    </table>
</div>