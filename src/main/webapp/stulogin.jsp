<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acharya Nagarjuna University </title>
<link rel="icon" href="logo.png">
<style type="text/css">
    body {
        background: #d7dbdd;
        margin: 0;
        padding: 0;
        
    }
    .navbar {
    display: flex;
    align-items: center;
    justify-content: space-between;
    background: white;
    padding: 10px 30px;
}
.navbar img {
    height: 100px;
    width: 100px;
}
h1 {
    flex-grow: 1;
    text-align: center;
    margin: 0;
    font-size: 24px;
}
h1:hover{
text-decoration: underline;
}

.navbar input[type="submit"] {
    width: 150px;
    height: 35px;
    background: #1372bd;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
}
.navbar input[type="submit"]:hover {
    background: #1a31dc;
}
    .details {
        margin: 50px auto;
        padding: 20px;
        width: 50%;
        background: white;
        border-radius: 10px;
        box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.2);
    }
    .details h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #1372bd;
    }
    .details h3 {
        margin: 10px 0;
        color: black;
        font-weight: normal;
        margin-left:20px;
    }
    .footer {
    background-color: white;
    color: black;
    padding: 10px 0;
    margin-top: 10px;
    text-align: center;
    justify-content: center;
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    box-sizing: border-box;
	}
    .attendance{
    display:flex;
    gap:20px;
    justify-content: center;
    align-items: center;
    }
    .attendance input[type="submit"]{
    width: 270px;
	height: 35px;
	background: #37bd13;
	color:white;
	border:none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
    }
    
    .attendance input[type="submit"]:hover{
	background: #1adc1a;
	}
    
</style>
</head>
<body>

<nav>
    <div class="navbar">
        <img alt="University Logo" src="logo.png">
        <h1>Acharya Nagarjuna University</h1>
        <form action="index.html">
            <input type="submit" value="Home">
        </form>
    </div>
</nav>

<div class="details">
    <h2>Your Personal Details</h2>
    <h3>Id: <%= request.getAttribute("id") != null ? request.getAttribute("id") : "N/A" %></h3>
    <h3>Name: <%= request.getAttribute("name") != null ? request.getAttribute("name") : "N/A" %></h3>
    <h3>Email: <%= request.getAttribute("email") != null ? request.getAttribute("email") : "N/A" %></h3>
    <h3>Phone Number: <%= request.getAttribute("number") != null ? request.getAttribute("number") : "N/A" %></h3>
    <h3>Date of Birth: <%= request.getAttribute("dob") != null ? request.getAttribute("dob") : "N/A" %></h3>
    <h3>Education: <%= request.getAttribute("edu") != null ? request.getAttribute("edu") : "N/A" %></h3>
    <h3>Address: <%= request.getAttribute("address") != null ? request.getAttribute("address") : "N/A" %></h3>
	<br><br>
	
	<div class="attendance">
	<form action="Student.html">
		<input type="submit" value="Logout">
	</form>
	<br><br>
	<form action="AttendanceCheckingServlet" method="post">
		<input type="hidden" name="id" value="<%= request.getAttribute("id")%>">
		<input type="hidden" name="name" value="<%= request.getAttribute("name")%>">
		
		<input type="submit" value="Check Your Attendance">
	</form></div>
</div>



<div class="footer">
    <p>© 2025 Acharya Nagarjuna University. All Rights Reserved.</p>
    <p>Contact: support@anu.edu | Phone: +91 1234567890</p>
</div>

</body>
</html>
