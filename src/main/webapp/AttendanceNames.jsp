<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acharya Nagarjuna University</title>
<link rel="icon" href="logo.png">
<style>
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

.form-inline {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 20px;
    margin-bottom: 30px;
}

.form-inline select, .form-inline input[type="date"], .form-inline input[type="submit"] {
    padding: 8px 12px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.form-inline input[type="submit"] {
    background-color: #37bd13;
    color: white;
    border: none;
    cursor: pointer;
}

.form-inline input[type="submit"]:hover {
    background-color: #2ea90f;
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

.attendance-submit {
    margin-top: 20px;
    text-align: center;
}

.attendance-submit input[type="submit"] {
    background-color: #1372bd;
    color: white;
    padding: 10px 30px;
    font-size: 16px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.attendance-submit input[type="submit"]:hover {
    background-color: #0a5fa1;
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
</style>
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

    <h2>Attendance</h2>
    <form class="form-inline" action="StudentAttendanceServlet" method="post">
        <select name="edu" required>
            <option value="">Select Education</option>
            <option value="SSC">SSC</option>
            <option value="Inter">Inter</option>
            <option value="Bsc">B.Sc</option>
            <option value="B.Tech">B.Tech</option>
            <option value="MCA">MCA</option>
            <option value="MBA">MBA</option>
            <option value="M.Tech">M.Tech</option>
            <option value="M.Sc">M.Sc</option>
            <option value="Others">Others</option>
        </select>

        <input type="date" name="date" required>

        <input type="submit" value="Submit">
    </form>

    <h2>Student Data</h2>
    <form action="SubmitAttendanceServlet" method="post">
        <table border="1" cellpadding="10" cellspacing="0">
    <tr>
        <th>Serial No.</th>
        <th>ID</th>
        <th>Name</th>
        <th>Attendance</th>
    </tr>

    <%
        java.util.Iterator<Long> idIterator = ((java.util.Set<Long>)request.getAttribute("id")).iterator();
        java.util.Iterator<String> nameIterator = ((java.util.Collection<String>)request.getAttribute("name")).iterator();
        String date = (String)request.getAttribute("date");

        int serialNumber = 1; 

        while (idIterator.hasNext() && nameIterator.hasNext()) {
            Long id = idIterator.next();
            String name = nameIterator.next();
    %>
    <tr>
        <td><%= serialNumber++ %></td> 
        <td><%= id %></td>              
        <td><%= name %></td>            
        <td>
            <input type="checkbox" name="attendance" value="<%= id %>">
            <input type="hidden" name="allIds" value="<%= id %>">
        </td>
    </tr>
    <% } %>
</table>

        <input type="hidden" name="date" value="<%= date %>">

        <div class="attendance-submit">
            <input type="submit" value="Submit Attendance">
        </div>
    </form>

</div>

<div class="footer">
    <p>2025 Acharya Nagarjuna University. All Rights Reserved.</p>
    <p>Contact: support@anu.edu | Phone: +91 1234567890</p>
</div>

</body>
</html>
