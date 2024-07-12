<%@page import="Model.SelectQueries"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Animal Info</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/myCss.css">
	<style type="text/css">
	body{
		background-color: #fefb00;
	}


</style>
	<script type="text/javascript"> 
	function validateform() {
		var animal_name = document.myform.animal_name.value;
		var animal_gender = document.myform.animal_gender.value;
		var doa = document.myform.animal_doa.value;
		var keeper_id = document.myform.keeper_id.value;
		var species_id = document.myform.species_id.value;
		var enclosure_id = document.myform.enclosure_id.value;
		var diet_id = document.myform.diet_id.value;

		
		if (animal_name == null || animal_name == "") {
			alert("Name can't be blank");
			return false;
		} else if(animal_gender == "" || animal_gender == null){
			alert("Gender can't be blank");
			return false;
		}else if(date_of_arrival == "" || date_of_arrival == null){
			alert("Date of arrival can't be blank.");
			return false;		
		} else if(keeper_id == "NO DATA FOUND" || keeper_id == ""){
			alert("Please add keeper information")
			return false;
		}else if(species_id == "NO DATA FOUND" || species_id == null){
			alert("Please add species information");
			return false;
		}else if(enclosure_id == "NO DATA FOUND" || enclosure_id == null){
			alert("Please add enclosure information");
			return false;
		}else if(diet_id == "NO DATA FOUND" || diet_id == null){
			alert("Please add diet information");
			return false;
	}
</script>
</head>
<body>
<%@ include file="/Header.jsp" %>
	<form method="post"
		action="<%=request.getContextPath()%>/Action/AnimalInsertAction.jsp">
        <div style="margin-top: -22em">
		<table>
			<tr>
				<th colspan="2">Add Animal Information</th>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="animal_name" placeholder="Puppy"
					required="required"></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td style="text-align: left"><input type="radio"
					name="animal_gender" value="M" checked>M <input
					type="radio" name="animal_gender" value="F">F</td>
			</tr>
			<tr>
				<td>Date of Arrival</td>
				<td><input type="date" name="date_of_arrival" required="required"></td>
			</tr>
			<tr>
				<td>Keeper ID</td>
				<td><select name="keeper_id">
						<%
						ArrayList<Integer> myIDList = SelectQueries.getAllKeeperID();

						if (myIDList == null) {
						%>
						<option>NO DATA FOUND</option>
						<%
						} else {

						for (int id : myIDList) {
						%>
						<option><%=id%></option>
						<%
						}
						}
						%>
				</select></td>
			</tr>
			<tr>
				<td>Species ID</td>
				<td><select name="species_id">
						<%
						myIDList = SelectQueries.getAllSpeciesID();

						if (myIDList == null) {
						%>
						<option>NO DATA FOUND</option>
						<%
						} else {

						for (int id : myIDList) {
						%>
						<option><%=id%></option>
						<%
						}
						}
						%>
				</select></td>
			</tr>
			<tr>
				<td>Enclosure ID</td>
				<td><select name="enclosure_id">
						<%
						myIDList = SelectQueries.getAllEnclosureID();

						if (myIDList == null) {
						%>
						<option>NO DATA FOUND</option>
						<%
						} else {

						for (int id : myIDList) {
						%>
						<option><%=id%></option>
						<%
						}
						}
						%>
				</select></td>
			</tr>
			<tr>
				<td>Diet ID</td>
				<td><select name="diet_id">
						<%
						myIDList = SelectQueries.getAllDietID();

						if (myIDList == null) {
						%>
						<option>NO DATA FOUND</option>
						<%
						} else {

						for (int id : myIDList) {
						%>
						<option><%=id%></option>
						<%
						}
						}
						%>
				</select></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="ADD" class="formButton">
					<input type="reset" value="CLEAR" class="formButton"></td>
			</tr>
		</table>
	</form>

</body>
</html>