<%@page import="Model.SelectQueries"%>
<%@page import="Entity.Animal"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Animal Info</title>
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
	background-color: #fefb00;
}

</style>

<div style="margin-top: -35em">
<h1 style="text-align: center;">View Animal Information</h1>

<%
	ArrayList<Animal>myList=new ArrayList<>();
myList=SelectQueries.getAllAnimalsInfo();

if(myList==null){
%>
<h2>No Animal Info found</h2>
<h3>Please add Info to View
	<a href="<%=request.getContextPath()%>/View/AddAnimalInfo.jsp">Add Animal Info</a>
</h3>
<%
	}else{
%>


<div style="margin-left:5%;">
<table style ="table-align: right;">
	<tr>
		<th>Animal Id</th>
		<th>Name</th>
		<th>Gender</th>
		<th>Date of Arrival</th>
		<th>keeper_id</th>
		<th>enclosure_id</th>
		<th>species_id</th>
		<th>diet_id</th>
		<th>Delete</th>
		<th>Update</th>
	</tr>
	<%
		for(Animal animal: myList){
	%>
	<tr>
		<td><%=animal.getAnimal_id() %></td>
		<td><%=animal.getAnimal_name() %></td>
		<td><%=animal.getAnimal_gender() %></td>
		<td><%=animal.getDate_of_arrival() %></td>
		<td><%=animal.getKeeper_id() %></td>
		<td><%=animal.getEnclosure_id() %></td>
		<td><%=animal.getSpecies_id() %></td>
		<td><%=animal.getDiet_id() %></td>
		<td><a
				href="<%=request.getContextPath()%>/Action/AnimalDeleteAction.jsp?id=<%=animal.getAnimal_id()%>">Delete</a></td>
				<td><a
				href="<%=request.getContextPath()%>/View/UpdateAnimalInfo.jsp?id=<%=animal.getAnimal_id()%>">Edit </a></td>
	</tr>
	<%
		}
	%>
</table>
<%
}
%>
</div>


</body>
</html>