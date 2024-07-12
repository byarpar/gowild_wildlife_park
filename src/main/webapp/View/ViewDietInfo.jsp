<%@page import="Model.SelectQueries"%>
<%@page import="Entity.Diet"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Diet Info</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/myCss.css">
<%@include file="../Header.jsp" %>
</head>

<style>
table {
  width: 100%;
}

table, th, td {
	border: 2px solid;
	border-collapse: collapse;
	padding-top: 20px;
	padding-left: 20px;
	padding-botton: 20px;
	padding-right: 20px;
}

table tr td {
	text-align: left;
}
body{
	background-color: #932092;
}
</style>


<%
	ArrayList<Diet>myList=new ArrayList<>();
	
myList=SelectQueries.getAllDietInfo();

if(myList==null){
	%>
<h3>No Diet INfo found..</h3>
<h3>Please Add Info to view
	<a href="<%=request.getContextPath()%>/View/AddDietInfo.jsp">Add diet info</a>
</h3>
<%
}else{
%>
<div style="margin-top: -35em">
<h1 style="text-align: center;">View Diet Information</h1>
<table>
	<tr style="text-align: center;">
		<th>ID</th>
		<th>type</th>
		<th>location</th>
		<th>Delete</th>
	    <th>Update</th>
	</tr>
	<%
		for(Diet diet: myList){
	%>
		<tr>
			<td><%=diet.getDiet_id() %></td>
			<td><%=diet.getDiet_type() %></td>
			<td><%=diet.getFeeds_per_day() %></td>
			<td><a
				href="<%=request.getContextPath()%>/Action/DietDeleteAction.jsp?id=<%=diet.getDiet_id()%>">Delete</a></td>
				<td><a
				href="<%=request.getContextPath()%>/View/UpdateDietInfo.jsp?id=<%=diet.getDiet_id()%>">Edit </a></td>
		</tr>
	<%
		}
	%>

</table>
</div>
<%
}
%>




</body>
</html>