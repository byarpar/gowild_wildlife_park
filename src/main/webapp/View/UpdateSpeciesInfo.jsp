<%@page import="Model.SelectQueries"%>
<%@page import="Entity.Species"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/myCss.css">
<style>
table, th, td {
	border: 2px solid;
	border-collapse: collapse;
	padding-top: 20px;
	padding-left: 20px;
	padding-botton: 20px;
	padding-right: 20px;
}
body{
background-color: #f44336
}
table tr td {
	text-align: left;
}

table {
	width: 100%
}
</style>
<%@ include file="/Header.jsp"%>
</head>
<body>
	<%
	String id = request.getParameter("id");

	Species species = new Species();

	species = SelectQueries.getSpeciesInfoByID(Integer.parseInt(id));

	if (species == null) {
	%>
	<h3>No Species Data Found...</h3>
	<%
	} else {
	%>
	<form name="myform" method="post"
		action="<%=request.getContextPath()%>/Action/SpeciesUpdateAction.jsp"
		onsubmit="return validateform()">


         <div style="margin-top: -22em">
		<table>
			<tr>
				<th colspan="2">Add Species Information</th>
			</tr>
			<tr>
				<td>ID</td>
				<td><input type="text" name="id" value="<%=species.getSpecies_id()%>"
					readonly></td>
			</tr>
			<tr>
				<td>Type</td>
				<td><input type="text" name="species_type"
					required="required"
					value="<%=species.getSpecies_type()%>"></td>
			</tr>
			<tr>
				<td>Life Style</td>
				<td><input type="text" name="species_Ls" required="required"
					value="<%=species.getLifestyle()%>"></td>
			</tr>
			<tr>
				<td>Group</td>
				<td><input type="text" name="species_gp" required="required"
					value="<%=species.getSpecies_group()%>"></td>
			</tr>
			<tr>
				<td>Conservation Status</td>
				<td><input type="text" name="species_conservation" required="required"
					value="<%=species.getConservation_status()%>"></td>
			</tr>
			<tr>
				<td><a style="text-transform: uppercase;"
					href="<%=request.getContextPath()%>/View/ViewSpeciesInfo.jsp">
						View species Info</a></td>
				<td><input type="submit" value="UPDATE" class="formButton">
					<input type="reset" value="CLEAR" class="formButton"></td>
			</tr>
		</table>
		</div>
	</form>
	<%
	}
	%>
</body>
</html>