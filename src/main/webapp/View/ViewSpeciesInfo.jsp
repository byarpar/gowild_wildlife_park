<%@page import="Model.SelectQueries"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entity.Species"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Species Info</title>
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
	background-color: #f44336;
}
</style>
<div style="margin-top: -20em">
	<h1 style="text-align: center;">View Species Information</h1>
	<%
	ArrayList<Species> myList = new ArrayList<>();

	myList = SelectQueries.getAllSpeciesInfo();

	if (myList == null) {
	%>
	<h3>No Species Info Found....</h3>
	<h3>
		Please Add Info to View<a
			href="<%=request.getContextPath()%> /View/AddSpeciesInfo.jsp">
			Add Species Info</a>
	</h3>
	<%
	} else {
	%>

	<table>
		<tr>
			<th>ID</th>
			<th>Type</th>
			<th>Group</th>
			<th>LifeStyle</th>
			<th>Conservation Status</th>
			<th>Delete</th>
			<th>Update</th>
		</tr>
		<%
		for (Species species : myList) {
		%>
		<tr>
			<td><%=species.getSpecies_id()%></td>
			<td><%=species.getSpecies_type()%></td>
			<td><%=species.getSpecies_group()%></td>
			<td><%=species.getLifestyle()%></td>
			<td><%=species.getConservation_status()%></td>
			<td><a
				href="<%=request.getContextPath()%>/Action/SpeciesDeleteAction.jsp?id=<%=species.getSpecies_id()%>">Delete</a></td>
				<td><a
				href="<%=request.getContextPath()%>/View/UpdateSpeciesInfo.jsp?id=<%=species.getSpecies_id()%>">Edit </a></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	}
	%>

</body>
</html>