<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/myCss.css">
	<style type="text/css">
	body{
		background-color: #f44336;
	}


</style>
	
<%@include file="../Header.jsp" %>
	<script type="text/javascript"> 
	function validateform() {
		var type = document.myform.species_type.value;
		var group = document.myform.species_group.value;
		var lifestyle = document.myform.species_lifestyle.value;
		var conservation_status = document.myform.species_conservation_status.value;
		
		var mailformat = /^w+([.-]?w+)*@w+([.-]?w+)*(.w{2,3})+$/;
		
		if (species_type == null || species_type == "") {
			alert("Type can't be blank");
			return false;
		} else if(species_group == "" || species_group == null){
			alert("Group can't be blank");
			return false;
		}else if(lifestyle =="" || lifestyle == null){
			alert("Lifestyle can't be blank");
			return false;
		}else if(conservation_status == "" || conservation_status == null){
			alert("Conservation_status can't be blank");
			return false;
		}
	}
</script>
</head>
<body>

 <form name = "myform" method="post" 
		action="<%=request.getContextPath()%>/Action/SpeciesInsertAction.jsp"
		onsubmit="return validationform()">
		<div style="margin-top: -22em">
		<table>
			<tr>
				<th colspan="2">Add Species Information
			</tr>
			<tr>
				<td>Type</td>
				<td><input type="text" name="species_type"
					required="required"></td>
			</tr>
			<tr>
				<td>Life Style</td>
				<td><select name="lifestyle">
						<option Selected>Troop</option>
						<option>Solitary</option>
						<option>Social</option>
						<option>Herd</option>
						<option>Pride</option>
						<option>Group</option>
					</select></td>
				</tr>
				<tr>
					<td></td>
					<td style="color: red; font-size: 18px;">*Troop will be selected as default</td>
				</tr>
				<tr>
					<td>Group</td>
					<td><select name="species_group">
							<option Selected>Mammal</option>
							<option>Bird</option>
							<option>Reptile</option>
						</select></td>
				</tr>
				<tr>
					<td></td>
					<td style="color: red; font-size: 18px;">*Mammal will be selected as default</td>
				</tr>
				<tr>
					<td>Conservation Status</td>
					<td><select name="conservation_status">
							<option Selected>Threatened</option>
							<option>Endangered</option>
							<option>Critically Endangered</option>
							<option>Vulnerable</option>
							<option>Least Concern</option>
						</select></td>
				</tr>
				<tr>
					<td></td>
					<td style="color: red; font-size: 18px;">*Threatened will be selected as default</td>
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