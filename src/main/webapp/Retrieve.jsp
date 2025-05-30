<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
</head>
<body>

<h2>Student Data</h2>
<form action="SubmitAttendanceServlet" method="post">
	
	<table border="1">
	    <tr>
	        <th>ID</th>
	        <th>Name</th>
	        <th>Attendance</th>
	    </tr>
	    <%
	        java.util.Iterator<Long> idIterator = ((java.util.Set<Long>)request.getAttribute("id")).iterator();
	        java.util.Iterator<String> nameIterator = ((java.util.Collection<String>)request.getAttribute("name")).iterator();
	        String date=(String)request.getAttribute("date");
	
	        while(idIterator.hasNext() && nameIterator.hasNext()){
	        	Long id=idIterator.next();
	        	String name=nameIterator.next();
	    %>
	    <tr>
	        <td><%= id %></td>
	        <td><%= name %></td>
	        <td>
	        	<input type="checkbox" name="attendance" value="<%=id%>">
	        	<input type="hidden" name="allIds" value="<%=id%>">
	        </td>
	        
	    </tr>
	    <% 
	        }
	    %>
	</table>
	<br>
	<input type="hidden" name="date" value="<%=date%>">
	<input type="submit" value="Submit Attendance">
</form>

</body>
</html>
