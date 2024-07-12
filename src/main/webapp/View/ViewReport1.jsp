<%@page import="Entity.Report1"%>
<%@page import="Model.SelectQueries"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Report1</title>
</head>
<body>

<%ArrayList<Report1> myList = new ArrayList<>();
myList = SelectQueries.getSpeciesAnimalCount();
%>

<table>
	<tr>
		<th>Species Type</th>
		<th>Animal Count</th>
	</tr>
	<%
	for(Report1 rp : myList){
	%>
	<tr>
	<td><%=rp.getSpecies_type()%></td>
	<td><%=rp.getAnimal_count() %></td>
	</tr>
	<%
	}
	%>
	

</table>
</body>
</html>