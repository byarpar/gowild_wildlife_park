<%@page import="Entity.Enclosure"%>
<%@page import="Model.SelectQueries"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Enclosure Info</title>
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
	background-color: #41028d;
}
</style>
<div style="margin-top: -28em">
<h1 style="text-align: center;">View Enclosure Info</h1>
<%
	ArrayList<Enclosure>myList=new ArrayList<>();

myList=SelectQueries.getAllEnclosureInfo();

if(myList==null){
	%>
	<h3>No Enclosure Info Found...</h3>
	<h3>
		Please Add Info to View
	<a href="<%=request.getContextPath() %>/View/AddEnclosureInfo.jsp">
		Add Enclosure Info
	</a>
	</h3>
	<%
	}else{
		%>
		<div style="margin-left: 5px;">
		
		<table>
			<tr>
				<th>ID</th>
				<th>Type</th>			
				<th>location</th>
				<th>Delete</th>
			    <th>Update</th>
			</tr>
			<%
				for(Enclosure enclosure: myList){
			%>	
			<tr>
				<td><%=enclosure.getEnclosure_id() %></td>
				<td><%=enclosure.getType() %></td>
				<td><%=enclosure.getLocation() %></td>
				<td><a
				href="<%=request.getContextPath()%>/Action/EnclosureDeleteAction.jsp?id=<%=enclosure.getEnclosure_id()%>">Delete</a></td>
				<td><a
				href="<%=request.getContextPath()%>/View/UpdateEnclosureInfo.jsp?id=<%=enclosure.getEnclosure_id()%>">Edit </a></td>
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