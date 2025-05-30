<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acharya Nagarjuna University </title>
<link rel="icon" href="logo.png">
<style type="text/css">
body{
background: #d7dbdd;
margin:0;
padding:0;
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
.success img {
    max-width: 50px;
}

img {
	height: 200px;
	width: 200px;
}

.success {
    border: 2px solid gray;
    background-color: white;
    width:35%;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    margin: 50px auto;
    padding: 20px;
    text-align: center;
    border-radius: 5px;
}
.success img{
max-width: 50px;
display: block; 
margin: 0 auto;
height: 100px;
}
.success input[type="submit"] {
	width: 150px;
    height: 35px;
    background: #37bd13;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
}
.success input[type="submit"]:hover{
background: #1adc1a;
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
.successSub{
display: flex;
gap:20%;
}

</style>

</head>
<body>
<nav>
	<div class="navbar">
		<img alt="logo" src="logo.png">
		<h1>Acharya Nagarjuna University</h1>
		<form action="index.html">
		<input type="submit" value="Home">
		</form>
	</div>
</nav>

<div class="success">
		<img alt="successMark" src="successMark3.png">
		<h3>Attendance Completed...</h3>
		<br>
		
		<div class="successSub">
	<form action="Employee.html" method="post">
		<input type="submit" value="Log-Out">
	</form>
	
	</div>
</div>
<div class="footer">
      <p class="f1">2025 Acharya Nagarjuna University. All Rights Reserved.</p>
      <p class="f2">Contact: support@anu.edu | Phone: +91 1234567890</p>
</div>
</body>
</html>