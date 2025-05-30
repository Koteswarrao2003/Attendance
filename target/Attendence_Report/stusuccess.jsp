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
    width:18%;
    display: flex;
    justify-content: center;
    align-items: center;
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
	<form action="Student.html" method="post">
		<img alt="successMark" src="successMark3.png">
		<h3>Congratulations, your account has been successfully created.</h3>
		<h2>Your Id</h2>
		<h3><%= request.getAttribute("id") %></h3>
		<input type="submit" value="Login">
	</form>
</div>
</body>
</html>