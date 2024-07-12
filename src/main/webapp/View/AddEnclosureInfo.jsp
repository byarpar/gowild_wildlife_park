<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Enclosure Info</title>
<link
	href="https://fonts.googleapis.com/css2?family=Fuzzy+Bubbles&family=Lobster&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/myCss.css">
	<style type="text/css">
	body{
		background-color: #41028d;
	}

</style>
	
<script type="text/javascript"> 
	function validateform() {
		var enclosure_type= document.myform.enclosure_type.value;
		var location = document.myform.enclosure_location.value;
	
		
		var mailformat = /^w+([.-]?w+)*@w+([.-]?w+)*(.w{2,3})+$/;
		
		if (enclosure_type == null || enclosure_type == "") {
			alert("Type can't be blank");
			return false;
		} else if(location == "" || location == null){
			alert("Location can't be blank");
			return false;
		}
	}
</script>
</head>
<body>
<%@ include file="/Header.jsp" %>
	<form method="post"
		action="<%=request.getContextPath()%>/Action/EnclosureInsertAction.jsp">
		<div style="margin-top: -22em">

		<table>
			<tr>
				<th colspan="2">Add Enclosure Information</th>
			</tr>
			<tr>
				<td>Type</td>
				<td><input type="text" name="enclosure_type"
					required="required"></td>
			</tr>
			<tr>
				<td>Location</td>
				<td><select name="location">
						<option selected="selected">North</option>
						<option>East</option>
						<option>South</option>
						<option>West</option>
				</select>
			</tr>
			<tr>
				<td></td>
				<td style="color: red; font-size: 18px;">*North will be
					selected as default</td>
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