<%@page import="Model.SelectQueries"%>
<%@page import="Entity.Keeper"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Keeper Info</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/myCss.css">
<style>

body{
 background-color: #2196F3;
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

table {
	width: 100%
}
</style>
</head>
<body>
	<%@ include file="/Header.jsp"%>
<div style="margin-top: -30em">
	<h1 style="text-align: center;">View Keeper Information</h1>

	<%
	ArrayList<Keeper> myList = new ArrayList<>();
		
		myList = SelectQueries.getAllKeeperInfo();
		
		if(myList==null){
			
			%>
		
		<h2>No Keeper Information to View</h2>
		<h3>Please add Information to View <a href="<%=request.getContextPath() %>/View/AddKeeperInfo.jsp" style="text-transform: uppercase;">Add Keeper Info</a></h3>
		
		<%}
		else {
			%>
		
	<div style="margin-left:200px;">
	<table>
		<tr>
			<th>keeper_id</th>
			<th>keepers_name</th>
			<th>date_of_birth</th>
			<th>email</th>
			<th>keepers_rank</th>
			<th>phno</th>
			<th>address</th>
			<th>Delete</th>
			<th>Update</th>
						
		</tr>
		
		<% 
		
		for(Keeper keeper : myList){
		%>
		<tr>
			<td><%= keeper.getKeeper_id() %></td>
			<td><%= keeper.getKeepers_name() %></td>
			<td><%= keeper.getDate_of_birth()%></td>
			<td><%= keeper.getEmail() %></td>
			<td><%= keeper.getKeepers_rank() %></td>
			<td><%= keeper.getPhno() %></td>
			<td><%= keeper.getAddress() %></td>
			<td><a
				href="<%=request.getContextPath()%>/Action/KeeperDeleteAction.jsp?id=<%=keeper.getKeeper_id()%>">Delete</a></td>
				<td><a
				href="<%=request.getContextPath()%>/View/UpdateKeeperInfo.jsp?id=<%=keeper.getKeeper_id()%>">Edit </a></td>
			
		</tr>
		<%
		} 
		
		}
		%>
		
	</table>
	</div>
	

</body>
</html>