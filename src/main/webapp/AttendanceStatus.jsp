<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
body {
    margin: 0;
    padding: 0;
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

.container {
    max-width: 900px;
    background: #fff;
    margin: 40px auto;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 5px 15px rgba(0,0,0,0.2);
}

.container h2 {
    text-align: center;
    color: #333;
    margin-bottom: 20px;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
}

th, td {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: center;
}

th {
    background-color: #f5f5f5;
    color: #333;
}

td input[type="checkbox"] {
    transform: scale(1.2);
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
.back input[type="submit"] {
	width: 150px;
    height: 35px;
    background: #37bd13;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
}
.back input[type="submit"]:hover{
background: #1adc1a;
}

.back{
display: flex;
justify-content: center;
align-items: center;
}
</style>
<title>Acharya Nagarjuna University </title>
<link rel="icon" href="logo.png">
</head>
<body>

<div class="navbar">
    <img src="logo.png" alt="University Logo">
    <h1>Acharya Nagarjuna University</h1>
    <form action="index.html">
        <input type="submit" value="Home">
    </form>
</div>

<div class="container">
    <h2>Student Attendance Status</h2>
    <table border="1" cellpadding="10" cellspacing="0">
        <tr>
            <th>Serial No.</th>
            <th>ID</th>
            <th>Name</th>
            <th>Date</th>
            <th>Attendance</th>
        </tr>

        <%
            Long studentId = Long.parseLong((String) request.getAttribute("id"));
            String studentName = (String) request.getAttribute("name");
            java.util.Set<String> statusSet = (java.util.Set<String>) request.getAttribute("status");
            java.util.Collection<java.util.Date> dateCollection = (java.util.Collection<java.util.Date>) request.getAttribute("date");

            java.util.Iterator<String> statusIterator = statusSet.iterator();
            java.util.Iterator<java.util.Date> dateIterator = dateCollection.iterator();

            int serialNo = 1;
            while (statusIterator.hasNext() && dateIterator.hasNext()) {
                String status = statusIterator.next();
                java.util.Date date = dateIterator.next();
        %>
        <tr>
            <td><%= serialNo++ %></td>
            <td><%= studentId %></td>
            <td><%= studentName %></td>
            <td><%= date %></td>
            <td><%= status %></td>
        </tr>
        <% } %>

    </table>
    <br>
    <div class="back">
    <br><br>
    <form action="Student.html">
		<input type="submit" value="Log-Out">
	</form>
	
    </div>
</div>

<div class="footer">
    <p>© 2025 Acharya Nagarjuna University. All Rights Reserved.</p>
    <p>Contact: support@anu.edu | Phone: +91 1234567890</p>
</div>
</body>
</html>
