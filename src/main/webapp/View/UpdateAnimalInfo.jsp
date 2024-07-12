<%@page import="Model.SelectQueries"%>
<%@page import="Entity.Animal"%>
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


body{
	background-color: #fefb00;
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
<%@ include file="/Header.jsp"%>
</head>
<body>
	<%
	String id = request.getParameter("id");

	Animal animal = new Animal();

	animal =SelectQueries.getAllAnimalInfoByID(Integer.parseInt(id));

	if (animal == null) {
	%>
	<h3>No Animal Data Found...</h3>
	<%
	} else {
	%>
	<form name="myform" method="post"
		action="<%=request.getContextPath()%>/Action/AnimalUpdateAction.jsp"
		onsubmit="return validateform()">
		 <div style="margin-top: -12em">
		<table>
			<tr>
				<th colspan="2">Add Animal Information</th>
			</tr>
			<tr>
				<td>ID</td>
				<td><input type="text" name="id" value="<%=animal.getAnimal_id()%>"
					readonly></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="animal_name"
					placeholder="Puppy" required="required"
					value="<%=animal.getAnimal_name()%>"></td>
			</tr>
			<tr>
				<td>Date Of Arrival</td>
				<td><input type="date" name="date_of_arrival" required="required"
					value="<%=animal.getDate_of_arrival()%>"></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td style="text-align: left"><input type="radio"
					name="animal_gender" value="M" checked>M<input
					type="radio" name="animal_gender" value="F">F</td>
			</tr>
			<tr>
				<td>Keeper_id</td>
				<td><input type="text" name="keeper_id" value="<%=animal.getKeeper_id()%>"
					readonly></td>
			</tr>
			<tr>
				<td>Species_id</td>
				<td><input type="text" name="species_id" value="<%=animal.getSpecies_id()%>"
					readonly></td>
			</tr>
			<tr>
				<td>Diet_id</td>
				<td><input type="text" name="diet_id" value="<%=animal.getDiet_id()%>"
					readonly></td>
			</tr>
			<tr>
				<td>Enclosure_id</td>
				<td><input type="text" name="enclosure_id" value="<%=animal.getEnclosure_id()%>"
					readonly></td>
			</tr>
			<tr>
				<td><a style="text-transform: uppercase;"
					href="<%=request.getContextPath()%>/View/ViewAnimalInfo.jsp">
						View Keeper Info</a></td>
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